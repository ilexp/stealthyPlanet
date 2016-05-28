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
	public class PartialCircleRenderer : Renderer
	{
		private float outerRadius = 50.0f;
		private float innerRadius = 40.0f;
		private float angleRangeDegree = 360.0f;
		private int circleStepCount = 32;

		[DontSerialize] private RawList<VertexC1P3T2> vertices = new RawList<VertexC1P3T2>();


		public float OuterRadius
		{
			get { return this.outerRadius; }
			set { this.outerRadius = value; }
		}
		public float InnerRadius
		{
			get { return this.innerRadius; }
			set { this.innerRadius = value; }
		}
		public int CircleStepCount
		{
			get { return this.circleStepCount; }
			set { this.circleStepCount = value; }
		}
		public float AngleRangeDegree
		{
			get { return this.angleRangeDegree; }
			set { this.angleRangeDegree = value; }
		}
		public override float BoundRadius
		{
			get { return this.outerRadius * this.GameObj.Transform.Scale; }
		}

		public override void Draw(IDrawDevice device)
		{
			Transform transform = this.GameObj.Transform;
			Vector3 posTemp = transform.Pos;
			float scaleTemp = 1.0f;
			device.PreprocessCoords(ref posTemp, ref scaleTemp);

			Vector2 xDot, yDot;
			MathF.GetTransformDotVec(transform.Angle, scaleTemp * transform.Scale, out xDot, out yDot);

			//MathF.TransformDotVec(ref edge1, ref xDot, ref yDot);

			this.vertices.Count = this.circleStepCount * 2;
			VertexC1P3T2[] vertexData = this.vertices.Data;
			for (int i = 0; i < this.circleStepCount; i++)
			{
				float angle = MathF.DegToRad(this.angleRangeDegree) * (((float)i / (float)(this.circleStepCount - 1)) - 0.5f);
				Vector2 offsetOuter = Vector2.FromAngleLength(angle, this.outerRadius);
				Vector2 offsetInner = Vector2.FromAngleLength(angle, this.innerRadius);
				MathF.TransformDotVec(ref offsetOuter, ref xDot, ref yDot);
				MathF.TransformDotVec(ref offsetInner, ref xDot, ref yDot);

				vertexData[i * 2 + 0].Pos.X = posTemp.X + offsetInner.X;
				vertexData[i * 2 + 0].Pos.Y = posTemp.Y + offsetInner.Y;
				vertexData[i * 2 + 0].Pos.Z = posTemp.Z;
				vertexData[i * 2 + 0].TexCoord.X = 0.0f;
				vertexData[i * 2 + 0].TexCoord.Y = 0.0f;
				vertexData[i * 2 + 0].Color = ColorRgba.White;

				vertexData[i * 2 + 1].Pos.X = posTemp.X + offsetOuter.X;
				vertexData[i * 2 + 1].Pos.Y = posTemp.Y + offsetOuter.Y;
				vertexData[i * 2 + 1].Pos.Z = posTemp.Z;
				vertexData[i * 2 + 1].TexCoord.X = 0.0f;
				vertexData[i * 2 + 1].TexCoord.Y = 0.0f;
				vertexData[i * 2 + 1].Color = ColorRgba.White;
			}

			device.AddVertices(Material.SolidWhite, VertexMode.TriangleStrip, vertexData, this.vertices.Count);
		}
	}
}
