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
	public class LineRenderer : Renderer
	{
		private Vector2 endPos = Vector2.Zero;
		private float startWidth = 10.0f;
		private float endWidth = 20.0f;
		private ColorRgba m_colorStart = ColorRgba.White;
		private ColorRgba m_colorEnd = ColorRgba.White;

		[DontSerialize] private VertexC1P3T2[] vertices = new VertexC1P3T2[4];


		public Vector2 EndPos
		{
			get { return this.endPos; }
			set { this.endPos = value; }
		}
		public float StartWidth
		{
			get { return this.startWidth; }
			set { this.startWidth = value; }
		}
		public float EndWidth
		{
			get { return this.endWidth; }
			set { this.endWidth = value; }
		}
		public override float BoundRadius
		{
			get { return (this.endPos.Length + MathF.Max(this.startWidth, this.endWidth)) * this.GameObj.Transform.Scale; }
		}
		public ColorRgba ColorStart
		{
			get
			{
				return this.m_colorStart;
			}
			set
			{
				this.m_colorStart = value;
			}
		}
		public ColorRgba ColorEnd
		{
			get
			{
				return this.m_colorEnd;
			}
			set
			{
				this.m_colorEnd = value;
			}
		}

		public override void Draw(IDrawDevice device)
		{
			Transform transform = this.GameObj.Transform;
			Vector3 posTemp = transform.Pos;
			float scaleTemp = 1.0f;
			device.PreprocessCoords(ref posTemp, ref scaleTemp);

			Vector2 xDot, yDot;
			MathF.GetTransformDotVec(transform.Angle, scaleTemp * transform.Scale, out xDot, out yDot);

			float angle = endPos.Angle;
			Vector2 startLeft = Vector2.FromAngleLength(angle - MathF.RadAngle90, this.startWidth * 0.5f);
			Vector2 startRight = Vector2.FromAngleLength(angle + MathF.RadAngle90, this.startWidth * 0.5f);
			Vector2 endLeft = this.endPos + Vector2.FromAngleLength(angle - MathF.RadAngle90, this.endWidth * 0.5f);
			Vector2 endRight = this.endPos + Vector2.FromAngleLength(angle + MathF.RadAngle90, this.endWidth * 0.5f);

			MathF.TransformDotVec(ref startLeft, ref xDot, ref yDot);
			MathF.TransformDotVec(ref startRight, ref xDot, ref yDot);
			MathF.TransformDotVec(ref endLeft, ref xDot, ref yDot);
			MathF.TransformDotVec(ref endRight, ref xDot, ref yDot);

			this.vertices[0].Pos.X = posTemp.X + startLeft.X;
			this.vertices[0].Pos.Y = posTemp.Y + startLeft.Y;
			this.vertices[0].Pos.Z = posTemp.Z;
			this.vertices[0].TexCoord.X = 0.0f;
			this.vertices[0].TexCoord.Y = 0.0f;
			this.vertices[0].Color = m_colorStart;

			this.vertices[1].Pos.X = posTemp.X + startRight.X;
			this.vertices[1].Pos.Y = posTemp.Y + startRight.Y;
			this.vertices[1].Pos.Z = posTemp.Z;
			this.vertices[1].TexCoord.X = 0.0f;
			this.vertices[1].TexCoord.Y = 0.0f;
			this.vertices[1].Color = m_colorStart;

			this.vertices[2].Pos.X = posTemp.X + endRight.X;
			this.vertices[2].Pos.Y = posTemp.Y + endRight.Y;
			this.vertices[2].Pos.Z = posTemp.Z;
			this.vertices[2].TexCoord.X = 0.0f;
			this.vertices[2].TexCoord.Y = 0.0f;
			this.vertices[2].Color = m_colorEnd;

			this.vertices[3].Pos.X = posTemp.X + endLeft.X;
			this.vertices[3].Pos.Y = posTemp.Y + endLeft.Y;
			this.vertices[3].Pos.Z = posTemp.Z;
			this.vertices[3].TexCoord.X = 0.0f;
			this.vertices[3].TexCoord.Y = 0.0f;
			this.vertices[3].Color = m_colorEnd;

			device.AddVertices(new BatchInfo(DrawTechnique.Add, ColorRgba.White), VertexMode.Quads, this.vertices);
		}

		public void ResetLineRenderer()
		{
			EndPos = new Vector2(0, 0);
		}
	}
}
