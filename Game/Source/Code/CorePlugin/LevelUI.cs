using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	public class LevelUI : Component, ICmpRenderer
	{
		private ContentRef<Font> primaryFont;
		private ColorRgba mainColor = ColorRgba.White;

		public ContentRef<Font> PrimaryFont
		{
			get { return this.primaryFont; }
			set { this.primaryFont = value; }
		}
		public ColorRgba MainColor
		{
			get { return this.mainColor; }
			set { this.mainColor = value; }
		}

		public float BoundRadius
		{
			get { return float.MaxValue; }
		}

		public bool IsVisible(IDrawDevice device)
		{
			return 
				device.VisibilityMask.HasFlag(VisibilityFlag.ScreenOverlay) &&
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None;
		}
		public void Draw(IDrawDevice device)
		{
			Canvas canvas = new Canvas(device);
			canvas.State.TextFont = this.primaryFont;

			LevelController levelController = this.GameObj.ParentScene.FindComponent<LevelController>();

			if (levelController != null)
			{
				canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Add, ColorRgba.White));
				canvas.State.ColorTint = this.mainColor;
				canvas.DrawText(
					string.Format("{0}", (int)levelController.GameTimer),
					20, 10, 0,
					Alignment.TopLeft,
					true);
				canvas.State.ColorTint = this.mainColor.WithAlpha(0.5f);
				canvas.DrawText(
					string.Format("Seconds", (int)levelController.GameTimer),
					80, 10, 0,
					Alignment.TopLeft,
					true);
			}
		}
	}
}
