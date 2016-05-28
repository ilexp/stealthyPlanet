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
		private float radius = 50.0f;
		private int vertexCount = 0;

		[DontSerialize] private RawList<VertexC1P3T2> vertices = new RawList<VertexC1P3T2>();


		public float Radius
		{
			get { return this.radius; }
			set { this.radius = value; }
		}
		public int VertexCount
		{
			get { return this.vertexCount; }
			set { this.vertexCount = value; }
		}
		public override float BoundRadius
		{
			get { return this.radius * this.GameObj.Transform.Scale; }
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

			this.vertices.Count = this.vertexCount;
			VertexC1P3T2[] vertexData = this.vertices.Data;
			for (int i = 0; i < this.vertices.Count; i++)
			{
				float angle = MathF.RadAngle360 * (float)i / (float)this.vertices.Count;
				Vector2 offsetVec = Vector2.FromAngleLength(angle, this.radius);
				MathF.TransformDotVec(ref offsetVec, ref xDot, ref yDot);

				vertexData[i].Pos.X = posTemp.X + offsetVec.X;
				vertexData[i].Pos.Y = posTemp.Y + offsetVec.Y;
				vertexData[i].Pos.Z = posTemp.Z;
				vertexData[i].TexCoord.X = 0.0f;
				vertexData[i].TexCoord.Y = 0.0f;
				vertexData[i].Color = ColorRgba.White;
			}

			device.AddVertices(Material.SolidWhite, VertexMode.TriangleFan, vertexData, this.vertices.Count);
		}
	}
}
