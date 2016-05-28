using System;
using Duality;
using Duality.Components.Physics;
using Duality.Components.Renderers;
using Duality.Drawing;

namespace Game
{
	public class PlanetParticle : Component, ICmpUpdatable
	{
		private Vector3 m_targetPos;
		private Vector3 m_direction;

		private float m_speed = 0.01f;
		private float m_distDisappear = 10000;
		private bool m_scheduledForDestruction = false;

		public void InitParticle(Vector3 in_targetPos)
		{
			m_targetPos = in_targetPos;
			m_direction = m_targetPos - this.GameObj.Transform.Pos;

			SpriteRenderer spriteComp = this.GameObj.GetComponent<SpriteRenderer>();
			if (spriteComp != null)
			{
				spriteComp.ColorTint = MathF.Rnd.NextColorRgba();
				int size = MathF.Rnd.Next() % 8 + 1;

				Rect sizeRect = spriteComp.Rect;
				sizeRect.Size = new Vector2(size, size);
				spriteComp.Rect = sizeRect;
			}
			this.GameObj.Transform.Scale = (1 + MathF.Rnd.Next()) % 8 / 4;
		}

		public void OnUpdate()
		{
			Vector3 moveDelta = Time.TimeMult * m_direction * m_speed;
			this.GameObj.Transform.MoveBy(moveDelta);

			if (!m_scheduledForDestruction)
			{
				float dist = (m_targetPos - this.GameObj.Transform.Pos).LengthSquared;
				if (dist <= m_distDisappear)
				{
					m_scheduledForDestruction = true;
					this.GameObj.DisposeLater();
				}
			}
		}
	}
}
