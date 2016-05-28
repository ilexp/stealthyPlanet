using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;

namespace Game
{
	public class Planet : Component
	{
		private int m_detectionCounter = 0;
		private int m_maxDetectionCounter = 3;

		public void IncreaseDetectionCounter()
		{
			m_detectionCounter++;
			if (m_detectionCounter >= m_maxDetectionCounter)
			{
				Log.Game.Write("KABOOM!!!");
			}
        }
	}
}
