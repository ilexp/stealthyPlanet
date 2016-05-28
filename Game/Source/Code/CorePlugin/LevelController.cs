using System;
using System.Collections.Generic;
using System.Linq;

using Duality;
using Duality.Input;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;
using Duality.Audio;

namespace Game
{
	public class LevelController : Component, ICmpUpdatable
	{
		private float enemySpawnTimer = 2.0f; // Initial hardcoded 2 second delay
		private float enemySpawnDelay = 1.0f;
		private float spawnDist = 500.0f;
		private List<ContentRef<Prefab>> enemyPrefabs = new List<ContentRef<Prefab>>();
		private ContentRef<Sound> backgroundMusic = null;
		private ContentRef<Sound> loseSound = null;
		private ContentRef<Scene> titleScene = null;
		private SoundInstance playingMusic = null;

		[DontSerialize] private bool gameOver;
		[DontSerialize] private int points = 0;
		[DontSerialize] private float pointTimer = 0.0f;

		public int Points
		{
			get { return this.points; }
		}
		public ContentRef<Scene> TitleScene
		{
			get { return this.titleScene; }
			set { this.titleScene = value; }
		}
		public float EnemySpawnDelay
		{
			get { return this.enemySpawnDelay; }
			set { this.enemySpawnDelay = value; }
		}
		public float SpawnDistance
		{
			get { return this.spawnDist; }
			set { this.spawnDist = value; }
		}
		public List<ContentRef<Prefab>> EnemyPrefabs
		{
			get { return this.enemyPrefabs; }
			set { this.enemyPrefabs = value ?? new List<ContentRef<Prefab>>(); }
		}
		public ContentRef<Sound> BackgroundMusic
		{
			get { return this.backgroundMusic; }
			set { this.backgroundMusic = value; }
		}
		public ContentRef<Sound> LoseSound
		{
			get { return this.loseSound; }
			set { this.loseSound = value; }
		}
		public bool IsGameOver
		{
			get { return this.gameOver; }
		}

		public void OnUpdate()
		{
			this.enemySpawnTimer -= Time.TimeMult * Time.SPFMult;
			if (this.enemySpawnTimer <= 0.0f)
			{
				this.enemySpawnTimer += this.enemySpawnDelay * MathF.Rnd.NextFloat(0.75f, 1.0f);
				this.SpawnEnemy();
			}

			// Make some eerie space music
			if (this.backgroundMusic != null && this.playingMusic == null || this.playingMusic.Disposed)
			{
				this.playingMusic = DualityApp.Sound.PlaySound(this.backgroundMusic);
				this.playingMusic.Looped = true;
			}

			// Add points for each second we managed to survive
			if (!this.gameOver)
			{
				this.pointTimer += Time.TimeMult * Time.SPFMult;
				if (this.pointTimer >= 1.0f)
				{
					this.pointTimer -= 1.0f;
					this.points += 100;
				}
			}

			// Check for the Losing Condition
			Planet planet = this.GameObj.ParentScene.FindComponent<Planet>();
			if (planet != null)
			{
				if (!this.gameOver && planet.DetectionCounter >= planet.MaxDetectionCounter)
				{
					DualityApp.Sound.PlaySound(this.loseSound);
					this.gameOver = true;
				}
			}

			// Go back to to the title screen if gameover
			if (this.gameOver)
			{
				if (DualityApp.Mouse.ButtonHit(MouseButton.Left) ||
					DualityApp.Keyboard.KeyHit(Key.Enter))
				{
					if (this.playingMusic != null)
						this.playingMusic.FadeOut(2.0f);
					Scene.Current.DisposeLater();
					Scene.SwitchTo(this.titleScene);
				}
			}
		}

		private void SpawnEnemy()
		{
			if (this.enemyPrefabs.Count == 0) return;

			Prefab prefab = MathF.Rnd.OneOf(this.enemyPrefabs).Res;
			if (prefab == null) return;

			GameObject enemyObj = prefab.Instantiate();
			enemyObj.Transform.Pos = new Vector3(MathF.Rnd.NextVector2() * this.spawnDist, 0.0f);
			Scene.Current.AddObject(enemyObj);
		}
	}
}
