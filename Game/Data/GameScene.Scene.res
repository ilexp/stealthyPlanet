<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">0</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2675810018">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1056963884">
        <_items dataType="Array" type="Duality.Component[]" id="4180750052">
          <item dataType="Struct" type="Duality.Components.Transform" id="741157654">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2675810018</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="3213085825">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">2675810018</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="677534109">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="433509094" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="663838080">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3935889614">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="3329291389">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2675810018</gameobj>
          </item>
          <item dataType="Struct" type="Game.CameraController" id="2466947893">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2675810018</gameobj>
            <smoothness dataType="Float">1</smoothness>
            <targetFocusPos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </targetFocusPos>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3213924790" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2280752998">
            <item dataType="Type" id="955471744" value="Duality.Components.Transform" />
            <item dataType="Type" id="4042286286" value="Duality.Components.Camera" />
            <item dataType="Type" id="1317538076" value="Duality.Components.SoundListener" />
            <item dataType="Type" id="1574499794" value="Game.CameraController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4146632506">
            <item dataType="ObjectRef">741157654</item>
            <item dataType="ObjectRef">3213085825</item>
            <item dataType="ObjectRef">3329291389</item>
            <item dataType="ObjectRef">2466947893</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">741157654</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="776642534">495SFi8rP0CHgKLPJNncPg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4177079581">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3791506095">
        <_items dataType="Array" type="Duality.Component[]" id="522079214">
          <item dataType="Struct" type="Duality.Components.Transform" id="2242427217">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4177079581</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1524278853">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4177079581</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Sprites\planet.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2944888809">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="None" value="0" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4177079581</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="116387481">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3843343950" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2030968528">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2944888809</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                  </position>
                  <radius dataType="Float">115</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
              <_version dataType="Int">1</_version>
            </shapes>
          </item>
          <item dataType="Struct" type="Game.Planet" id="3109312925">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4177079581</gameobj>
            <m_detectionCounter dataType="Int">0</m_detectionCounter>
            <m_maxDetectionCounter dataType="Int">5</m_maxDetectionCounter>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1764777120" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4039990661">
            <item dataType="ObjectRef">955471744</item>
            <item dataType="Type" id="2878632278" value="Duality.Components.Renderers.SpriteRenderer" />
            <item dataType="Type" id="2941124826" value="Duality.Components.Physics.RigidBody" />
            <item dataType="Type" id="3813384566" value="Game.Planet" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="685251240">
            <item dataType="ObjectRef">2242427217</item>
            <item dataType="ObjectRef">1524278853</item>
            <item dataType="ObjectRef">2944888809</item>
            <item dataType="ObjectRef">3109312925</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2242427217</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4058756751">tmY13Mx4XEu9Q1xvY1KE9w==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Planet</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="984225756">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1834097330">
        <_items dataType="Array" type="Duality.Component[]" id="2525575888" length="4">
          <item dataType="Struct" type="Game.Player" id="4211442933">
            <active dataType="Bool">true</active>
            <camController dataType="ObjectRef">2466947893</camController>
            <cameraMovementStrength dataType="Float">0.25</cameraMovementStrength>
            <gameobj dataType="ObjectRef">984225756</gameobj>
            <planetDisguise dataType="Struct" type="Duality.GameObject" id="3123407733">
              <active dataType="Bool">true</active>
              <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2404911058">
                <_items dataType="Array" type="Duality.GameObject[]" id="2152504144" length="4">
                  <item dataType="Struct" type="Duality.GameObject" id="4044460456">
                    <active dataType="Bool">true</active>
                    <children />
                    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4279324824">
                      <_items dataType="Array" type="Duality.Component[]" id="3359554092" length="4">
                        <item dataType="Struct" type="Duality.Components.Transform" id="2109808092">
                          <active dataType="Bool">true</active>
                          <angle dataType="Float">0</angle>
                          <angleAbs dataType="Float">0</angleAbs>
                          <angleVel dataType="Float">0</angleVel>
                          <angleVelAbs dataType="Float">0</angleVelAbs>
                          <deriveAngle dataType="Bool">true</deriveAngle>
                          <gameobj dataType="ObjectRef">4044460456</gameobj>
                          <ignoreParent dataType="Bool">false</ignoreParent>
                          <parentTransform dataType="Struct" type="Duality.Components.Transform" id="1188755369">
                            <active dataType="Bool">true</active>
                            <angle dataType="Float">0</angle>
                            <angleAbs dataType="Float">0</angleAbs>
                            <angleVel dataType="Float">0</angleVel>
                            <angleVelAbs dataType="Float">0</angleVelAbs>
                            <deriveAngle dataType="Bool">true</deriveAngle>
                            <gameobj dataType="ObjectRef">3123407733</gameobj>
                            <ignoreParent dataType="Bool">false</ignoreParent>
                            <parentTransform />
                            <pos dataType="Struct" type="Duality.Vector3">
                              <X dataType="Float">0</X>
                              <Y dataType="Float">0</Y>
                              <Z dataType="Float">0</Z>
                            </pos>
                            <posAbs dataType="Struct" type="Duality.Vector3">
                              <X dataType="Float">0</X>
                              <Y dataType="Float">0</Y>
                              <Z dataType="Float">0</Z>
                            </posAbs>
                            <scale dataType="Float">1</scale>
                            <scaleAbs dataType="Float">1</scaleAbs>
                            <vel dataType="Struct" type="Duality.Vector3">
                              <X dataType="Float">0</X>
                              <Y dataType="Float">0</Y>
                              <Z dataType="Float">0</Z>
                            </vel>
                            <velAbs dataType="Struct" type="Duality.Vector3">
                              <X dataType="Float">0</X>
                              <Y dataType="Float">0</Y>
                              <Z dataType="Float">0</Z>
                            </velAbs>
                          </parentTransform>
                          <pos dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                            <Z dataType="Float">0</Z>
                          </pos>
                          <posAbs dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                            <Z dataType="Float">0</Z>
                          </posAbs>
                          <scale dataType="Float">1</scale>
                          <scaleAbs dataType="Float">1</scaleAbs>
                          <vel dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                            <Z dataType="Float">0</Z>
                          </vel>
                          <velAbs dataType="Struct" type="Duality.Vector3">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                            <Z dataType="Float">0</Z>
                          </velAbs>
                        </item>
                        <item dataType="Struct" type="Game.PartialCircleRenderer" id="467482284">
                          <active dataType="Bool">true</active>
                          <angleRangeDegree dataType="Float">45</angleRangeDegree>
                          <circleStepCount dataType="Int">32</circleStepCount>
                          <gameobj dataType="ObjectRef">4044460456</gameobj>
                          <innerRadius dataType="Float">190</innerRadius>
                          <outerRadius dataType="Float">230</outerRadius>
                          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                            <contentPath dataType="String">Data\Sprites\barrier.Material.res</contentPath>
                          </sharedMat>
                          <texHAlphaFade dataType="Float">0.09999999</texHAlphaFade>
                          <texHOffsetAnimSpeed dataType="Float">1.25</texHOffsetAnimSpeed>
                          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                        </item>
                        <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2812269684">
                          <active dataType="Bool">true</active>
                          <angularDamp dataType="Float">0.3</angularDamp>
                          <angularVel dataType="Float">0</angularVel>
                          <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
                          <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
                          <colFilter />
                          <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="None" value="0" />
                          <continous dataType="Bool">false</continous>
                          <explicitInertia dataType="Float">0</explicitInertia>
                          <explicitMass dataType="Float">0</explicitMass>
                          <fixedAngle dataType="Bool">false</fixedAngle>
                          <gameobj dataType="ObjectRef">4044460456</gameobj>
                          <ignoreGravity dataType="Bool">false</ignoreGravity>
                          <joints />
                          <linearDamp dataType="Float">0.3</linearDamp>
                          <linearVel dataType="Struct" type="Duality.Vector2">
                            <X dataType="Float">0</X>
                            <Y dataType="Float">0</Y>
                          </linearVel>
                          <revolutions dataType="Float">0</revolutions>
                          <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1700320084">
                            <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2923199204" length="4">
                              <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3315677124">
                                <density dataType="Float">1</density>
                                <friction dataType="Float">0.3</friction>
                                <parent dataType="ObjectRef">2812269684</parent>
                                <restitution dataType="Float">0.3</restitution>
                                <sensor dataType="Bool">false</sensor>
                                <vertices dataType="Array" type="Duality.Vector2[]" id="4178742596">
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">-84.1925</X>
                                    <Y dataType="Float">-203.01712</Y>
                                  </item>
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">0.08721447</X>
                                    <Y dataType="Float">-220.158752</Y>
                                  </item>
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">0.08721447</X>
                                    <Y dataType="Float">-200.160187</Y>
                                  </item>
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">-76.6130447</X>
                                    <Y dataType="Float">-184.829651</Y>
                                  </item>
                                </vertices>
                              </item>
                              <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3800757654">
                                <density dataType="Float">1</density>
                                <friction dataType="Float">0.3</friction>
                                <parent dataType="ObjectRef">2812269684</parent>
                                <restitution dataType="Float">0.3</restitution>
                                <sensor dataType="Bool">false</sensor>
                                <vertices dataType="Array" type="Duality.Vector2[]" id="4280447054">
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">-0.0388298035</X>
                                    <Y dataType="Float">-220.117</Y>
                                  </item>
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">84.40182</X>
                                    <Y dataType="Float">-203.157425</Y>
                                  </item>
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">76.6532</X>
                                    <Y dataType="Float">-184.740417</Y>
                                  </item>
                                  <item dataType="Struct" type="Duality.Vector2">
                                    <X dataType="Float">-0.008318901</X>
                                    <Y dataType="Float">-200.032166</Y>
                                  </item>
                                </vertices>
                              </item>
                            </_items>
                            <_size dataType="Int">2</_size>
                            <_version dataType="Int">6</_version>
                          </shapes>
                        </item>
                      </_items>
                      <_size dataType="Int">3</_size>
                      <_version dataType="Int">3</_version>
                    </compList>
                    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1904543006" surrogate="true">
                      <header />
                      <body>
                        <keys dataType="Array" type="System.Object[]" id="1758403418">
                          <item dataType="ObjectRef">955471744</item>
                          <item dataType="Type" id="3743945216" value="Game.PartialCircleRenderer" />
                          <item dataType="ObjectRef">2941124826</item>
                        </keys>
                        <values dataType="Array" type="System.Object[]" id="3182529466">
                          <item dataType="ObjectRef">2109808092</item>
                          <item dataType="ObjectRef">467482284</item>
                          <item dataType="ObjectRef">2812269684</item>
                        </values>
                      </body>
                    </compMap>
                    <compTransform dataType="ObjectRef">2109808092</compTransform>
                    <identifier dataType="Struct" type="System.Guid" surrogate="true">
                      <header>
                        <data dataType="Array" type="System.Byte[]" id="1186335066">/dK9OqxcHUOjeZci1vnGSA==</data>
                      </header>
                      <body />
                    </identifier>
                    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                    <name dataType="String">Part1</name>
                    <parent dataType="ObjectRef">3123407733</parent>
                    <prefabLink />
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">3</_version>
              </children>
              <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1004020938">
                <_items dataType="Array" type="Duality.Component[]" id="2513501448" length="4">
                  <item dataType="ObjectRef">1188755369</item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">1</_version>
              </compList>
              <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="371474018" surrogate="true">
                <header />
                <body>
                  <keys dataType="Array" type="System.Object[]" id="271311392">
                    <item dataType="ObjectRef">955471744</item>
                  </keys>
                  <values dataType="Array" type="System.Object[]" id="2124520334">
                    <item dataType="ObjectRef">1188755369</item>
                  </values>
                </body>
              </compMap>
              <compTransform dataType="ObjectRef">1188755369</compTransform>
              <identifier dataType="Struct" type="System.Guid" surrogate="true">
                <header>
                  <data dataType="Array" type="System.Byte[]" id="2451755324">9i4SsDnkbkWwCe4ir7DR7Q==</data>
                </header>
                <body />
              </identifier>
              <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
              <name dataType="String">PlanetDisguise</name>
              <parent />
              <prefabLink />
            </planetDisguise>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2026813002" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2707020712">
            <item dataType="Type" id="3260310188" value="Game.Player" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3617981342">
            <item dataType="ObjectRef">4211442933</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3280061844">N1d6BdDRz0C95e5FUo1FJA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Player</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">3123407733</item>
    <item dataType="Struct" type="Duality.GameObject" id="838202518">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3926561472">
        <_items dataType="Array" type="Duality.Component[]" id="1296651548" length="4">
          <item dataType="Struct" type="Game.LevelController" id="1721097166">
            <active dataType="Bool">true</active>
            <backgroundMusic dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Sound]]">
              <contentPath dataType="String">Data\Audio\spacemusic.Sound.res</contentPath>
            </backgroundMusic>
            <enemyPrefabs dataType="Struct" type="System.Collections.Generic.List`1[[Duality.ContentRef`1[[Duality.Resources.Prefab]]]]" id="3138359862">
              <_items dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Prefab]][]" id="950529376">
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                  <contentPath dataType="String">Data\Prefabs\Spaceship.Prefab.res</contentPath>
                </item>
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                  <contentPath dataType="String">Data\Prefabs\Spaceship2.Prefab.res</contentPath>
                </item>
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                  <contentPath dataType="String">Data\Prefabs\Spaceship3.Prefab.res</contentPath>
                </item>
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                  <contentPath dataType="String">Data\Prefabs\Spaceship4.Prefab.res</contentPath>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">8</_version>
            </enemyPrefabs>
            <enemySpawnDelay dataType="Float">5</enemySpawnDelay>
            <enemySpawnTimer dataType="Float">2</enemySpawnTimer>
            <gameobj dataType="ObjectRef">838202518</gameobj>
            <playingMusic />
            <spawnDist dataType="Float">500</spawnDist>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3903494734" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1849669394">
            <item dataType="Type" id="816925776" value="Game.LevelController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2749700554">
            <item dataType="ObjectRef">1721097166</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1625873698">ELeW5mMBjUOBtNbVlQJVCw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">LevelController</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1338649462">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3814160096">
        <_items dataType="Array" type="Duality.Component[]" id="527652828" length="4">
          <item dataType="Struct" type="Game.LevelUI" id="3680259100">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1338649462</gameobj>
            <gameOverSplash dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Sprites\gameover.Material.res</contentPath>
            </gameOverSplash>
            <mainColor dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">173</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">164</R>
            </mainColor>
            <monoFont dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
              <contentPath dataType="String">Data\Sprites\Orbitron-Medium-Mono.Font.res</contentPath>
            </monoFont>
            <primaryFont dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
              <contentPath dataType="String">Data\Sprites\Orbitron-Medium.Font.res</contentPath>
            </primaryFont>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
        <_version dataType="Int">1</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3280457614" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="280951346">
            <item dataType="Type" id="3255302608" value="Game.LevelUI" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3830771018">
            <item dataType="ObjectRef">3680259100</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2250189442">3WxIu4JVcUe75aFBTQJ/2g==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">LevelUI</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="471981381">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="2989268023">
        <_items dataType="Array" type="Duality.GameObject[]" id="3676324494">
          <item dataType="Struct" type="Duality.GameObject" id="2977738345">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1493331097">
              <_items dataType="Array" type="Duality.Component[]" id="2884835918" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1043085981">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2977738345</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">9500</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">9500</Z>
                  </posAbs>
                  <scale dataType="Float">20</scale>
                  <scaleAbs dataType="Float">20</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </vel>
                  <velAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </velAbs>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="324937617">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <customMat />
                  <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                  <gameobj dataType="ObjectRef">2977738345</gameobj>
                  <offset dataType="Int">0</offset>
                  <pixelGrid dataType="Bool">false</pixelGrid>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">1080</H>
                    <W dataType="Float">1920</W>
                    <X dataType="Float">-960</X>
                    <Y dataType="Float">-540</Y>
                  </rect>
                  <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Sprites\bg1.Material.res</contentPath>
                  </sharedMat>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3675179136" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3305276083">
                  <item dataType="ObjectRef">955471744</item>
                  <item dataType="ObjectRef">2878632278</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3593598648">
                  <item dataType="ObjectRef">1043085981</item>
                  <item dataType="ObjectRef">324937617</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1043085981</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2088897241">Demx9c3bB0e6Wp+U04Q9Yw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">bg1</name>
            <parent dataType="ObjectRef">471981381</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="544285871">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2484898079">
              <_items dataType="Array" type="Duality.Component[]" id="4250588014" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2904600803">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">544285871</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">3500</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">3500</Z>
                  </posAbs>
                  <scale dataType="Float">10</scale>
                  <scaleAbs dataType="Float">10</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </vel>
                  <velAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </velAbs>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2186452439">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <customMat />
                  <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                  <gameobj dataType="ObjectRef">544285871</gameobj>
                  <offset dataType="Int">0</offset>
                  <pixelGrid dataType="Bool">false</pixelGrid>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">1080</H>
                    <W dataType="Float">1920</W>
                    <X dataType="Float">-960</X>
                    <Y dataType="Float">-540</Y>
                  </rect>
                  <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Sprites\bg2.Material.res</contentPath>
                  </sharedMat>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="613701152" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1315807381">
                  <item dataType="ObjectRef">955471744</item>
                  <item dataType="ObjectRef">2878632278</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="618913480">
                  <item dataType="ObjectRef">2904600803</item>
                  <item dataType="ObjectRef">2186452439</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2904600803</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3080074143">cGdXNSbMl0OvXtmkEHwiSA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">bg2</name>
            <parent dataType="ObjectRef">471981381</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1195587333">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2815981477">
              <_items dataType="Array" type="Duality.Component[]" id="1516855702" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="3555902265">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">6.143226</angle>
                  <angleAbs dataType="Float">6.143226</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">1195587333</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">1996</X>
                    <Y dataType="Float">1001</Y>
                    <Z dataType="Float">2000</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">1996</X>
                    <Y dataType="Float">1001</Y>
                    <Z dataType="Float">2000</Z>
                  </posAbs>
                  <scale dataType="Float">0.7668376</scale>
                  <scaleAbs dataType="Float">0.7668376</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </vel>
                  <velAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </velAbs>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2837753901">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">54</B>
                    <G dataType="Byte">18</G>
                    <R dataType="Byte">49</R>
                  </colorTint>
                  <customMat />
                  <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                  <gameobj dataType="ObjectRef">1195587333</gameobj>
                  <offset dataType="Int">0</offset>
                  <pixelGrid dataType="Bool">false</pixelGrid>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">500</H>
                    <W dataType="Float">500</W>
                    <X dataType="Float">-250</X>
                    <Y dataType="Float">-250</Y>
                  </rect>
                  <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Sprites\planet.Material.res</contentPath>
                  </sharedMat>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1184530536" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2695338063">
                  <item dataType="ObjectRef">955471744</item>
                  <item dataType="ObjectRef">2878632278</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1296163936">
                  <item dataType="ObjectRef">3555902265</item>
                  <item dataType="ObjectRef">2837753901</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3555902265</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="710731165">938LikhgDUiMvq0x5Jvq/w==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">bgplanet</name>
            <parent dataType="ObjectRef">471981381</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="4003617664">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="322747404">
              <_items dataType="Array" type="Duality.Component[]" id="1364507812" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2068965300">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">4003617664</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">5000</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">5000</Z>
                  </posAbs>
                  <scale dataType="Float">12</scale>
                  <scaleAbs dataType="Float">12</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </vel>
                  <velAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">0</Z>
                  </velAbs>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1350816936">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <customMat />
                  <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                  <gameobj dataType="ObjectRef">4003617664</gameobj>
                  <offset dataType="Int">0</offset>
                  <pixelGrid dataType="Bool">false</pixelGrid>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">1080</H>
                    <W dataType="Float">1920</W>
                    <X dataType="Float">-960</X>
                    <Y dataType="Float">-540</Y>
                  </rect>
                  <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Sprites\bg3.Material.res</contentPath>
                  </sharedMat>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2950867702" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2966461574">
                  <item dataType="ObjectRef">955471744</item>
                  <item dataType="ObjectRef">2878632278</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="3779195706">
                  <item dataType="ObjectRef">2068965300</item>
                  <item dataType="ObjectRef">1350816936</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2068965300</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="914618374">3BO/sB3+X0iEsKDlH9oQAw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">bg3</name>
            <parent dataType="ObjectRef">471981381</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="889548352">
        <_items dataType="Array" type="Duality.Component[]" id="1517843581" length="0" />
        <_size dataType="Int">0</_size>
        <_version dataType="Int">0</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2763052565" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3016681268" length="0" />
          <values dataType="Array" type="System.Object[]" id="294498038" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1818421392">xZXlzMQ4k0iEKug/97hoEw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">background</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">4044460456</item>
    <item dataType="ObjectRef">2977738345</item>
    <item dataType="ObjectRef">544285871</item>
    <item dataType="ObjectRef">1195587333</item>
    <item dataType="ObjectRef">4003617664</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
