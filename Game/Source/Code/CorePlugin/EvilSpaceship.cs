﻿using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Audio;
using Duality.Resources;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Editor;
using Duality.Components.Physics;
using Duality.Drawing;
using Duality.Resources;

namespace Game
{
	[RequiredComponent(typeof(Transform))]
	public class EvilSpaceship : Component, ICmpInitializable, ICmpUpdatable
	{
		private Vector3 m_direction;

		enum ShipState
		{
			Uninitialized,
			MoveToTarget,
			ScanTarget,
			ShootTarget,
			LeaveTarget,
			Waiting,
			LockPosition
		};

		LineRenderer m_scanLineRenderer = null;
		private ShipState m_shipState = ShipState.Uninitialized;
		private float m_countdownToAttack = 0;

		private float m_speed = 0.005f;
		private float m_shootingDistance = 50000;
		private float m_scanDuration = 2;
		private float m_returnDistance = 400000;
		private float m_waitingTimeInSeconds = 3;
		private ContentRef<Prefab> m_particlePrefab = null;

		private ColorRgba m_scanColor1;
		private ColorRgba m_scanColor2;
		private ColorRgba m_scanColorDetected1;
		private ColorRgba m_scanColorDetected2;
		private GameObject m_target;
		private ContentRef<Sound> m_beamSound;
		private ContentRef<Sound> m_lockAcquiredSound;
		[DontSerialize] SoundInstance m_beamSoundInstance;
		[DontSerialize] private Rect initialSpriteRect = Rect.Empty;
		[DontSerialize] private Vector3 m_hitPosition;
		
		public float ShootingDistance
		{
			get
			{
				return this.m_shootingDistance;
			}
			set
			{
				this.m_shootingDistance = value;
			}
		}

		public float ReturnDistance
		{
			get
			{
				return this.m_returnDistance;
			}
			set
			{
				this.m_returnDistance = value;
			}
		}

		[EditorHintDecimalPlaces(4)]
		public float Speed
		{
			get
			{
				return this.m_speed;
			}
			set
			{
				this.m_speed = value;
			}
		}
		
		public ContentRef<Sound> BeamSound
		{
			get
			{
				return this.m_beamSound;
			}
			set
			{
				this.m_beamSound = value;
			}
		}
		public ContentRef<Sound> LockAcquiredSound
		{
			get
			{
				return this.m_lockAcquiredSound;
			}
			set
			{
				this.m_lockAcquiredSound = value;
			}
		}
		public float ScanDuration
		{
			get
			{
				return this.m_scanDuration;
			}
			set
			{
				this.m_scanDuration = value;
			}
		}

		public float WaitingTimeInSeconds
		{
			get
			{
				return this.m_waitingTimeInSeconds;
			}
			set
			{
				this.m_waitingTimeInSeconds = value;
			}
		}
		public ContentRef<Prefab> ParticlePrefab
		{
			get
			{
				return this.m_particlePrefab;
			}
			set
			{
				this.m_particlePrefab = value;
			}
		}

		public ColorRgba ScanColor1
		{
			get
			{
				return this.m_scanColor1;
			}
			set
			{
				this.m_scanColor1 = value;
			}
		}
		public ColorRgba ScanColor2
		{
			get
			{
				return this.m_scanColor2;
			}
			set
			{
				this.m_scanColor2 = value;
			}
		}
		public ColorRgba DetectedColor1
		{
			get
			{
				return this.m_scanColorDetected1;
			}
			set
			{
				this.m_scanColorDetected1 = value;
			}
		}
		public ColorRgba DetectedColor2
		{
			get
			{
				return this.m_scanColorDetected2;
			}
			set
			{
				this.m_scanColorDetected2 = value;
			}
		}

		public void OnInit(InitContext context)
		{
			if (context.Equals(InitContext.Activate))
			{
				Log.Game.Write("Init spaceship 'Destroyer'");
				StartMovingToTarget();

				IEnumerable<Component> childComponents = this.GameObj.GetComponentsInChildren<LineRenderer>();
				foreach (Component comp in childComponents)
				{
					if (comp != null)
					{
						m_scanLineRenderer = (LineRenderer) comp;
						break;
					}
				}
			}
		}

		public void OnShutdown(ShutdownContext context)
		{
			Log.Game.Write("Shutting down spaceship");
			if (context == ShutdownContext.Deactivate)
			{
				if (this.m_beamSoundInstance != null)
					this.m_beamSoundInstance.FadeOut(0.1f);
			}
			//throw new NotImplementedException();
		}

		public void OnUpdate()
		{
			m_direction = -this.GameObj.Transform.Pos;
			this.GameObj.Transform.Angle = m_direction.Xy.Angle + MathF.RadAngle180;

			Vector3 moveDelta = Time.TimeMult * m_direction * m_speed;
			LevelController levelController = this.GameObj.ParentScene.FindComponent<LevelController>();

			// Hovering animation
			{
				SpriteRenderer sprite = this.GameObj.GetComponent<SpriteRenderer>();
				if (this.initialSpriteRect == Rect.Empty)
					this.initialSpriteRect = sprite.Rect;
				float hoverTimeOffset = (float)(this.GameObj.Id.GetHashCode() % 1000) / 1000.0f;
				sprite.Rect = new Rect(
					this.initialSpriteRect.X,
					this.initialSpriteRect.Y + 10.0f * (1.0f + MathF.Sin(2.0f * (float)Time.GameTimer.TotalSeconds + hoverTimeOffset)),
					this.initialSpriteRect.W,
					this.initialSpriteRect.H);
			}

			switch (m_shipState)
			{
			case ShipState.MoveToTarget:
				this.GameObj.Transform.MoveBy(moveDelta);
				if (IsInShootingRange())
				{
					StartScanning();
				}
				break;
			case ShipState.ScanTarget:
				//Log.Game.Write("countdownTime: {0}, lastDelta: {1}", m_countdownToAttack, Time.LastDelta);
				if (m_beamSoundInstance == null || m_beamSoundInstance.Disposed)
				{
					m_beamSoundInstance = DualityApp.Sound.PlaySound(m_beamSound);
					m_beamSoundInstance.Looped = true;
					m_beamSoundInstance.Pitch = MathF.Rnd.NextFloat(0.8f, 1.25f);
				}
				m_countdownToAttack -= Time.LastDelta / 1000;
				if (levelController == null || levelController.IsGameOver)
					m_beamSoundInstance.Volume = 0.1f + 0.1f * MathF.Clamp(1.0f - ((float)m_countdownToAttack / (float)m_scanDuration), 0.0f, 1.0f);
				else
					m_beamSoundInstance.Volume = 0.5f + 0.5f * MathF.Clamp(1.0f - ((float)m_countdownToAttack / (float)m_scanDuration), 0.0f, 1.0f);

				UpdateLineRenderer(false);
				if (m_countdownToAttack <= 0)
				{
					//Log.Game.Write("distance: {0}", this.GameObj.Transform.Pos.LengthSquared);
					Vector2 hitPos;
					if (ScanPlanet(out hitPos))
					{
						m_hitPosition = new Vector3(hitPos.X, hitPos.Y, 0);
						StartShooting();
					}
					else
					{
						StartLeaving();
					}
					m_beamSoundInstance.FadeOut(0.1f);
				}
				break;
			case ShipState.ShootTarget:
				if (m_target != null)
				{
					if (levelController != null && !levelController.IsGameOver)
						DualityApp.Sound.PlaySound(m_lockAcquiredSound);

					Planet planetComp = m_target.GetComponent<Planet>();
					if (planetComp != null)
					{
						planetComp.IncreaseDetectionCounter();
					}
				}
				SpawnParticle();
				m_shipState = ShipState.LockPosition;
                break;
			case ShipState.LeaveTarget:
				this.GameObj.Transform.MoveBy(-moveDelta);
				if (IsOutsideRange())
				{
					StartWaiting();
				}
				break;
			case ShipState.Waiting:
				m_countdownToAttack -= Time.LastDelta / 1000;
				if (m_countdownToAttack <= 0)
				{
					StartMovingToTarget();
				}
				break;
			case ShipState.LockPosition:
				// occasionally spawn particles pulled towards the ship
				m_countdownToAttack -= Time.LastDelta / 1000;
				if (m_countdownToAttack <= 0)
				{
					SpawnParticle();
				}
				break;
			default:
				break;
			}
		}

		void StartMovingToTarget()
		{
			Log.Game.Write("Switch to MoveToTarget state");
			m_shipState = ShipState.MoveToTarget;
		}

		void StartScanning()
		{
			m_countdownToAttack = m_scanDuration;
			m_shipState = ShipState.ScanTarget;
			Log.Game.Write("Switch to Scan state");
		}

		void StartShooting()
		{
			Log.Game.Write("Switch to ShootTarget state");
			m_shipState = ShipState.ShootTarget;
			UpdateLineRenderer(true);
		}

		void StartLeaving()
		{
			Log.Game.Write("Switch to LeaveTarget state");
			m_shipState = ShipState.LeaveTarget;
			ResetLineRenderer();
		}

		void StartWaiting()
		{
			Log.Game.Write("Switch to Waiting state");
			m_countdownToAttack = m_waitingTimeInSeconds;
			m_shipState = ShipState.Waiting;
		}

		void SetLineRendererEndPos()
		{
			Vector2 hitPos;
			ScanPlanet(out hitPos);
			m_scanLineRenderer.EndPos = hitPos - this.GameObj.Transform.Pos.Xy;
		}

		void UpdateLineRenderer(bool in_shoot)
		{
			if (m_scanLineRenderer != null)
			{
				SetLineRendererEndPos();

                if (in_shoot)
				{
					m_scanLineRenderer.ColorStart = m_scanColorDetected1;
					m_scanLineRenderer.ColorEnd = m_scanColorDetected2;
				}
				else
				{
					float fadeIn = MathF.Clamp(1 - (m_countdownToAttack / m_scanDuration), 0.0f, 1.0f);
					byte alpha = (byte) ((int) (255 * fadeIn));
					//VisualLog.Default.DrawText(this.GameObj.Transform.Pos.X, this.GameObj.Transform.Pos.Y, 0, String.Format("alpha: {0}, alphaMult: {1}", alpha, alphaMult));

					ColorRgba startColor = m_scanColor1;
					startColor.A = alpha;
					ColorRgba endColor = m_scanColor2;
					endColor.A = alpha;
					m_scanLineRenderer.GameObj.Transform.Angle = 0.0f;
					m_scanLineRenderer.EndWidth = MathF.Lerp(100.0f, 30.0f, fadeIn);
					m_scanLineRenderer.ColorStart = startColor;
					m_scanLineRenderer.ColorEnd = endColor;
				}
			}
		}

		void ResetLineRenderer()
		{
			if (m_scanLineRenderer != null)
			{
				m_scanLineRenderer.ResetLineRenderer();
			}
		}

		bool IsInShootingRange()
		{
			//Log.Game.Write("distance: {0}", this.GameObj.Transform.Pos.LengthSquared);
			return this.GameObj.Transform.Pos.LengthSquared < m_shootingDistance;
		}

		bool IsOutsideRange()
		{
			//Log.Game.Write("distance: {0}", this.GameObj.Transform.Pos.LengthSquared);
			return this.GameObj.Transform.Pos.LengthSquared > m_returnDistance;
		}

		// returns false if the planet is shielded
		bool ScanPlanet(out Vector2 out_hitPos)
		{
			RayCastData firstHit;

			//VisualLog.Default.DrawPoint(this.GameObj.Transform.Pos.X, this.GameObj.Transform.Pos.Y, this.GameObj.Transform.Pos.Z).KeepAlive(100);

			Vector2 raycastEnd = (this.GameObj.Transform.Pos + m_direction).Xy;
			RigidBody.RayCast(this.GameObj.Transform.Pos.Xy, raycastEnd, arg=>{	return arg.Fraction; }, out firstHit);

			//VisualLog.Default.DrawConnection(this.GameObj.Transform.Pos.X, this.GameObj.Transform.Pos.Y, this.GameObj.Transform.Pos.Z, firstHit.Pos.X, firstHit.Pos.Y).KeepAlive(100);

			out_hitPos = firstHit.Pos;
			if (firstHit.Body != null && firstHit.GameObj.GetComponent<Planet>() != null)
			{
				if (m_target == null)
				{
					m_target = firstHit.Body.GameObj;
				}
				// Planet was hit!
                return true;
			}
			// Hit something else (most likely the shield)
			return false;
		}

		void SpawnParticle()
		{
			Prefab prefab = this.m_particlePrefab.Res;
			if (prefab == null)
				return;

			GameObject particleObj = prefab.Instantiate();
			particleObj.Transform.Pos = m_hitPosition;
			Scene.Current.AddObject(particleObj);
			PlanetParticle partComp = particleObj.GetComponent<PlanetParticle>();
			if (partComp != null)
			{
				partComp.InitParticle(this.GameObj.Transform.Pos - m_direction / 4);
			}
			m_countdownToAttack = 0.5f + MathF.Rnd.NextFloat(0.0f, 1.0f);
		}
	}
}
