using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	public class Loader : Component, ICmpInitializable
	{
		public void OnInit(Component.InitContext context)
		{
			if (context == InitContext.Loaded)
			{
				foreach (ContentRef<Resource> res in ContentProvider.GetAvailableContent<Resource>())
				{
					res.MakeAvailable();
				}
			}
		}
		public void OnShutdown(Component.ShutdownContext context) { }
	}
}
