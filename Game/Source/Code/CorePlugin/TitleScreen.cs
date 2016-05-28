using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Input;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	public class TitleScreen : Component, ICmpUpdatable
	{
		public ContentRef<Scene> GameScene { get; set; }

		public void OnUpdate()
		{
			if (DualityApp.Mouse.ButtonHit(MouseButton.Left) ||
				DualityApp.Keyboard.KeyHit(Key.Enter))
			{
				Scene.SwitchTo(this.GameScene);
			}
		}
	}
}
