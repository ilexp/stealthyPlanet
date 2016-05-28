using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Components;
using Duality.Editor;
using Duality.Components.Physics;

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
			GameOver
		};

		private ShipState m_shipState = ShipState.Uninitialized;
		private float m_countdownToAttack = 0;

		private float m_speed = 0.005f;
		private float m_shootingDistance = 50000;
		private float m_returnDistance = 400000;
		private float m_waitingTimeInSeconds = 3;

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

		public void OnInit(InitContext context)
		{
			if (context.Equals(InitContext.Activate))
			{
				Log.Game.Write("Init spaceship 'Destroyer'");
				m_shipState = ShipState.MoveToTarget;
				m_direction = -this.GameObj.Transform.Pos;
            }
		}

		public void OnShutdown(ShutdownContext context)
		{
			Log.Game.Write("Shutting down spaceship");
			//throw new NotImplementedException();
		}

		public void OnUpdate()
		{
			Vector3 moveDelta = Time.TimeMult * m_direction * m_speed;

			switch (m_shipState)
			{
			case ShipState.MoveToTarget:
				this.GameObj.Transform.MoveBy(moveDelta);
				if (IsInShootingRange())
				{
					Log.Game.Write("Switch to Shoot state");
					m_shipState = ShipState.ScanTarget;
				}
				break;
			case ShipState.ScanTarget:
				Log.Game.Write("distance: {0}", this.GameObj.Transform.Pos.LengthSquared);
				if (ScanPlanet())
				{
					Log.Game.Write("Switch to ShootTarget state");
					m_shipState = ShipState.ShootTarget;
				}
				else
				{
					Log.Game.Write("Switch to LeaveTarget state");
					ScanPlanet();
					m_shipState = ShipState.LeaveTarget;
				}
				break;
			case ShipState.ShootTarget:
				Log.Game.Write("BOOM!!!");
				m_shipState = ShipState.GameOver;
				break;
			case ShipState.LeaveTarget:
				this.GameObj.Transform.MoveBy(-moveDelta);
				if (IsOutsideRange())
				{
					Log.Game.Write("Switch to Waiting state");
					m_countdownToAttack = m_waitingTimeInSeconds;
					m_shipState = ShipState.Waiting;
                }
				break;
			case ShipState.Waiting:
				Log.Game.Write("countdownTime: (0.f), lastDelta: (1.f)", m_countdownToAttack, Time.LastDelta);
				m_countdownToAttack -= Time.LastDelta;
				if (m_countdownToAttack <= 0)
				{
					Log.Game.Write("Switch to MoveToTarget state");
					m_shipState = ShipState.MoveToTarget;
				}
				break;
			default:
				break;
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
		bool ScanPlanet()
		{
			RayCastData firstHit;

			VisualLog.Default.DrawPoint(this.GameObj.Transform.Pos.X, this.GameObj.Transform.Pos.Y, this.GameObj.Transform.Pos.Z).KeepAlive(1000);

			Vector2 raycastEnd = (this.GameObj.Transform.Pos + m_direction).Xy;
			RigidBody.RayCast(this.GameObj.Transform.Pos.Xy, raycastEnd, arg=>{	return arg.Fraction; }, out firstHit);

			VisualLog.Default.DrawConnection(this.GameObj.Transform.Pos.X, this.GameObj.Transform.Pos.Y, this.GameObj.Transform.Pos.Z, firstHit.Pos.X, firstHit.Pos.Y).KeepAlive(1000);

			if (firstHit.Body != null && firstHit.GameObj.GetComponent<Planet>() != null)
			{
				// Planet was hit!
				return true;
			}
			// Hit something else (most likely the shield)
			return false;
		}
    }
}
