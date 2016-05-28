using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Audio;
using Duality.Input;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	public class TitleScreen : Component, ICmpUpdatable, ICmpInitializable
	{
		[DontSerialize] private SoundInstance playingMusic = null;

		public ContentRef<Sound> BackgroundMusic { get; set; }
		public ContentRef<Scene> GameScene { get; set; }

		public void OnUpdate()
		{
			if (DualityApp.Mouse.ButtonHit(MouseButton.Left) ||
				DualityApp.Keyboard.KeyHit(Key.Enter))
			{
				Scene.SwitchTo(this.GameScene);
			}
		}
		public void OnInit(Component.InitContext context)
		{
			if (context == InitContext.Activate)
			{
				if (this.BackgroundMusic != null && DualityApp.ExecContext == DualityApp.ExecutionContext.Game)
				{
					this.playingMusic = DualityApp.Sound.PlaySound(this.BackgroundMusic);
					this.playingMusic.Looped = true; 
				}
			}
		}
		public void OnShutdown(Component.ShutdownContext context)
		{
			if (context == ShutdownContext.Deactivate)
			{
				if (this.playingMusic != null)
					this.playingMusic.FadeOut(0.1f);
			}
		}
	}
}
