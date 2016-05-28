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
		private ContentRef<Font> monoFont;
		private ContentRef<Font> primaryFont;
		private ColorRgba mainColor = ColorRgba.White;
		[DontSerialize] private float displayedPoints = 0.0f;
		[DontSerialize] private float pointHightlight = 0.0f;
		[DontSerialize] private int lastLevelControllerPoints = 0;
		
		public ContentRef<Font> MonoFont
		{
			get { return this.monoFont; }
			set { this.monoFont = value; }
		}
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

			LevelController levelController = this.GameObj.ParentScene.FindComponent<LevelController>();

			if (levelController != null)
			{
				this.pointHightlight += (0.0f - this.pointHightlight) * 0.01f * Time.TimeMult;
				this.displayedPoints += (float)(levelController.Points - this.displayedPoints) * 0.2f * Time.TimeMult;

				if (levelController.Points != this.lastLevelControllerPoints)
				{
					this.lastLevelControllerPoints = levelController.Points;
					this.pointHightlight = 1.0f;
				}

				canvas.State.TextFont = this.monoFont;
				canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Add, ColorRgba.White));
				canvas.State.ColorTint = this.mainColor.WithAlpha(0.65f + 0.35f * this.pointHightlight);
				canvas.DrawText(
					string.Format("{0}", MathF.RoundToInt(this.displayedPoints)),
					130, 10, 0,
					Alignment.TopRight,
					true);
				canvas.State.TextFont = this.primaryFont;
				canvas.State.ColorTint = this.mainColor.WithAlpha(0.5f);
				canvas.DrawText(
					"Points",
					150, 10, 0,
					Alignment.TopLeft,
					true);
			}
		}
	}
}
