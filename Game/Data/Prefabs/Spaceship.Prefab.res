<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="1688099339">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4064062584">
      <_items dataType="Array" type="Duality.Component[]" id="2253811052" length="4">
        <item dataType="Struct" type="Duality.Components.Transform" id="4048414271">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">1688099339</gameobj>
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
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3330265907">
          <active dataType="Bool">true</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">1688099339</gameobj>
          <offset dataType="Int">0</offset>
          <pixelGrid dataType="Bool">false</pixelGrid>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">64</H>
            <W dataType="Float">64</W>
            <X dataType="Float">-32</X>
            <Y dataType="Float">-32</Y>
          </rect>
          <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\Sprites\spam.Material.res</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="Game.EvilSpaceship" id="1799011023">
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1688099339</gameobj>
          <m_countdownToAttack dataType="Float">0</m_countdownToAttack>
          <m_direction dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">327</X>
            <Y dataType="Float">160</Y>
            <Z dataType="Float">-0</Z>
          </m_direction>
          <m_returnDistance dataType="Float">400000</m_returnDistance>
          <m_shipState dataType="Enum" type="Game.EvilSpaceship+ShipState" name="MoveToTarget" value="1" />
          <m_shootingDistance dataType="Float">80000</m_shootingDistance>
          <m_speed dataType="Float">0.01</m_speed>
          <m_waitingTimeInSeconds dataType="Float">10</m_waitingTimeInSeconds>
        </item>
      </_items>
      <_size dataType="Int">3</_size>
      <_version dataType="Int">3</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1385143774" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="2710143162">
          <item dataType="Type" id="4017307136" value="Duality.Components.Transform" />
          <item dataType="Type" id="1402519502" value="Duality.Components.Renderers.SpriteRenderer" />
          <item dataType="Type" id="4080156316" value="Game.EvilSpaceship" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="1485170618">
          <item dataType="ObjectRef">4048414271</item>
          <item dataType="ObjectRef">3330265907</item>
          <item dataType="ObjectRef">1799011023</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">4048414271</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="3882323642">Ih51zuv6hESNKFDm6HfNrQ==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">Spaceship</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->
