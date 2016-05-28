using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Editor;

namespace Game
{
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

		private float m_speed = 0.005f;
		private float m_shootingDistance = 50000;
		private float m_returnDistance = 400000;

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
					m_shipState = ShipState.Waiting;
				}
				break;
			case ShipState.Waiting:
				Log.Game.Write("Switch to MoveToTarget state");
				m_shipState = ShipState.MoveToTarget;
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
			return false;
		}
    }
}
