using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	public class Player : Component, ICmpUpdatable
	{
		private GameObject planetDisguise = null;

		public GameObject PlanetDisguise
		{
			get { return this.planetDisguise; }
			set { this.planetDisguise = value; }
		}

		public void OnUpdate()
		{
			Vector2 mouseRelativeToCenter = (DualityApp.Mouse.Pos - DualityApp.TargetResolution * 0.5f);
			float mouseAngle = mouseRelativeToCenter.Angle;

			if (this.planetDisguise != null)
			{
				this.planetDisguise.Transform.Angle = mouseAngle;
			}
		}
	}
}
