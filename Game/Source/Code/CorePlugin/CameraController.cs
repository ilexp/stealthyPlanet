using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	[RequiredComponent(typeof(Transform))]
	[RequiredComponent(typeof(Camera))]
	public class CameraController : Component, ICmpUpdatable
	{
		private float   smoothness     = 1.0f;
		private Vector3 targetFocusPos = Vector3.Zero;

		public float Smoothness
		{
			get { return this.smoothness; }
			set { this.smoothness = value; }
		}
		public Vector3 TargetFocusPos
		{
			get { return this.targetFocusPos; }
			set { this.targetFocusPos = value; }
		}

		void ICmpUpdatable.OnUpdate()
		{
			Transform transform = this.GameObj.Transform;
			Camera camera = this.GameObj.GetComponent<Camera>();

			// The position to focus on.
			Vector3 focusPos = this.targetFocusPos;
			// The position where the camera itself should move
			Vector3 targetPos = focusPos - new Vector3(0.0f, 0.0f, camera.FocusDist);
			// A relative movement vector that would place the camera directly at its target position.
			Vector3 posDiff = (targetPos - transform.Pos);
			// A relative movement vector that doesn't go all the way, but just a bit towards its target.
			Vector3 targetVelocity = posDiff * 0.1f * MathF.Pow(2.0f, -this.smoothness);

			// Move the camera
			transform.MoveByAbs(targetVelocity * Time.TimeMult);
		}
	}
}
