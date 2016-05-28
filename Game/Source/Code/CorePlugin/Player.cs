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
		private CameraController camController = null;
		private float cameraMovementStrength = 0.25f;

		public GameObject PlanetDisguise
		{
			get { return this.planetDisguise; }
			set { this.planetDisguise = value; }
		}
		public CameraController CamController
		{
			get { return this.camController; }
			set { this.camController = value; }
		}
		public float CamMoveStrength
		{
			get { return this.cameraMovementStrength; }
			set { this.cameraMovementStrength = value; }
		}

		public void OnUpdate()
		{
			Vector2 mouseRelativeToCenter = (DualityApp.Mouse.Pos - DualityApp.TargetResolution * 0.5f);
			float mouseAngle = mouseRelativeToCenter.Angle;

			if (this.planetDisguise != null)
			{
				this.planetDisguise.Transform.Angle = mouseAngle;
			}
			if (this.camController != null)
			{
				this.camController.TargetFocusPos = new Vector3(mouseRelativeToCenter * this.cameraMovementStrength, 0.0f);
			}
		}
	}
}
