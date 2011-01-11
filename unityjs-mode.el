;;; unityjs-mode.el --- Major mode for editing JavaScript in Unity 3.x

;; Author: Juan Sebastian Muñoz <naruse@gmail.com>

;; Identation took from: http://cvs.savannah.gnu.org/viewvc/*checkout*/emacs/lisp/progmodes/js.el?root=emacs
;; Authors: 
;;         Karl Landstrom <karl.landstrom@brgeight.se>
;;         Daniel Colascione <dan.colascione@gmail.com>



;; Version: 2.0
;; Date: 2011-Jan-10
;; Keywords: Unity3D 3.x, Unity Javascript.

;; This file is licensed as GPL, you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file comes WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.


(defvar unityjs-mode-hook nil)
(defvar unityjs-mode-map
  (let ((unityjs-mode-map (make-sparse-keymap)))
    (define-key unityjs-mode-map "\C-j" 'newline-and-indent)
    unityjs-mode-map)
  "Keymap for UnityJS major mode")

(add-to-list 'auto-mode-alist '("\\.js\\'" . unityjs-mode))

;; Word Highlighting

 (defconst unityjs-font-lock-keywords-1
   (list
    '("\\<\\(A\\(?:RGB\\(?:1\\(?:555\\|6\\)\\|32\\|4444\\|Half\\)\\|SCII\\(?:\\(?:Capabl\\|\\(?:Low\\|Upp\\)erCas\\)e\\)?\\|b\\(?:ove\\|s\\)\\|c\\(?:ce\\(?:leration\\(?:Event\\)?\\|pt\\(?:Drag\\|ExternalModificationsToPlayer\\)\\)\\|os\\|tive\\)\\|d\\(?:d\\(?:BinaryData\\|C\\(?:lip\\|o\\(?:lor\\|mponent\\(?:Menu\\)?\\|ntrol\\)\\|ursorRect\\)\\|DefaultControl\\|E\\(?:vent\\|xplosionForce\\)\\|F\\(?:ield\\|loat\\|orce\\(?:AtPosition\\)?\\)\\|Key\\|M\\(?:atrix\\|ixingTransform\\)\\|ObjectToAsset\\|Relative\\(?:\\(?:Forc\\|Torqu\\)e\\)\\|T\\(?:\\(?:orqu\\|reeInstanc\\)e\\)\\|Vector\\|itive\\)?\\|vanced\\)\\|frikaans\\|l\\(?:l\\(?:Buffered\\|ey\\|ocateViewID\\)?\\|pha[0-9]\\|\\(?:readyConnectedToAnotherServe\\|t\\(?:DirectorySeparatorCha\\|G\\)\\)r\\)\\|mpersand\\|n\\(?:droid\\|gle\\(?:Axis\\)?\\|i\\(?:mation\\(?:BlendMode\\|C\\(?:lip\\(?:CurveData\\)?\\|urve\\)\\|Event\\|State\\|Utility\\)?\\|sotropicFiltering\\)\\)\\|pp\\(?:l\\(?:ication\\|y\\(?:ModifiedProperties\\(?:MultiSelect\\)?\\|TextureType\\)?\\)\\|roximately\\)\\|r\\(?:abic\\|e\\(?:UsersFriends\\|na\\)\\|r\\(?:ay\\(?:Size\\)?\\|ow\\(?:Cap\\)?\\)\\)\\|s\\(?:in\\|pect\\(?:16by\\(?:10\\|9\\)\\|4by3\\|5by4\\|Fi\\(?:ll\\|t\\)\\|Others\\|Ratio\\)\\|se\\(?:rt\\|t\\(?:Bundle\\(?:Request\\)?\\|Database\\|Importer\\|P\\(?:athToGUID\\|ostprocessor\\)\\|s\\)\\)\\|terisk\\|yncOperation\\)\\|t\\(?:an2?\\|t\\(?:achToCollider\\|ribute\\)\\)?\\|u\\(?:di\\(?:o\\(?:C\\(?:horusFilter\\|lip\\)\\|DistortionFilter\\|EchoFilter\\|HighPassFilter\\|Importer\\(?:Format\\|LoadType\\)?\\|L\\(?:\\(?:isten\\|owPassFilt\\)er\\)\\|R\\(?:everb\\(?:Filter\\|Preset\\|Zone\\)\\|olloffMode\\)\\|S\\(?:ettings\\|\\(?:ourc\\|peakerMod\\)e\\)\\|VelocityUpdateMode\\)\\|torium\\)\\|to\\(?:RunPlayer\\|matic\\(?:16bit\\|Compressed\\|Truecolor\\)\\)?\\)\\|verage\\|wa\\(?:ke\\|rdUser\\)\\)\\|B\\(?:a\\(?:ck\\(?:Quote\\|s\\(?:lash\\|pace\\)\\)\\|ke\\(?:Async\\|Selected\\(?:Async\\)?\\)?\\|s\\(?:icDelegate\\(?:Index\\)?\\|que\\)\\|throom\\)\\|e\\(?:autiful\\|ep\\|g\\(?:an\\|in\\(?:Area\\|G\\(?:UI\\|roup\\)\\|Horizontal\\|S\\(?:ample\\|crollView\\)\\|ToggleGroup\\|Vertical\\|Windows\\)?\\)\\|haviour\\|l\\(?:arusian\\|ow\\(?:Normal\\)?\\)\\)\\|i\\(?:l\\(?:inear\\|lboard\\)\\|tStream\\)\\|l\\(?:ackman\\(?:Harris\\)?\\|end\\|it\\(?:MultiTap\\)?\\|uRayTitle\\)\\|o\\(?:ld\\(?:AndItalic\\)?\\|ne\\(?:Weight\\|[124]\\)\\|olean\\|unds\\|x\\(?:\\(?:Collid\\|Filt\\)er\\)?\\)\\|r\\(?:eak\\|ingWindowTo\\(?:Back\\|Front\\)\\|o\\(?:adcastMessage\\|wseURL\\)\\)\\|u\\(?:ild\\(?:A\\(?:dditionalStreamedScenes\\|ssetBundle\\(?:\\(?:ExplicitAssetName\\|Option\\)s\\)?\\)\\|Options\\|P\\(?:ipeline\\|layer\\)\\|Target\\|X86_64Binary\\)\\|lgarian\\|mp\\|tton\\)\\)\\|C\\(?:a\\(?:l\\(?:c\\(?:Height\\|LineTranslation\\|MinMaxWidth\\|S\\(?:\\(?:creenS\\)?ize\\)\\|ulate\\(?:FrustumPlanes\\|TransformPath\\)?\\)\\|lbackFunction\\)\\|mera\\(?:ClearFlags\\)?\\|n\\(?:StreamedLevelBeLoaded\\|cel\\(?:Invoke\\|OnTouch\\|Quit\\|ed\\)?\\)\\|p\\(?:s\\(?:Lock\\|ule\\(?:C\\(?:ast\\(?:All\\)?\\|ollider\\)\\)?\\)\\|tureScreenshot\\)\\|r\\(?:et\\|petedHallway\\)\\|talan\\|ve\\)\\|e\\(?:il\\(?:ToInt\\)?\\|nter\\)\\|h\\(?:aracter\\(?:Controller\\|Joint\\)?\\|\\(?:eck\\(?:Capsul\\|Spher\\)\\|ines\\)e\\)\\|i\\(?:rcleCap\\|ty\\)\\|l\\(?:amp\\(?:01\\|Forever\\|Magnitude\\)?\\|ear\\(?:C\\(?:amera\\|urves\\)\\|HostList\\|Labels\\|P\\(?:articles\\|latformTextureSettings\\|rogressBar\\)\\|SnapshotTarget\\|WithSkybox\\)?\\|i\\(?:ent\\|p\\)\\|o\\(?:neComponent\\|se\\(?:Connection\\|stPo\\(?:int\\(?:OnBounds\\|To\\(?:Arc\\|Disc\\|PolyLine\\)\\)\\|werOfTwo\\)\\)?\\|th\\(?:Renderer\\|SkinningCoefficient\\)?\\)\\)\\|o\\(?:l\\(?:l\\(?:ectDe\\(?:epHierarchy\\|pendencies\\)\\|i\\(?:der\\|sion\\(?:DetectionMode\\|Flags\\)?\\)\\)\\|o\\(?:rField\\|[nr]\\)\\)\\|m\\(?:bine\\(?:Instance\\|Meshes\\)?\\|ma\\(?:ndEvent\\)?\\|p\\(?:areTag\\|lete\\(?:Assets\\|Label\\|Others\\)\\|onent\\|ress\\(?:Texture\\|ed\\(?:InMemory\\)?\\)?\\|ute\\)\\)\\|n\\(?:c\\(?:at\\|erthall\\)\\|eCap\\|figurableJoint\\(?:Motion\\)?\\|nect\\(?:ToPrefab\\|WithProfiler\\|i\\(?:ng\\|on\\(?:Banned\\|Failed\\|TesterStatus\\)\\)\\)?\\|stantForce\\|t\\(?:a\\(?:ctPoint\\|ins\\(?:Key\\|Value\\)?\\)\\|ext\\(?:Click\\|Menu\\)\\|inuous\\(?:Dynamic\\)?\\|rollerColliderHit\\)\\)\\|okie\\|py\\(?:Asset\\|F\\(?:ileOrDirectory\\(?:FollowSymlinks\\)?\\|rom\\)\\|PropertiesFromMaterial\\|Serialized\\|To\\)?\\|routine\\|s\\|unt\\(?:Remaining\\)?\\)\\|r\\(?:e\\(?:ate\\(?:Asset\\|EmptyPrefab\\|GameObjectWithHideFlags\\|Instance\\|Primitive\\|S\\(?:aveGame\\|napshot\\|ocketOrThreadFailure\\)\\|TerrainGameObject\\)?\\|d\\)\\|oss\\(?:Fade\\(?:Queued\\)?\\)?\\)\\|u\\(?:be\\(?:Cap\\|map\\(?:Face\\)?\\)?\\|rveField\\|stom\\(?:Editor\\)?\\)\\|ylind\\(?:er\\(?:Cap\\)?\\|rical\\)\\|zech\\)\\|D\\(?:XT[15]\\|a\\(?:nish\\|shboardWidget\\)\\|e\\(?:bug\\|c\\(?:ompressOnLoad\\|reaseLevel\\)\\|ep\\(?:Assets\\)?\\|f\\(?:ault\\|erredLighting\\)\\|g2Rad\\|l\\(?:ete\\(?:A\\(?:ll\\|sset\\)\\|Command\\|\\(?:FileOrDirector\\|Ke\\)y\\)?\\|taAngle\\)\\|pth\\(?:Normals\\|TextureMode\\)?\\|s\\(?:cription\\|troy\\(?:Immediate\\|PlayerObjects\\)?\\)\\|t\\(?:a\\(?:ch\\(?:Children\\|FromCollider\\)\\|il\\(?:\\(?:Prototyp\\|RenderMod\\)e\\)\\)\\|erministicAssetBundle\\)\\|v\\(?:elopment\\|iceOrientation\\)\\)\\|i\\(?:rect\\(?:ional\\|orySeparatorChar\\)\\|s\\(?:abled?\\|c\\(?:onnect\\(?:ed\\(?:\\(?:Model\\)?PrefabInstance\\)?\\)?\\|rete\\)?\\|play\\(?:CancelableProgressBar\\|Dialog\\(?:Complex\\)?\\|Name\\|P\\(?:opupMenu\\|rogressBar\\)\\|Wizard\\)\\|tance\\(?:Point\\(?:Bezier\\|Line\\)\\|To\\(?:Arc\\|Circle\\|Disc\\|\\(?:Poly\\)?Line\\)\\)?\\)\\|zzy\\)\\|o\\(?:esSourceTextureHaveAlpha\\|llar\\|nt\\(?:DestroyOnLoad\\|RequireReceiver\\|Save\\)\\|t\\(?:Cap\\)?\\|ubleQuote\\|wnArrow\\)\\|r\\(?:a\\(?:g\\(?:AndDrop\\(?:VisualMode\\)?\\|Exited\\|Perform\\|Updated\\|Window\\)\\|w\\(?:AAPolyLine\\|Bezier\\|C\\(?:a\\(?:mera\\(?:Mode\\)?\\|pFunction\\)\\|olorSwatch\\|u\\(?:be\\|r\\(?:sor\\|veSwatch\\)\\)\\)\\|DefaultInspector\\|G\\(?:UITexture\\|izmo\\)\\|Icon\\|Line\\|Mesh\\(?:Now\\)?\\|P\\(?:\\(?:olyLin\\|reviewTextur\\)e\\)\\|Ray\\|S\\(?:olid\\(?:Arc\\|Disc\\|RectangleWithOutline\\)\\|phere\\)\\|Texture\\(?:Alpha\\)?\\|Wi\\(?:re\\(?:Arc\\|Cube\\|Disc\\|Sphere\\)\\|thTextSelection\\)\\)?\\)\\|opShadowLabel\\|ugged\\)\\|u\\(?:al\\|plicateCommand\\|tch\\)\\|ynamic\\)\\|E\\(?:TC_RGB4\\|aseInOut\\|dit\\(?:able\\|or\\(?:Application\\|BuildSettings\\|GUI\\(?:Layout\\|Utility\\)?\\|Prefs\\|S\\(?:kin\\|tyles\\)\\|U\\(?:serBuildSettings\\|tility\\)\\|Window\\)?\\)\\|m\\(?:ailAddress\\|\\(?:i\\|ptyConnectTarge\\)t\\)\\|n\\(?:abled?\\|c\\(?:apsulate\\|odeToPNG\\)\\|d\\(?:Area\\|G\\(?:UI\\|roup\\)\\|Horizontal\\|S\\(?:ample\\|crollView\\)\\|ToggleGroup\\|Vertical\\|Windows\\|ed\\)?\\|glish\\|um\\(?:Popup\\)?\\)\\|psilon\\|qual\\(?:\\(?:Content\\)?s\\)?\\|rror\\|s\\(?:cape\\(?:URL\\)?\\|tonian\\)\\|uler\\|v\\(?:aluate\\|ent\\(?:Type\\)?\\)\\|x\\(?:c\\(?:eption\\|l\\(?:aim\\|udePrefab\\)\\)\\|ecute\\(?:Command\\|InEditMode\\|MenuItem\\)\\|it\\|p\\(?:and\\(?:Height\\|Width\\)?\\|onential\\(?:Squared\\)?\\)?\\|t\\(?:ernal\\(?:\\(?:Cal\\|Eva\\)l\\)\\|ra\\(?:\\(?:ctOggFil\\|polat\\)e\\)\\)\\)\\)\\|F\\(?:1[0-5]\\|FTWindow\\|a\\(?:ce\\(?:Down\\|Up\\)\\|iled\\|ntastic\\|roese\\|st\\(?:est\\)?\\)\\|i\\(?:l\\(?:e\\(?:Name\\|Util\\)\\|l\\|terMode\\)\\|n\\(?:d\\(?:GameObjectsWithTag\\|Object\\(?:OfType\\|sOfType\\(?:All\\)?\\)\\|Pr\\(?:efabRoot\\|operty\\)\\|Style\\|Texture\\|WithTag\\)?\\|nish\\)\\|xed\\(?:Joint\\|Update\\)?\\)\\|l\\(?:are\\|exibleSpace\\|o\\(?:at\\(?:Field\\)?\\|or\\(?:ToInt\\)?\\)\\|ush\\)\\|o\\(?:cus\\(?:Control\\|ProjectWindow\\|Type\\|Window\\(?:IfItsOpen\\)?\\)?\\|gMode\\|ldout\\|nt\\(?:\\(?:RenderMod\\|Styl\\|TextureCas\\)e\\)?\\|r\\(?:ce\\(?:Enable\\|Mode\\|Pixel\\|SynchronousImport\\|Update\\|Vertex\\)?\\|est\\|matBytes\\|ward\\)\\)\\|r\\(?:e\\(?:e\\(?:MoveHandle\\|RotateHandle\\|ze\\(?:All\\|Position[XYZ]?\\|Rotation[XYZ]?\\)\\)?\\|nch\\)\\|omToRotation\\)\\|ull\\|[1-9]\\)\\|G\\(?:L\\|UI\\(?:Content\\|DToAssetPath\\|Element\\|Lay\\(?:er\\|out\\(?:Option\\|Utility\\)?\\)\\|PointToWorldRay\\|S\\(?:ettings\\|kin\\|tyle\\(?:State\\)?\\)\\|T\\(?:ext\\(?:ure\\)?\\|oScreenPoint\\)\\|Utility\\)?\\|ame\\(?:Object\\)?\\|e\\(?:ner\\(?:ate\\(?:InBackground\\|PerTriangleUV\\|SecondaryUVSet\\|UniqueAssetPath\\)\\|ic\\)\\|ometryUtility\\|rman\\|t\\(?:A\\(?:c\\(?:celerationEvent\\|hievementDesc\\)\\|l\\(?:\\(?:lCurve\\|phamap\\)s\\)\\|nimat\\(?:able\\(?:Objects\\|Properties\\(?:ForObject\\)?\\)\\|ion\\(?:\\(?:Clip\\|Event\\)s\\)\\)\\|s\\(?:pectRect\\|setPath\\)\\|tPath\\|udioClip\\|veragePing\\|xis\\(?:Raw\\)?\\)\\|B\\(?:ool\\|u\\(?:il\\(?:\\(?:dLocatio\\|tinSki\\)n\\)\\|tton\\(?:Down\\|Up\\)?\\)\\)\\|C\\(?:achedIcon\\|l\\(?:ass\\(?:Name\\)?\\|ipCount\\)\\|o\\(?:l\\(?:or\\|umn\\)\\|mponent\\(?:InChildren\\|s\\(?:InChildren\\)?\\)?\\|ntrolID\\|unt\\)\\|ursor\\(?:PixelPosition\\|StringIndex\\)\\)\\|D\\(?:etailLayer\\|i\\(?:rectoryName\\|stanceToPoint\\)\\|ragAndDropTitle\\)\\|E\\(?:ditorCurve\\|xtension\\)\\|F\\(?:il\\(?:eName\\(?:WithoutExtension\\)?\\|tered\\)\\|loat\\(?:Value\\)?\\|riend\\(?:Count\\|Name\\|PlayerId\\|State\\)\\)\\|G\\(?:PUProjectionMatrix\\|enericData\\|roundHit\\)\\|H\\(?:andleSize\\|eights?\\)\\|I\\(?:gnoreLayerCollision\\|n\\(?:foString\\|s\\(?:pectorTitle\\|tanceID\\)\\|t\\(?:erpolated\\(?:Height\\|Normal\\)\\)?\\)\\|terator\\)\\|JoystickNames\\|Key\\(?:Down\\|Up\\)?\\|La\\(?:bels\\|st\\(?:Ping\\|Rect\\)\\)\\|M\\(?:atrix\\|ouseButton\\(?:Down\\|Up\\)?\\)\\|Na\\(?:meOfFocusedControl\\|tiveTextureID\\)\\|O\\(?:bjectEnabled\\|utputData\\)\\|P\\(?:ixel\\(?:Bilinear\\|s\\)?\\|la\\(?:tformTextureSettings\\|yerGamerPicture\\)\\|o\\(?:int\\(?:Velocity\\)?\\|s\\(?:ition\\|tprocessOrder\\)\\)\\|refab\\(?:Parent\\|Type\\)\\)\\|R\\(?:e\\(?:ct\\|lativePointVelocity\\)\\|o\\(?:tation\\|w\\)\\)\\|S\\(?:aveGame\\(?:Count\\|Desc\\)\\|creenRect\\|ide\\|p\\(?:aceReqForPlayerPrefs\\|ectrumData\\)\\|t\\(?:ateObject\\|eepness\\|r\\(?:eamProgressForLevel\\|ing\\)\\|yle\\)\\|upportedLayers\\)\\|T\\(?:ag\\|e\\(?:mporary\\|xture\\(?:Offset\\|Scale\\)?\\)\\|o\\(?:tal\\(?:\\(?:Online\\|SignedIn\\)Users\\)\\|uch\\)\\|r\\(?:\\(?:ansform\\|iangle\\)s\\)\\|ypeForControl\\)\\|U\\(?:n\\(?:iqueTempPathInProject\\|lockTime\\)\\|ser\\(?:GamerPicture\\|LocalPlayerId\\|Name\\|OnlinePlayerId\\|PrivilegeLevel\\|StorageStatus\\)\\)\\|Vector\\|Window\\(?:WithRect\\)?\\)\\)\\|izmo\\(?:Type\\|s\\)\\|ood\\|r\\(?:a\\(?:phics\\|ss\\(?:Billboard\\)?\\)\\|e\\(?:ater\\|ek\\)\\)\\)\\|H\\(?:FReference\\|SVToRGB\\|a\\(?:llway\\|mming\\|n\\(?:dle\\(?:Utility\\|s\\)\\|gar\\|ning\\)\\|rd\\|s\\(?:AspectRatio\\|Character\\|HelpForObject\\|Key\\|ObjectThumbnail\\|Pr\\(?:eviewGUI\\|operty\\)\\|Voice\\|h\\(?:table\\)?\\)\\|vePublicAddress\\)\\|ddTitle\\|e\\(?:brew\\|ight\\|lp\\)\\|i\\(?:d\\(?:den\\(?:ByDefault\\)?\\|e\\(?:AndDontSave\\|Flags\\|In\\(?:Hierarchy\\|Inspector\\)\\)\\)\\|gh\\|\\(?:ngeJoin\\|tTes\\)t\\)\\|o\\(?:me\\|rizontal\\(?:Billboard\\|S\\(?:\\(?:crollba\\|lide\\)r\\)\\)\\|st\\(?:Data\\|ListReceived\\)\\)\\|ugarian\\)\\|I\\(?:Disposable\\|PhonePlayer\\|celandic\\|d\\|gnore\\(?:\\(?:Layer\\)?Collision\\)?\\|m\\(?:age\\(?:Above\\|Left\\|Only\\|Position\\)?\\|p\\(?:ort\\(?:Asset\\(?:Options\\)?\\|Recursive\\)?\\|ulse\\)\\)\\|n\\(?:AnimationMode\\|Nodes\\|OriginalRoots\\|Root\\|c\\(?:orrectParameters\\|reaseLevel\\)\\|donesian\\|f\\(?:inity\\|ormational\\)\\|itializ\\(?:eSe\\(?:curity\\|rver\\)\\|ing\\)\\|put\\|s\\(?:ert\\|pector\\(?:Titlebar\\)?\\|tan\\(?:ceIDToObject\\|tiate\\(?:Prefab\\)?\\)\\)\\|t\\(?:Field\\|Popup\\|Slider\\|e\\(?:ger\\|r\\(?:activeCloth\\|nalDirectConnectFailed\\|polate\\|sect\\(?:Ray\\|s\\)\\)\\)\\)\\|v\\(?:alid\\(?:Password\\|ateState\\)?\\|erse\\(?:Lerp\\|Transform\\(?:Direction\\|Point\\)\\)?\\|oke\\(?:Repeating\\)?\\)\\)\\|s\\(?:C\\(?:hildOf\\|reat\\(?:ed\\|or\\)\\)\\|Enumerated\\|F\\(?:ormatSupported\\|ull\\(?:Friend\\|TitleLicense\\)\\)\\|Invoking\\|MainAsset\\|Online\\(?:And\\(?:\\(?:Awa\\|Bus\\)y\\)\\)?\\|P\\(?:ersistent\\|lay\\(?:erPrefsActive\\|ing\\)\\|owerOfTwo\\)\\|Request\\(?:Received\\|Sent\\)\\|S\\(?:leeping\\|\\(?:torage\\|ystem\\)UIVisible\\)\\|U\\(?:nlocked\\|serSignedIn\\)\\)\\|tali\\(?:an\\|c\\)\\)\\|J\\(?:apanese\\|o\\(?:in\\(?:t\\(?:Drive\\(?:Mode\\)?\\|Limits\\|Motor\\|ProjectionMode\\|Spring\\)?\\)?\\|ystick\\(?:1Button\\(?:1[0-9]\\|[0-9]\\)\\|2Button\\(?:1[0-9]\\|[0-9]\\)\\|3Button\\(?:1[0-9]\\|[0-9]\\)\\|Button\\(?:1[0-9]\\|[0-9]\\)\\)\\)\\)\\|K\\(?:aiserFilter\\|ey\\(?:Code\\|Down\\|Up\\|board\\(?:Event\\)?\\|frame\\(?:Reduction\\(?:AndCompression\\)?\\)?\\|pad\\(?:Divide\\|E\\(?:nter\\|quals\\)\\|M\\(?:inus\\|ultiply\\)\\|P\\(?:eriod\\|lus\\)\\|[0-9]\\)\\)\\|orean\\)\\|L\\(?:FReference\\|INES\\|a\\(?:bel\\(?:Field\\)?\\|ndscape\\(?:\\(?:Lef\\|Righ\\)t\\)?\\|t\\(?:eUpdate\\|vian\\)\\|y\\(?:er\\(?:Field\\|Mask\\|ToName\\)\\|out\\)\\)\\|e\\(?:ft\\(?:A\\(?:lt\\|pple\\|rrow\\)\\|Bracket\\|Control\\|Paren\\|Shift\\|Windows\\)?\\|n\\(?:gth\\|sFlare\\)\\|rp\\(?:Angle\\)?\\|ss\\)\\|i\\(?:ght\\(?:Antialiasing\\|RenderMode\\|Shadows\\|Type\\|map\\(?:BakeQuality\\|Data\\|EditorSettings\\|Resolution\\|Settings\\|ping\\|sMode\\)?\\)?\\|mited\\(?:NATPunchthrough\\(?:PortRestricted\\|Symmetric\\)\\)?\\|n\\(?:e\\(?:Renderer\\|ar\\|cast\\)\\|k\\)\\|thuanian\\|vingroom\\)\\|o\\(?:ad\\(?:A\\(?:ll\\(?:AssetsAtPath\\)?\\|s\\(?:setAtPath\\|ync\\)\\)\\|I\\(?:dentity\\|mage\\(?:IntoTexture\\)?\\)\\|Level\\(?:A\\(?:dditive\\(?:Async\\)?\\|sync\\)\\)?\\|MainAssetAtPath\\|Ortho\\|P\\(?:\\(?:ixel\\|rojection\\)Matrix\\)\\|Required\\|UnityWeb\\)?\\|c\\(?:ation\\(?:Info\\|ServiceStatus\\)\\|k\\(?:ReloadAssemblies\\|ed\\)\\)\\|g\\(?:10\\|Callback\\|Error\\|Type\\|Warning\\|arithmic\\)\\|o\\(?:k\\(?:At\\|Like\\(?:Controls\\|Inspector\\)\\|Rotation\\)\\|p\\)\\|stConnection\\|wer\\(?:Center\\|\\(?:Lef\\|Righ\\)t\\)\\|[gw]\\)\\)\\|M\\(?:a\\(?:sterServer\\(?:Event\\)?\\|t\\(?:erial\\(?:PropertyBlock\\)?\\|hf\\|rix4x4\\)\\|x\\(?:Height\\|Width\\|imum\\)?\\)\\|e\\(?:dium\\|nu\\(?:Command\\|Item\\)?\\|sh\\(?:Collider\\|Filter\\|Renderer\\|Utility\\)?\\)\\|i\\(?:ddle\\(?:Center\\|\\(?:Lef\\|Righ\\)t\\)\\|n\\(?:Height\\|Max\\(?:Rect\\|Slider\\)\\|Width\\|im\\(?:al\\|um\\)\\|us\\)?\\|ssingPrefabInstance\\)\\|o\\(?:de\\(?:5point1\\|7point1\\|l\\(?:Importer\\(?:AnimationCompression\\|ClipAnimation\\|Generate\\(?:\\(?:Animation\\|Material\\)s\\)\\|MeshCompression\\|TangentSpaceMode\\)?\\|Prefab\\(?:Instance\\)?\\)\\)\\|no\\(?:Behaviour\\|Script\\)?\\|u\\(?:ntains\\|se\\(?:Cursor\\|D\\(?:own\\|rag\\)\\|Move\\|Up\\|[0-6]\\)\\)\\|v\\(?:e\\(?:A\\(?:rrow\\|sset\\(?:ToTrash\\)?\\)\\|FileOrDirectory\\|Key\\|Position\\|Rotation\\|Towards\\(?:Angle\\)?\\|d\\)?\\|ie\\(?:Importer\\|Texture\\)\\)\\)\\|ult\\(?:Matrix\\|i\\(?:TexCoord[23]?\\|pl\\(?:ayerSessions\\|y\\(?:Point\\(?:3x4\\)?\\|Vector\\)?\\)\\)\\)\\)\\|N\\(?:AT\\(?:Target\\(?:ConnectionLost\\|NotConnected\\)\\|punchthrough\\(?:\\(?:AddressRestricted\\|Full\\)Cone\\)\\)\\|a\\(?:me\\(?:PhonePad\\|ToLayer\\)\\|tive\\)\\|e\\(?:gative\\(?:Infinity\\|[XYZ]\\)\\|twork\\(?:ConnectionError\\|Disconnection\\|LogLevel\\|MessageInfo\\|P\\(?:eerType\\|layer\\)\\|StateSynchronization\\|View\\(?:ID\\)?\\)?\\|wScene\\|xt\\(?:PowerOfTwo\\|Visible\\)?\\)\\|ic\\(?:eSpheremap\\|ifyVariableName\\)\\|o\\(?:Antialiasing\\|Error\\|n\\(?:Serialized\\|e\\)\\|r\\(?:mal\\(?:ize\\)?\\|wegian\\)\\|t\\(?:Editable\\|Reachable\\|Selected\\|hing\\)\\)\\|um\\(?:ber\\(?:Pad\\|sAndPunctuation\\)\\|lock\\)\\)\\|O\\(?:SX\\(?:\\(?:DashboardPlaye\\|Edito\\|\\(?:Web\\)?Playe\\)r\\)\\|bject\\(?:Content\\|Field\\|Names\\|Reference\\)?\\|cclusionArea\\|ff\\|n\\(?:A\\(?:chievementsEnumerated\\|pplication\\(?:Focus\\|Pause\\|Quit\\)\\|ssignMaterialModel\\)\\|Became\\(?:\\(?:Inv\\|V\\)isible\\)\\|Co\\(?:llision\\(?:E\\(?:nter\\|xit\\)\\|Stay\\)\\|n\\(?:nectedToServer\\|troller\\(?:ColliderHit\\|StateChange\\)\\)\\)\\|D\\(?:estroy\\|is\\(?:able\\|connectedFromServer\\)\\|rawGizmos\\(?:Selected\\)?\\)\\|Enable\\|F\\(?:ailedToConnect\\(?:ToMasterServer\\)?\\|ocus\\|riendsUpdated\\)\\|GUI\\|HierarchyChange\\|Inspector\\(?:GUI\\|Update\\)\\|JointBreak\\|L\\(?:evelWasLoaded\\|ostFocus\\)\\|M\\(?:asterServerEvent\\|ouse\\(?:D\\(?:own\\|rag\\)\\|E\\(?:nter\\|xit\\)\\|Over\\|Up\\)\\)\\|NetworkInstantiate\\|P\\(?:articleCollision\\|layer\\(?:\\(?:C\\|Disc\\)onnected\\)\\|ost\\(?:Render\\|process\\(?:A\\(?:llAssets\\|udio\\)\\|GameObjectWithUserProperties\\|Model\\|Texture\\)\\)\\|r\\(?:e\\(?:Cull\\|Render\\|process\\(?:Audio\\|Model\\|Texture\\)\\|view\\(?:GUI\\|Settings\\)\\)\\|ojectChange\\)\\)\\|Render\\(?:Image\\|Object\\)\\|S\\(?:ceneGUI\\|e\\(?:lectionChange\\|r\\(?:ializeNetworkView\\|verInitialized\\)\\)\\|torageDeviceListChanged\\|ystemUIVisibilityChange\\)\\|T\\(?:itleLicenseChanged\\|rigger\\(?:E\\(?:nter\\|xit\\)\\|Stay\\)\\)\\|User\\(?:AchievementsUpdated\\|S\\(?:aveGameContentUpdated\\|tateChange\\)\\)\\|Wi\\(?:ll\\(?:ModifyAssets\\|RenderObject\\|SaveAssets\\)\\|zard\\(?:Create\\|OtherButton\\|Update\\)\\)\\|ce\\)\\|p\\(?:en\\(?:Asset\\|F\\(?:\\(?:ile\\|older\\)Panel\\)\\|Project\\|Scene\\(?:Additive\\)?\\|URL\\)?\\|timize\\)\\|rtho\\(?:Normalize\\)?\\|thers\\(?:Buffered\\)?\\|ver\\(?:flow\\|lapSphere\\)\\)\\|P\\(?:CHosted\\|I\\|S3\\(?:TargetMedia\\)?\\|VRTC_RGB\\(?:A[24]\\|[24]\\)\\|a\\(?:ckTextures\\|ddedCell\\|ge\\(?:Down\\|Up\\)\\|r\\(?:kingLot\\|ticle\\(?:Animator\\|Emitter\\|Render\\(?:Mode\\|er\\)\\)?\\)\\|ss\\(?:ive\\|wordField\\)\\|th\\|use\\)\\|er\\(?:SourceMaterial\\|Texture\\|form\\(?:\\(?:Re\\|Un\\)do\\)\\|iod\\|spective\\)\\|h\\(?:onePad\\|ysic\\(?:Material\\(?:Combine\\)?\\|s\\)\\)\\|i\\(?:c\\(?:k\\(?:GameObject\\|RectObjects\\|able\\)\\|ture\\)\\|ng\\(?:Object\\|Pong\\)?\\)\\|l\\(?:a\\(?:in\\|ne\\|y\\(?:ClipAtPoint\\|Mo\\(?:de\\|vie\\(?:URL\\)?\\)\\|Now\\|OneShot\\|Queued\\|er\\(?:Prefs\\(?:Exception\\)?\\|Settings\\)\\)?\\)\\|us\\)\\|o\\(?:int\\(?:OnLineParameter\\)?\\|l\\(?:ish\\|lHostList\\)\\|p\\(?:AssetDependencies\\|Camera\\|Matrix\\|up\\)\\|rt\\(?:rait\\(?:UpsideDown\\)?\\|uguese\\)\\|siti\\(?:on\\(?:And\\(?:Rotation\\|Velocity\\)\\|Handle\\|Only\\)?\\|ve[XYZ]\\)\\|[pw]\\)\\|r\\(?:e\\(?:f\\(?:ab\\(?:\\(?:Instanc\\|Typ\\)e\\)?\\|etchSocketPolicy\\|ixLabel\\)\\|pareStartDrag\\|view\\)\\|i\\(?:mitiveType\\|nt\\)\\|o\\(?:duction\\|filer\\|gressBar\\|ject\\(?:PointLine\\|or\\)?\\|logic\\|perty\\(?:Field\\|ToID\\)\\)\\)\\|sychotic\\|u\\(?:blicIP\\(?:IsConnectable\\|\\(?:NoServerStart\\|PortBlock\\)ed\\)\\|sh\\(?:AssetDependencies\\|Camera\\|Matrix\\)?\\)\\)\\|Q\\(?:UADS\\|u\\(?:a\\(?:d\\|lity\\(?:Level\\|Settings\\)\\|rry\\|ternion\\)\\|e\\(?:ryStateObject\\|stion\\|ue\\(?:GameViewInputEvent\\|Mode\\)\\)\\|it\\|ote\\)\\)\\|R\\(?:GB\\(?:16\\|24\\|565\\|A32\\|ToHSV\\)\\|PC\\(?:Mode\\)?\\|SAPublicKeyMismatch\\|a\\(?:d\\(?:2Deg\\|iusHandle\\)\\|n\\(?:dom\\|ge\\)\\|y\\(?:Snap\\|cast\\(?:All\\|Hit\\)?\\)\\|[wy]\\)\\|e\\(?:a\\(?:chableVia\\(?:\\(?:CarrierData\\|WiFi\\)Network\\)\\|d\\(?:\\(?:P\\(?:ixel\\|layerPref\\)\\|TextureSetting\\)s\\)\\)\\|c\\(?:alculate\\(?:\\(?:Bound\\|Normal\\)s\\)\\|onnectToLastPrefab\\|t\\(?:Field\\|Offset\\|ang\\(?:leCap\\|ular\\)\\)?\\)\\|enumerateSaveGames\\|f\\(?:lect\\(?:ion\\)?\\|resh\\(?:Prototypes\\)?\\)\\|gist\\(?:er\\(?:C\\(?:\\(?:ompleteAsse\\|reatedObjec\\)tUndo\\)\\|Host\\|LogCallback\\(?:Threaded\\)?\\|S\\(?:ceneUndo\\|napshot\\)\\|Undo\\)\\|ration\\(?:Failed\\(?:Game\\(?:\\(?:Nam\\|Typ\\)e\\)\\|NoServer\\)\\|Succeeded\\)\\)\\|l\\(?:ease\\(?:Temporary\\)?\\|iableDeltaCompressed\\)\\|move\\(?:At\\|Clip\\|Key\\|Notification\\|RPCs\\(?:InGroup\\)?\\)?\\|n\\(?:ameAsset\\|der\\(?:GameViewCameras\\|Paths\\|Settings\\|T\\(?:exture\\(?:Format\\)?\\|oCubemap\\)\\|WithShader\\|er\\|ingPath\\)?\\)\\|p\\(?:aint\\|eat\\(?:Button\\)?\\|lace\\(?:Directory\\|File\\|NameBased\\|Prefab\\(?:Options\\)?\\)\\)\\|qu\\(?:est\\(?:HostList\\|SignIn\\)\\|ire\\(?:Component\\|Receiver\\)\\)\\|s\\(?:et\\(?:Aspect\\|GameObjectToPrefabState\\|InputAxes\\|ProjectionMatrix\\|ReplacementShader\\|ToPrefabState\\|WorldToCameraMatrix\\)?\\|ize\\(?:Horizontal\\|Up\\(?:\\(?:Lef\\|Righ\\)t\\)\\|Vertical\\)?\\|o\\(?:lution\\(?:DialogSetting\\)?\\|urces\\)\\|toreSnapshot\\)\\|turn\\|verse\\|wind\\)\\|ig\\(?:ht\\(?:A\\(?:lt\\|pple\\|rrow\\)\\|Bracket\\|Control\\|Paren\\|Shift\\|Windows\\)?\\|idbody\\(?:Constraints\\|Interpolation\\)?\\)\\|o\\(?:manian\\|om\\|tat\\(?:e\\(?:Ar\\(?:ound\\(?:Pivot\\)?\\|row\\)\\|Towards\\)?\\|ion\\(?:\\(?:DriveMod\\|Handl\\)e\\)\\)\\|und\\(?:ToInt\\)?\\)\\|u\\(?:n\\(?:ning\\|timePlatform\\)\\|ssian\\)\\)\\|S\\(?:a\\(?:m\\(?:eSide\\|ple\\(?:Animation\\|Height\\)?\\)\\|ve\\(?:Assets\\(?:Processor\\)?\\|CurrentSceneIfUserWantsTo\\|F\\(?:ilePanel\\(?:InProject\\)?\\|olderPanel\\)\\|Scene\\)\\)\\|c\\(?:ale\\(?:A\\(?:ndCrop\\|r\\(?:oundPivot\\|row\\)\\)\\|Handle\\|Mode\\|Slider\\|ToFit\\|ValueHandle\\)?\\|ene\\|r\\(?:een\\(?:PointToRay\\|To\\(?:\\(?:GUI\\|Viewport\\|World\\)Point\\)\\)?\\|iptable\\(?:Object\\|Wizard\\)\\|oll\\(?:Lock\\|To\\|Wheel\\)\\)\\)\\|e\\(?:curity\\|l\\(?:ect\\(?:SaveGameStorageDeviceForUser\\|ed\\(?:OrChild\\)?\\|ion\\(?:Grid\\|Mode\\)?\\)\\|f\\)\\|micolon\\|nd\\(?:Event\\|Message\\(?:\\(?:Option\\|Upward\\)s\\)?\\)\\|r\\(?:boCroatian\\|ializ\\(?:able\\|e\\(?:Field\\|d\\(?:Object\\|Property\\(?:Type\\)?\\)\\)?\\)\\|ver\\)\\|t\\(?:A\\(?:ctiveRecursively\\|lphamaps\\|nimation\\(?:\\(?:Clip\\|Event\\)s\\)\\|spectRatio\\)\\|B\\(?:ool\\|uildLocation\\)\\|C\\(?:amera\\|o\\(?:l\\(?:ors?\\|umn\\)\\|ntrollerVibration\\)\\|urve\\)\\|D\\(?:e\\(?:faults\\|nsity\\|tail\\(?:Layer\\|Resolution\\)\\)\\|irty\\)\\|E\\(?:ditorCurve\\|nabledFading\\)\\|F\\(?:loat\\|romToRotation\\)\\|G\\(?:enericData\\|lobal\\(?:Color\\|Float\\|Matrix\\|ShaderProperty\\|Texture\\|Vector\\)\\)\\|Heights\\|Int\\|L\\(?:abels\\|evelPrefix\\|ookRotation\\)\\|M\\(?:\\(?:atri\\|inMa\\)x\\)\\|N\\(?:ameSmart\\|e\\(?:ighbors\\|xtControlName\\)\\)\\|ObjectEnabled\\|P\\(?:ass\\|erTriangleUV2\\|ixels?\\|latformTextureSettings\\|osition\\)\\|R\\(?:e\\(?:ceivingEnabled\\|placementShader\\|solution\\|vertBackfacing\\)\\|ow\\)\\|S\\(?:cope\\|e\\(?:lectedWireframeHidden\\|ndingEnabled\\)\\|napshotTarget\\|tring\\)\\|T\\(?:RS\\|exture\\(?:Offset\\|S\\(?:cale\\|ettings\\)\\)?\\|riangles\\)\\|User\\(?:Float\\|Integer\\|Long\\(?:Float\\|Integer\\)\\|State\\)\\|Ve\\(?:ctor\\|rtexCount\\)\\|Width\\)\\|werPipe\\)\\|h\\(?:ader\\|ift\\|ow\\(?:AuxWindow\\|BuiltPlayer\\|FriendsUI\\|GamerCard\\|Help\\(?:ForObject\\|Page\\)\\|Notification\\|Popup\\|Tab\\|U\\(?:I\\|nachieved\\|tility\\)\\)?\\)\\|i\\(?:des\\|gn\\|m\\(?:ple\\(?:Move\\|Spheremap\\)?\\|ulate\\)\\|n\\(?:gle\\)?\\)\\|k\\(?:in\\(?:Quality\\|ned\\(?:Cloth\\|MeshRenderer\\)\\)\\|ybox\\)\\|l\\(?:ash\\|e\\(?:[er]p\\)\\|ide\\(?:Arrow\\|r\\(?:2D\\)?\\)\\|ov\\(?:ak\\|enian\\)\\)\\|mooth\\(?:Damp\\(?:Angle\\)?\\|Step\\|Tangents\\)\\|napValue\\|o\\(?:bel\\|ft\\(?:JointLimit\\)?\\|lidColor\\|rt\\(?:edBillboard\\)?\\)\\|pace\\)\\|[A-S]\\)\\>" . font-lock-variable-name-face)
    '("\\<\\(\\(?:S\\(?:p\\(?:anish\\|here\\(?:C\\(?:a\\(?:p\\|st\\(?:All\\)?\\)\\|ollider\\)\\|map\\)?\\|latPrototype\\|\\(?:o\\|ringJoin\\)t\\)\\|qr\\(?:Distance\\|t\\)\\|t\\(?:a\\(?:nda\\(?:lone\\(?:OSX\\(?:Intel\\|PPC\\|Universal\\)\\|Windows\\)\\|rd\\)\\|rt\\(?:A\\(?:nimationMode\\|ssetEditing\\)\\|Coroutine\\|Drag\\|LocationServiceUpdates\\)?\\|ti\\(?:c\\(?:BatchingUtility\\|OcclusionCulling\\(?:Quality\\|Visualization\\)?\\)\\|onary\\)\\)\\|e\\(?:p\\|reo\\)\\|o\\(?:ne\\(?:Corridor\\|room\\)\\|p\\(?:A\\(?:ll\\(?:Coroutines\\)?\\|nimationMode\\|ssetEditing\\)\\|Coroutine\\|LocationServiceUpdates\\|SameLayer\\|ped\\)?\\)\\|r\\(?:e\\(?:amFromDisc\\|tch\\(?:ToFill\\)?\\)\\|\\(?:ongAntialias\\)?ing\\)\\)\\|u\\(?:pportsRenderTextureFormat\\|rround\\)\\|w\\(?:e\\(?:dish\\|epTest\\(?:All\\)?\\)\\|itchActiveBuildTarget\\)\\|y\\(?:ncLayer\\|s\\(?:Req\\|tem\\(?:Info\\|Language\\)\\)\\)\\)\\|T\\(?:R\\(?:IANGLE\\(?:S\\|_STRIP\\)\\|S\\)\\|a\\(?:gField\\|[bn]\\)\\|e\\(?:rrain\\(?:Collider\\|Data\\)?\\|st\\(?:Connection\\(?:NAT\\)?\\|PlanesAABB\\)\\|x\\(?:Coord[23]?\\|t\\(?:A\\(?:lignment\\|nchor\\|rea\\|sset\\)\\|Clipping\\|Field\\|Mesh\\|Only\\|ure\\(?:2D\\|Format\\|Importer\\(?:Format\\|GenerateCubemap\\|MipFilter\\|N\\(?:POTScale\\|ormalFilter\\)\\|Settings\\|Type\\)?\\|WrapMode\\|d\\(?:Wire\\)?\\)?\\)?\\)\\)\\|h\\(?:ai\\|readPriority\\)\\|ime\\|o\\(?:AngleAxis\\|Larger\\|Nearest\\|S\\(?:maller\\|tring\\)\\|ggle\\|o\\(?:ManyConnectedPlayers\\|lbar\\)\\|pLevel\\|uch\\(?:Phase\\)?\\)\\|r\\(?:a\\(?:ckedReference\\|ilRenderer\\|ns\\(?:form\\(?:Direction\\|Point\\)?\\|late\\)\\)\\|ee\\(?:\\(?:Instanc\\|Prototyp\\)e\\)?\\|i\\(?:angle\\|linear\\)\\|ueTypeFontImporter\\|yFastReimportFromMetaData\\)\\|urkish\\|ype\\)\\|U\\(?:RL\\|krainian\\|n\\(?:EscapeURL\\|achieved\\|d\\(?:e\\(?:r\\(?:score\\|water\\)\\|termined\\)\\|o\\)\\|f\\(?:iltered\\|ocusWindow\\)\\|icode\\|known\\|lo\\(?:ad\\(?:UnusedAssets\\(?:IgnoreManagedReferences\\)?\\)?\\|ckReloadAssemblies\\)\\|mount\\|re\\(?:gisterHost\\|liable\\)\\|shift\\|wrap\\(?:Param\\|ping\\)\\)\\|p\\(?:Arrow\\|date\\|per\\(?:Center\\|\\(?:Lef\\|Righ\\)t\\)\\)\\|se\\(?:LastUploadedPrefabRoot\\|PlayerSettings\\|rAwardGamerPicture\\|[dr]\\)?\\)\\|V\\(?:alidate\\(?:Command\\|MoveAsset\\)\\|e\\(?:ctor\\(?:[234]Field\\|[234]\\)\\|locity\\(?:Change\\)?\\|rt\\(?:ex\\(?:3\\|Lit\\)?\\|ical\\(?:Billboard\\|S\\(?:\\(?:crollba\\|lide\\)r\\)\\)\\)\\)\\|i\\(?:brate\\|e\\(?:tnamese\\|wport\\(?:PointToRay\\|To\\(?:\\(?:Screen\\|World\\)Point\\)\\)?\\)\\)\\)\\|W\\(?:WW\\(?:Form\\)?\\|a\\(?:itFor\\(?:EndOfFrame\\|FixedUpdate\\|Seconds\\)\\|keUp\\|rning\\)\\|ebPlayer\\(?:OfflineDeployment\\|Streamed\\)?\\|heel\\(?:Collider\\|FrictionCurve\\|Hit\\)\\|i\\(?:dth\\|i\\(?:Player\\)?\\|ndow\\(?:s\\(?:\\(?:Edito\\|\\(?:Web\\)?Playe\\)r\\)\\)?\\|reframe\\)\\|orld\\(?:\\(?:PointToSizedRec\\|To\\(?:\\(?:GUI\\|Screen\\|Viewport\\)Poin\\)\\)t\\)?\\|r\\(?:apMode\\|itePlayerPrefs\\)\\)\\|X\\(?:360\\(?:Achievements?\\|Core\\|Friend\\(?:State\\|s\\)\\|Live\\|P\\(?:layer\\(?:Id\\|Privilege\\(?:Level\\|Type\\)\\)\\|resence\\)\\|S\\(?:a\\(?:feArea\\|veGame\\)\\|torage\\)\\|UserStorageStatus\\|VideoPlayer\\)\\|BOX360\\|YAndZ\\)\\|YieldInstruction\\|a\\(?:bsoluteURL\\|c\\(?:celeration\\(?:Event\\(?:Count\\|s\\)\\)?\\|t\\(?:i\\(?:onKey\\|ve\\(?:BuildTarget\\(?:Changed\\)?\\|ControlID\\|GameObject\\|InstanceID\\|Object\\|ScriptCompilationDefines\\|T\\(?:errain\\|ransform\\)\\)?\\)\\|ualRenderingPath\\)\\)\\|ddCollider\\|l\\(?:ignment\\|lCameras\\|phamap\\(?:Height\\|Layers\\|Resolution\\|Width\\)\\|t\\(?:itude\\)?\\|waysDisplayWatermark\\)\\|mbientLight\\|n\\(?:chor\\|g\\(?:le\\(?:Error\\)?\\|ular\\(?:Drag\\|Velocity\\|X\\(?:Drive\\|Motion\\)\\|Y\\(?:Limit\\|Motion\\|ZDrive\\)\\|Z\\(?:Limit\\|Motion\\)\\)\\)\\|i\\(?:mat\\(?:e\\(?:OnlyIfVisible\\|Physics\\)\\|ion\\(?:C\\(?:ompression\\|urveValue\\)\\|PositionError\\|RotationError\\|S\\(?:caleError\\|tate\\)\\|WrapMode\\)?\\)\\|so\\(?:Level\\|tropicFiltering\\)\\)\\|yKey\\(?:Down\\)?\\)\\|o\\(?:Amount\\|Contrast\\|MaxDistance\\)\\|pp\\(?:endProject\\|lication\\(?:\\(?:Contents\\)?Path\\)\\)\\|r\\(?:chitectureFlags\\|ea\\(?:Error\\)?\\)\\|s\\(?:pect\\(?:Ratio\\)?\\|set\\(?:Bundle\\|Importer\\|Path\\)?\\|ymptote\\(?:Slip\\|Value\\)\\)\\|ttach\\(?:edRigidbody\\|ment\\(?:Response\\|TearFactor\\)\\)\\|u\\(?:dio\\(?:Clip\\)?\\|to\\(?:RepaintOnSceneChange\\|destruct\\|rotateTo\\(?:Landscape\\(?:\\(?:Lef\\|Righ\\)t\\)\\|Portrait\\(?:UpsideDown\\)?\\)\\)\\)\\|xis\\)\\|b\\(?:a\\(?:ckground\\(?:Color\\|LoadingPriority\\)?\\|keIK\\|rycentricCoordinate\\|se\\(?:MapResolution\\|mapDistance\\)\\)\\|end\\(?:Factor\\|ingStiffness\\)\\|indposes\\|l\\(?:ack\\|\\(?:endMod\\|u\\)e\\)\\|o\\(?:ld\\(?:Font\\|Label\\)\\|ne\\(?:Index[0-3]\\|\\(?:Weight\\)?s\\)\\|olValue\\|rder\\(?:Mipmap\\)?\\|ttom\\|un\\(?:c\\(?:e\\(?:Boost\\|Combine\\|Intensity\\|Threshold\\|s\\)\\|iness\\)\\|ds\\)\\|x\\)\\|r\\(?:akeTorque\\|eak\\(?:\\(?:Forc\\|Torqu\\)e\\)\\|ightness\\)\\|utton\\|y\\(?:\\(?:passEffect\\|te\\)s\\)\\)\\|c\\(?:a\\(?:mera\\(?:ToWorldMatrix\\|VelocityScale\\)?\\|p\\(?:sLock\\|ture\\(?:Framerate\\|SingleScreen\\)\\)\\|stShadows\\)\\|enter\\(?:OfMass\\)?\\|h\\(?:a\\(?:n\\(?:ged\\|nels\\)\\|racter\\)\\|ildCount\\)\\|l\\(?:ear\\(?:Flags\\)?\\|i\\(?:ckCount\\|p\\(?:Animations\\|ping\\)?\\)\\)\\|o\\(?:efficients\\|l\\(?:li\\(?:der\\|sion\\(?:DetectionMode\\|Flags\\|Response\\|Sphere\\(?:Distance\\|Radius\\)\\)\\)\\|or\\(?:Animation\\|Field\\|Value\\|s\\)?\\)\\|m\\(?:m\\(?:and\\(?:Name\\)?\\|ent\\)\\|p\\(?:\\(?:anyNam\\|ress\\(?:edSiz\\|ionBitrat\\)\\)e\\)\\)\\|n\\(?:figuredInWorldSpace\\|nect\\(?:Profiler\\|ed\\(?:Body\\|Players\\)\\|ion\\(?:Tester\\(?:IP\\|Port\\)\\|s\\)\\)\\|st\\(?:antForce\\|raints\\)\\|t\\(?:acts\\|e\\(?:nt\\(?:Color\\|Offset\\)\\|xt\\)\\|rol\\(?:ler\\)?\\)\\|ve\\(?:rtToNormalmap\\|x\\)\\)\\|okie\\|rrectGamma\\)\\|u\\(?:llingMask\\|r\\(?:rent\\(?:Camera\\|Level\\|Resolution\\|Scene\\)?\\|sor\\(?:Color\\|FlashSpeed\\)\\|ve\\)\\|stomStyles\\|toffFrequency\\)\\|yan\\)\\|d\\(?:a\\(?:mp\\(?:er\\|ing\\)\\|ta\\(?:Path\\)?\\)\\|e\\(?:c\\(?:ay\\(?:HFRatio\\|Ratio\\|Time\\)\\|ompressedSize\\)\\|dicatedServer\\|fault\\(?:IsFullScreen\\|Screen\\(?:Height\\|Width\\)\\|WebScreen\\(?:Height\\|Width\\)\\)\\|l\\(?:ay\\|ta\\(?:Position\\|Time\\)?\\)\\|nsity\\|pth\\(?:TextureMode\\)?\\|t\\(?:ail\\(?:Height\\|ObjectD\\(?:ensity\\|istance\\)\\|Prototypes\\|Resolution\\|Width\\)\\|ectCollisions\\)\\|v\\(?:elopment\\|iceOrientation\\)\\)\\|i\\(?:ffusion\\|rection\\|s\\(?:playResolutionDialog\\|t\\(?:ance\\|ortionLevel\\)\\)\\)\\|o\\(?:esAnimateColor\\|ne\\|pplerLevel\\|ubleClickSelectsWord\\)\\|r\\(?:ag\\|iverCaps\\|y\\(?:Color\\|Level\\|Mix\\)\\)\\|uration\\|ynamicFriction2?\\)\\|e\\(?:dit\\(?:able\\|orRenderFlags\\)\\|mit\\(?:terVelocityScale\\)?\\|n\\(?:abled\\|dWidth\\|ergy\\|um\\(?:Names\\|ValueIndex\\)\\)\\|rror\\(?:String\\)?\\|ulerAngles\\|xt\\(?:e\\(?:nts\\|rnal\\(?:Acceleration\\|IP\\|Port\\)\\)\\|remum\\(?:Slip\\|Value\\)\\)\\)\\|f\\(?:a\\(?:deout\\|rClipPlane\\)\\|eedback\\|i\\(?:eldOfView\\|lterMode\\|n\\(?:alGather\\(?:ContrastThreshold\\|GradientThreshold\\|\\(?:InterpolationPoint\\|Ray\\)s\\)\\|gerId\\)\\|rst\\(?:Frame\\|StreamedLevelWithResources\\)\\|xed\\(?:DeltaTime\\|Height\\|Time\\|Width\\)\\)\\|l\\(?:are\\(?:Strength\\)?\\|oat\\(?:Parameter\\|Value\\)\\)\\|o\\(?:cused\\(?:Window\\)?\\|g\\(?:Color\\|Density\\|\\(?:EndDistanc\\|Mod\\|StartDistanc\\)e\\)?\\|ldout\\(?:PreDrop\\)?\\|nt\\(?:Names\\|\\(?:RenderMod\\|S\\(?:iz\\|tyl\\)\\|T\\(?:TFNam\\|extureCas\\)\\)e\\)?\\|r\\(?:ce\\(?:ToMono\\)?\\|mat\\|ward\\(?:Dir\\|Friction\\|Slip\\)?\\)\\)\\|r\\(?:ame\\(?:Count\\|Rate\\)\\|e\\(?:e\\(?:\\(?:Spi\\|zeRotatio\\)n\\)\\|quency\\)\\|iction\\(?:Combine\\|Direction2\\)?\\)\\|u\\(?:llScreen\\|nction\\(?:Key\\|Name\\)\\)\\)\\|g\\(?:ame\\(?:Name\\|Objects?\\|Type\\)\\|enerat\\(?:e\\(?:Animations\\|Cubemap\\|Materials\\|SecondaryUV\\)\\|ion\\)\\|lobal\\(?:MaximumLOD\\|Scale\\)\\|r\\(?:a\\(?:phics\\(?:Device\\(?:ID\\|Name\\|Ve\\(?:ndor\\(?:ID\\)?\\|rsion\\)\\)\\|MemorySize\\|PixelFillrate\\|ShaderLevel\\)\\|vity\\|y\\(?:scale\\(?:ToAlpha\\)?\\)?\\)\\|e\\(?:en\\|y\\)\\|oup\\)\\|ui\\(?:Text\\(?:ure\\)?\\|d\\)\\)\\|h\\(?:a\\(?:loStrength\\|rd\\(?:\\(?:Angl\\|war\\)e\\)\\|s\\(?:\\(?:Visible\\)?Children\\)\\)\\|e\\(?:a\\(?:ders\\|lthyColor\\)\\|ight\\(?:Scale\\|map\\(?:Height\\|MaximumLOD\\|PixelError\\|Resolution\\|Scale\\|Width\\)\\)?\\|lpString\\)\\|fReference\\|i\\(?:de\\(?:Flags\\|Input\\)\\|gh\\(?:AngularXLimit\\|TwistLimit\\|passResonaceQ\\)\\|ngeJoint\\)\\|o\\(?:rizontal\\(?:Accuracy\\|S\\(?:crollbar\\(?:LeftButton\\|RightButton\\|Thumb\\)?\\|lider\\(?:Thumb\\)?\\)\\)?\\|tControl\\|ver\\)\\)\\|i\\(?:P\\(?:ad1Gen\\|hone\\(?:3GS?\\|4\\|BundleIdentifier\\|Generation\\|Input\\|Keyboard\\(?:Type\\)?\\|Movie\\(?:\\(?:Control\\|Scaling\\)Mode\\)\\|NetworkReachability\\|S\\(?:creenOrientation\\|ettings\\)\\|Utils\\)?\\|odTouch\\(?:[1-4]Gen\\)\\)\\|dentity\\|gnoreL\\(?:ayers\\|istenerVolume\\)\\|mage\\(?:Position\\)?\\|n\\(?:Tangent\\|c\\(?:ludeFontData\\|omingPassword\\)\\|dentLevel\\|ertiaTensor\\(?:Rotation\\)?\\|putString\\|s\\(?:ideUnit\\(?:\\(?:Circl\\|Spher\\)e\\)\\|ta\\(?:llInBuildFolder\\|nceIDs\\)\\)\\|t\\(?:Parameter\\|Value\\|e\\(?:nsity\\|r\\(?:netReachability\\|polation\\)\\)\\)\\|verse\\)\\|p\\(?:Address\\)?\\|s\\(?:ApplicationGenuine\\(?:Available\\)?\\|BakeIKSupported\\|C\\(?:lient\\|ompiling\\|ubemap\\)\\|D\\(?:ebugBuild\\|one\\)\\|E\\(?:ditor\\|xpanded\\)\\|Grounded\\|I\\(?:dentity\\|nstantiatedPrefab\\)\\|K\\(?:ey\\|inematic\\)\\|LoadingLevel\\|M\\(?:essageQueueRunning\\|\\(?:in\\|ous\\)e\\)\\|P\\(?:a\\(?:rtOfStaticBatch\\|used\\)\\|laying\\(?:OrWillChangePlaymode\\)?\\|owerOfTwo\\|reviewOcclusionCullingCameraInPVS\\)\\|R\\(?:ead\\(?:able\\|ing\\|yToPlay\\)\\|unning\\)\\|S\\(?:erver\\|tatic\\|upported\\)\\|T\\(?:angentImportSupported\\|eared\\|rigger\\)\\|UseFileUnitsSupported\\|V\\(?:alid\\|isible\\)\\|W\\(?:ebPlayer\\|riting\\)\\)\\)\\|key\\(?:Code\\|aliasPass\\|boardControl\\|s\\(?:torePass\\)?\\)\\|l\\(?:FReference\\|a\\(?:bel\\|rgeLabel\\|st\\(?:Frame\\|\\(?:Loca\\|UsedResolu\\)tion\\)\\|titude\\|yer\\(?:CullDistances\\|MaskField\\)?\\)\\|e\\(?:ft\\|ngth\\(?:Scale\\)?\\|velCount\\)\\|i\\(?:ght\\(?:ing\\|map\\(?:Co\\(?:lor\\|ord\\)\\|Far\\|Index\\|Near\\|TilingOffset\\|s\\(?:Mode\\)?\\)?\\)?\\|mits?\\|ne\\(?:Height\\|Spacing\\|arLimit\\)\\)\\|o\\(?:adedLevel\\(?:Name\\)?\\|c\\(?:a\\(?:l\\(?:EulerAngles\\|Position\\|Rotation\\(?:Axis\\)?\\|Scale\\|ToWorldMatrix\\|Velocity\\)\\|tionService\\(?:EnabledByUser\\|Status\\)\\)\\|k\\(?:Atlas\\|Cursor\\)\\)\\|g\\(?:File\\|Level\\)\\|ngitude\\|op\\|ssyScale\\|w\\(?:AngularXLimit\\|TwistLimit\\|passResonaceQ\\)\\)\\)\\|m\\(?:a\\(?:g\\(?:enta\\|nitude\\)\\|in\\(?:Asset\\|Texture\\(?:Offset\\|Scale\\)?\\)?\\|rgin\\|s\\(?:s\\|terTextureLimit\\)\\|t\\(?:erials?\\|rix\\)\\|x\\(?:A\\(?:ngularVelocity\\|tlas\\(?:Height\\|Width\\)\\)\\|Bounce\\|Connections\\|Distance\\(?:Bias\\)?\\|E\\(?:mission\\|nergy\\)\\|Height\\|ParticleSize\\|QueuedFrames\\|Size\\|TextureSize\\|Width\\|imum\\(?:DeltaTime\\|Force\\|LOD\\)\\)?\\)\\|es\\(?:h\\(?:Compression\\)?\\|sageOptions\\)\\|i\\(?:n\\(?:Bounce\\|Distance\\|E\\(?:mission\\|nergy\\)\\|Height\\|PenetrationForPenalty\\|Size\\|Width\\|i\\(?:B\\(?:old\\(?:Font\\|Label\\)\\|utton\\(?:Left\\|Mid\\|Right\\)?\\)\\|Font\\|Label\\|TextField\\|mumAllocatableViewIDs\\)\\)?\\|p\\(?:MapBias\\|map\\(?:Count\\|Enabled\\|F\\(?:adeDistance\\(?:End\\|Start\\)\\|ilter\\)\\)\\)\\)\\|o\\(?:d\\(?:e\\(?:l\\(?:view\\)?\\)?\\|ifier\\(?:KeysChanged\\|s\\)\\)\\|tor\\(?:Torque\\)?\\|use\\(?:OverWindow\\|Position\\)\\|v\\(?:e\\(?:Direction\\|Length\\)\\|ie\\)\\)\\|u\\(?:ltiTouchEnabled\\|te\\)\\)\\|n\\(?:a\\(?:me\\|tFacilitator\\(?:IP\\|Port\\)\\)\\|e\\(?:arClipPlane\\|tworkView\\)\\|iceMouseDelta\\(?:Zoom\\)?\\|o\\(?:iseSpread\\|ne\\|rmal\\(?:ImportMode\\|SmoothingAngle\\|ized\\(?:Speed\\|Time\\)?\\|map\\(?:Filter\\)?\\|s\\)?\\|tification\\(?:Background\\|Text\\)\\)\\|potScale\\|um\\(?:berField\\|eric\\)\\)\\|o\\(?:b\\(?:ject\\(?:Field\\(?:Thumb\\)?\\|Reference\\(?:Parameter\\|Value\\|s\\)\\|s\\)\\|served\\)\\|ggVorbis\\|n\\(?:Active\\|Focused\\|Hover\\|Normal\\|\\(?:UnitSpher\\)?e\\)\\|perat\\(?:ingSystem\\|or\\)\\|r\\(?:igin\\|thographic\\(?:Size\\)?\\)\\|therCollider\\|ut\\(?:Tangent\\|putSampleRate\\)\\|verflow\\|wner\\)\\|p\\(?:a\\(?:ckMargin\\|dding\\|n\\(?:Level\\)?\\|r\\(?:ent\\|ticle\\(?:Count\\|Emitter\\|RenderMode\\|s\\)\\)\\|ss\\(?:Count\\|wordProtected\\)\\|ths?\\|use\\(?:WhenNotVisible\\)?\\)\\|e\\(?:erType\\|rsistentDataPath\\)\\|hase\\|i\\(?:tch\\|xel\\(?:Height\\|Inset\\|LightCount\\|Offset\\|Rect\\|Width\\)\\)\\|la\\(?:tform\\|y\\(?:Automatically\\|OnAwake\\|er\\(?:Limit\\)?\\|modeStateChanged\\)\\)\\|o\\(?:int\\|pup\\|rt\\|s\\(?:ition\\(?:Damper\\|Spring\\)?\\|tWrapMode\\)\\)\\|r\\(?:e\\(?:WrapMode\\|fab\\(?:Override\\)?\\|ssure\\|viewOcclusionCamera\\)\\|i\\(?:nt\\|ority\\)\\|o\\(?:cessor\\(?:Count\\|Type\\)\\|ductName\\|gress\\|jection\\(?:Angle\\|Distance\\|M\\(?:atrix\\|ode\\)\\)\\|perty\\(?:Name\\|Path\\|Type\\)\\|totype\\(?:Index\\|Texture\\)?\\|xy\\(?:IP\\|P\\(?:assword\\|ort\\)\\)\\)\\)\\|s3\\(?:\\(?:Background\\|DLCConfig\\|Sound\\|T\\(?:humbnail\\|itleConfig\\)\\)Path\\)\\)\\|quality\\|r\\(?:a\\(?:di\\(?:oButton\\|us\\)\\|n\\(?:domAcceleration\\|ge\\)\\|te\\)\\|e\\(?:altimeSinceStartup\\|c\\(?:eiveShadows\\|t\\(?:Value\\)?\\)\\|d\\|f\\(?:lections\\(?:Delay\\|Level\\)?\\|reshRate\\)\\|lative\\(?:Force\\|Torque\\|Velocity\\)\\|nder\\(?:Mode\\|Queue\\|er\\|ingPath\\)\\|solution\\(?:DialogBanner\\|s\\)?\\|verb\\(?:Delay\\|Level\\|Preset\\)?\\)\\|ig\\(?:ht\\|idbody\\)\\|nd\\(?:AngularVelocity\\|Force\\|Rotation\\|Velocity\\)\\|o\\(?:lloffMode\\|o\\(?:m\\(?:HF\\|LF\\|Rolloff\\(?:Factor\\)?\\)\\|[mt]\\)\\|tation\\(?:DriveMode\\)?\\)\\|pm\\|unInBackground\\)\\|s\\(?:amples\\|c\\(?:enes\\|r\\(?:een\\(?:\\(?:CanDarke\\|Orientatio\\)n\\)\\|ollView\\)\\)\\|e\\(?:condary\\(?:Axis\\|UV\\(?:A\\(?:\\(?:ngle\\|rea\\)Distortion\\)\\|HardAngle\\|PackMargin\\)\\)\\|ed\\|l\\(?:ect\\(?:ed\\(?:BuildTargetGroup\\|PS3TargetMedia\\|StandaloneTarget\\)\\|ionColor\\)\\|fCollision\\)\\|nd\\(?:Rate\\|er\\)\\|rializedObject\\|ttings\\)\\|h\\(?:a\\(?:d\\(?:er\\|ow\\(?:Bias\\|Cascades\\|Distance\\|S\\(?:oftness\\(?:Fade\\)?\\|trength\\)\\|s\\)\\)\\|redM\\(?:aterials?\\|esh\\)\\)\\|ift\\|ow\\(?:Cursor\\|GeometryCulling\\|OcclusionCulling\\|PreVisualization\\|\\(?:Target\\|View\\)Volumes\\)\\)\\|i\\(?:deways\\(?:Dir\\|Friction\\|Slip\\)\\|ze\\(?:Grow\\)?\\)\\|k\\(?:in\\|y\\(?:Light\\(?:Color\\|Intensity\\)\\|box\\)\\)\\|l\\(?:e\\(?:ep\\(?:\\(?:Angular\\)?Velocity\\)\\|rpDrive\\)\\|opeLimit\\)\\|mooth\\(?:DeltaTime\\|SphereCollisions\\)\\|o\\(?:ftVegetation\\|lverIterationCount\\)\\|p\\(?:e\\(?:akerMode\\|ed\\)\\|l\\(?:\\(?:atPrototype\\|it\\(?:Animation\\|TangentsAcrossSeam\\)\\)s\\)\\|otAngle\\|r\\(?:ead\\|ing\\)\\)\\|qrMagnitude\\|rcValue\\|t\\(?:a\\(?:ndardFont\\|rt\\(?:Energy\\|Width\\)\\|t\\(?:eSynchronization\\|icFriction2?\\)\\)\\|e\\(?:erAngle\\|pOffset\\)\\|iffness\\|r\\(?:e\\(?:amedBytes\\|tch\\(?:Height\\|Width\\|ingStiffness\\)\\)\\|ing\\(?:Parameter\\|Value\\)?\\|uctHeadingLabel\\)\\|yle\\)\\|u\\(?:bMesh\\(?:Count\\|Index\\)\\|pports\\(?:\\(?:ImageEffect\\|RenderTexture\\|Shadow\\)s\\)\\|spension\\(?:Distance\\|Spring\\)\\)\\|w\\(?:apUVChannels\\|ing\\(?:1Limit\\|2Limit\\|Axis\\)\\)\\|ystem\\(?:CopyBuffer\\|\\(?:Languag\\|MemorySiz\\|Nam\\)e\\)\\)\\|t\\(?:a\\(?:bSize\\|g\\|ngent\\(?:ImportMode\\|s\\)\\|pCount\\|rget\\(?:AngularVelocity\\|FrameRate\\|Object\\|Position\\|Rotation\\|Texture\\|Velocity\\)?\\)\\|e\\(?:arFactor\\|mporaryCachePath\\|rrainData\\|xt\\(?:Area\\|Color\\|Field\\|ure\\(?:Co\\(?:mpression\\|ord2?\\)\\|Format\\|Type\\)?\\)?\\)\\|h\\(?:i\\(?:ckness\\|s\\(?:Collider\\)?\\)\\|re\\(?:adPriority\\|eD\\)\\)\\|i\\(?:le\\(?:Offset\\|Size\\)\\|me\\(?:S\\(?:amples\\|cale\\|ince\\(?:LevelLoad\\|Startup\\)\\)\\|stamp\\)?\\)\\|o\\(?:ggle\\(?:Group\\)?\\|ol\\(?:bar\\(?:Button\\|DropDown\\|Popup\\|TextField\\)?\\|tip\\)\\|p\\|rque\\|uch\\(?:Count\\|es\\)\\)\\|r\\(?:ans\\(?:forms?\\|pose\\)\\|ee\\(?:BillboardDistance\\|CrossFadeLength\\|Distance\\|Instances\\|MaximumFullLODCount\\|Prototypes\\)\\|i\\(?:angle\\(?:Index\\|s\\)\\|pleClickSelectsLine\\)\\)\\|ype\\)\\|u\\(?:n\\(?:assigned\\|i\\(?:queIdentifier\\|tyVersion\\)\\)\\|p\\(?:date\\(?:Rate\\|WhenOffscreen\\)?\\|loadProgress\\)\\|rl\\|se\\(?:2xBehaviour\\|AlphaInDashboard\\|ConeFriction\\|FileUnits\\|G\\(?:UILayout\\|ravity\\)\\|Limits\\|M\\(?:ipMap\\|otor\\)\\|Nat\\|Proxy\\|Spring\\|WorldSpace\\|rData\\)\\|v\\(?:2\\|Animation\\(?:Cycles\\|[XY]Tile\\)\\)\\|[pv]\\)\\|v\\(?:alue\\|e\\(?:ctor\\(?:[23]Value\\)\\|locity\\(?:\\(?:Scal\\|UpdateMod\\)e\\)?\\|rt\\(?:exCount\\|ic\\(?:al\\(?:Accuracy\\|S\\(?:crollbar\\(?:DownButton\\|Thumb\\|UpButton\\)?\\|lider\\(?:Thumb\\)?\\)\\)?\\|es\\)\\)\\)\\|i\\(?:ew\\(?:CellSize\\|ID\\)\\|s\\(?:\\(?:ibl\\|ualMod\\)e\\)\\)\\|olume\\)\\|w\\(?:a\\(?:ntsMouseMove\\|vingGrass\\(?:Amount\\|S\\(?:peed\\|trength\\)\\|Tint\\)\\)\\|e\\(?:b\\(?:Player\\(?:OfflineDeployment\\|Streamed\\)\\|SecurityEnabled\\)\\|ight[0-3]?\\|tMix[123]?\\)\\|hite\\(?:BoldLabel\\|La\\(?:\\(?:rgeLa\\)?bel\\)\\|MiniLabel\\|Texture\\)?\\|i\\(?:dth\\(?:Scale\\)?\\|ndow\\)\\|or\\(?:dWrap\\(?:ped\\(?:\\(?:Mini\\)?Label\\)\\)?\\|ld\\(?:AccelerationScale\\|CenterOfMass\\|RotationAxis\\|To\\(?:\\(?:Camera\\|Local\\)Matrix\\)\\|Velocity\\(?:Scale\\)?\\)\\)\\|rapMode\\)\\|x\\(?:Drive\\|M\\(?:ax\\|\\(?:i\\|otio\\)n\\)\\|box\\(?:ImageXexFilePath\\|SpaFilePath\\|TitleId\\)\\)\\|y\\(?:Drive\\|M\\(?:ax\\|\\(?:i\\|otio\\)n\\)\\|ellow\\)\\|z\\(?:Drive\\|Motion\\|ero\\)\\|[T-Zabgrw-z]\\)?\\)\\>" . font-lock-variable-name-face)
    '("\\<\\(c\\(?:a\\(?:se\\|tch\\)\\|lass\\)\\|else\\|f\\(?:or\\(?:each\\)?\\|unction\\)\\|i\\(?:f\\|mport\\)\\|new\\|p\\(?:rivate\\|ublic\\)\\|return\\|s\\(?:tatic\\|witch\\)\\|try\\|var\\|while\\)\\>" . font-lock-keyword-face))
   "Minimal highlighting expressions for unityjs mode")

(defconst unityjs-font-lock-keywords-2
  (append unityjs-font-lock-keywords-1
		  (list
		   '("\\<\\(Array\\|Date\\|Number\\|Object\\|Regex\\|b\\(?:oolean\\|yte\\)\\|char\\|double\\|float\\|int\\|long\\|s\\(?:hort\\|tring\\)\\|u\\(?:int\\|long\\|short\\)\\|void\\)\\>" . font-lock-type-face)
		   '("\\<\\(true\\|false\\|null\\)\\>" . font-lock-reference-face)))
  "Additional Keywords to highlight in UnityJS mode")

(defvar unityjs-font-lock-keywords unityjs-font-lock-keywords-2
  "Default highlighting expressions for UnityJS mode")


;;;;;;;;;;;;;;;;;
;; INDENTATION ;;
;;;;;;;;;;;;;;;;;

(defcustom js-indent-level 8
  "Number of spaces for each indentation step in `js-mode'."
  :type 'integer
  :group 'js)

(defcustom js-expr-indent-offset 0
  "Number of additional spaces used for indentation of continued expressions.
The value must be no less than minus `js-indent-level'."
  :type 'integer
  :group 'js)


(defun js--regexp-opt-symbol (list)
  "Like `regexp-opt', but surround the result with `\\\\_<' and `\\\\_>'."
  (concat "\\_<" (regexp-opt list t) "\\_>"))


(defcustom js-comment-lineup-func #'c-lineup-C-comments
  "Lineup function for `cc-mode-style', for C comments in `js-mode'."
  :type 'function
  :group 'js)

(defun js--re-search-backward-inner (regexp &optional bound count)
  "Auxiliary function for `js--re-search-backward'."
  (let ((parse)
        str-terminator
        (orig-macro-start
         (save-excursion
           (and (js--beginning-of-macro)
                (point)))))
    (while (> count 0)
      (re-search-backward regexp bound)
      (when (and (> (point) (point-min))
                 (save-excursion (backward-char) (looking-at "/[/*]")))
        (forward-char))
      (setq parse (syntax-ppss))
      (cond ((setq str-terminator (nth 3 parse))
             (when (eq str-terminator t)
               (setq str-terminator ?/))
             (re-search-backward
              (concat "\\([^\\]\\|^\\)" (string str-terminator))
              (save-excursion (beginning-of-line) (point)) t))
            ((nth 7 parse)
             (goto-char (nth 8 parse)))
            ((or (nth 4 parse)
                 (and (eq (char-before) ?/) (eq (char-after) ?*)))
             (re-search-backward "/\\*"))
            ((and (not (and orig-macro-start
                            (>= (point) orig-macro-start)))
                  (js--beginning-of-macro)))
            (t
             (setq count (1- count))))))
  (point))


(defconst js--opt-cpp-start "^\\s-*#\\s-*\\([[:alnum:]]+\\)"
  "Regexp matching the prefix of a cpp directive.
This includes the directive name, or nil in languages without
preprocessor support.  The first submatch surrounds the directive
name.")

(defun js--beginning-of-macro (&optional lim)
  (let ((here (point)))
    (save-restriction
      (if lim (narrow-to-region lim (point-max)))
      (beginning-of-line)
      (while (eq (char-before (1- (point))) ?\\)
        (forward-line -1))
      (back-to-indentation)
      (if (and (<= (point) here)
               (looking-at js--opt-cpp-start))
          t
        (goto-char here)
        nil))))

(defun js--re-search-backward (regexp &optional bound noerror count)
  "Search backward, ignoring strings, preprocessor macros, and comments.

This function invokes `re-search-backward' but treats the buffer
as if strings, preprocessor macros, and comments have been
removed.

If invoked while inside a macro, treat the macro as normal text."
  (let ((saved-point (point))
        (search-expr
         (cond ((null count)
                '(js--re-search-backward-inner regexp bound 1))
               ((< count 0)
                '(js--re-search-forward-inner regexp bound (- count)))
               ((> count 0)
                '(js--re-search-backward-inner regexp bound count)))))
    (condition-case err
        (eval search-expr)
      (search-failed
       (goto-char saved-point)
       (unless noerror
         (error (error-message-string err)))))))


(defconst js--possibly-braceless-keyword-re
  (js--regexp-opt-symbol
   '("catch" "do" "else" "finally" "for" "if" "try" "while" "switch"
     "each"))
  "Regexp matching keywords optionally followed by an opening brace.")

(defconst js--indent-operator-re
  (concat "[-+*/%<>=&^|?:.]\\([^-+*/]\\|$\\)\\|"
          (js--regexp-opt-symbol '("in" "instanceof")))
  "Regexp matching operators that affect indentation of continued expressions.")


(defun js--looking-at-operator-p ()
  "Return non-nil if point is on a JavaScript operator, other than a comma."
  (save-match-data
    (and (looking-at js--indent-operator-re)
         (or (not (looking-at ":"))
             (save-excursion
               (and (js--re-search-backward "[?:{]\\|\\_<case\\_>" nil t)
                    (looking-at "?")))))))


(defun js--continued-expression-p ()
  "Return non-nil if the current line continues an expression."
  (save-excursion
    (back-to-indentation)
    (or (js--looking-at-operator-p)
        (and (js--re-search-backward "\n" nil t)
	     (progn
	       (skip-chars-backward " \t")
	       (or (bobp) (backward-char))
	       (and (> (point) (point-min))
                    (save-excursion (backward-char) (not (looking-at "[/*]/")))
                    (js--looking-at-operator-p)
		    (and (progn (backward-char)
				(not (looking-at "++\\|--\\|/[/*]"))))))))))


(defun js--end-of-do-while-loop-p ()
  "Return non-nil if point is on the \"while\" of a do-while statement.
Otherwise, return nil.  A braceless do-while statement spanning
several lines requires that the start of the loop is indented to
the same column as the current line."
  (interactive)
  (save-excursion
    (save-match-data
      (when (looking-at "\\s-*\\_<while\\_>")
	(if (save-excursion
	      (skip-chars-backward "[ \t\n]*}")
	      (looking-at "[ \t\n]*}"))
	    (save-excursion
	      (backward-list) (forward-symbol -1) (looking-at "\\_<do\\_>"))
	  (js--re-search-backward "\\_<do\\_>" (point-at-bol) t)
	  (or (looking-at "\\_<do\\_>")
	      (let ((saved-indent (current-indentation)))
		(while (and (js--re-search-backward "^\\s-*\\_<" nil t)
			    (/= (current-indentation) saved-indent)))
		(and (looking-at "\\s-*\\_<do\\_>")
		     (not (js--re-search-forward
			   "\\_<while\\_>" (point-at-eol) t))
		     (= (current-indentation) saved-indent)))))))))


(defun js--ctrl-statement-indentation ()
  "Helper function for `js--proper-indentation'.
Return the proper indentation of the current line if it starts
the body of a control statement without braces; otherwise, return
nil."
  (save-excursion
    (back-to-indentation)
    (when (save-excursion
            (and (not (eq (point-at-bol) (point-min)))
                 (not (looking-at "[{]"))
                 (progn
                   (js--re-search-backward "[[:graph:]]" nil t)
                   (or (eobp) (forward-char))
                   (when (= (char-before) ?\)) (backward-list))
                   (skip-syntax-backward " ")
                   (skip-syntax-backward "w_")
                   (looking-at js--possibly-braceless-keyword-re))
                 (not (js--end-of-do-while-loop-p))))
      (save-excursion
        (goto-char (match-beginning 0))
        (+ (current-indentation) js-indent-level)))))

(defun js--get-c-offset (symbol anchor)
  (let ((c-offsets-alist
         (list (cons 'c js-comment-lineup-func))))
    (c-get-syntactic-indentation (list (cons symbol anchor)))))

(defun js--proper-indentation (parse-status)
  "Return the proper indentation for the current line."
  (save-excursion
    (back-to-indentation)
    (cond ((nth 4 parse-status)
           (js--get-c-offset 'c (nth 8 parse-status)))
          ((nth 8 parse-status) 0) ; inside string
          ((js--ctrl-statement-indentation))
          ((eq (char-after) ?#) 0)
          ((save-excursion (js--beginning-of-macro)) 4)
          ((nth 1 parse-status)
           (let ((same-indent-p (looking-at
                                 "[]})]\\|\\_<case\\_>\\|\\_<default\\_>"))
                 (continued-expr-p (js--continued-expression-p)))
             (goto-char (nth 1 parse-status))
             (if (looking-at "[({[]\\s-*\\(/[/*]\\|$\\)")
                 (progn
                   (skip-syntax-backward " ")
		   (when (eq (char-before) ?\)) (backward-list))
                   (back-to-indentation)
                   (cond (same-indent-p
                          (current-column))
                         (continued-expr-p
                          (+ (current-column) (* 2 js-indent-level)
                             js-expr-indent-offset))
                         (t
                          (+ (current-column) js-indent-level))))
               (unless same-indent-p
                 (forward-char)
                 (skip-chars-forward " \t"))
               (current-column))))

          ((js--continued-expression-p)
           (+ js-indent-level js-expr-indent-offset))
          (t 0))))

(defun js-indent-line ()
  "Indent the current line as JavaScript."
  (interactive)
  (save-restriction
    (widen)
    (let* ((parse-status
            (save-excursion (syntax-ppss (point-at-bol))))
           (offset (- (current-column) (current-indentation))))
      (indent-line-to (js--proper-indentation parse-status))
      (when (> offset 0) (forward-char offset)))))

;;;;;;;;;;;;;;;;;;;;;;;
;; INDENTATION ENDS  ;;
;;;;;;;;;;;;;;;;;;;;;;;

;; Syntax table
(defvar unityjs-mode-syntax-table
  (let ((unityjs-mode-syntax-table (make-syntax-table)))
    (modify-syntax-entry ?_ "w" unityjs-mode-syntax-table)
    (modify-syntax-entry ?/ ". 124b" unityjs-mode-syntax-table)
    (modify-syntax-entry ?* ". 23" unityjs-mode-syntax-table)
    (modify-syntax-entry ?\n "> b" unityjs-mode-syntax-table)
    unityjs-mode-syntax-table)
  "Syntax table for unityjs-mode")


(defun unityjs-mode ()
  "Major mode for editing Unity Javascript files"
  (interactive)
  (kill-all-local-variables)
  (set-syntax-table unityjs-mode-syntax-table)
  (use-local-map unityjs-mode-map)
  (set (make-local-variable 'font-lock-defaults) '(unityjs-font-lock-keywords))
  (set (make-local-variable 'indent-line-function) 'js-indent-line)
  (setq major-mode 'unityjs-mode)
  (setq mode-name "unityjs-mode")
  (run-hooks 'unityjs-mode-hook))

(provide 'unityjs-mode)
