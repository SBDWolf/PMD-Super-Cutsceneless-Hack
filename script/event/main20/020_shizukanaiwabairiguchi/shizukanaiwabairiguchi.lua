dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main20_shizukanaiwabairiguchi01_init()
end
function main20_shizukanaiwabairiguchi01_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), 1138131788)
  TASK:Sleep(TimeSec(3))
  SCREEN_A:FadeOutAll(TimeSec(1), true)
  SCREEN_A:FadeOut(TimeSec(0), true)
  WINDOW:EndChapter()
  WINDOW:ForceCloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main20_shizukanaiwabairiguchi01_end()
end
function main20_shizukanaiwabairiguchi02_init()
end
function main20_shizukanaiwabairiguchi02_start()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("HERO"):SetPosition(SymPos("P00_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CH("DEDENNE"):SetPosition(SymPos("P00_DEDENNE"))
  CH("KUCHIITO"):SetPosition(SymPos("P00_KUCHIITO"))
  CH("BUIZERU"):SetPosition(SymPos("P00_BUIZERU"))
  CH("AAKEN"):SetPosition(SymPos("P00_AAKEN"))
  CH("HORUBII"):SetPosition(SymPos("P00_HORUBII"))
  CH("HORUBII"):SetDir(CH("AAKEN"))
  CH("HERO"):SetDir(CH("HORUBII"))
  CH("PARTNER"):SetDir(CH("HORUBII"))
  CH("DEDENNE"):SetDir(RotateTarget(90))
  CH("KUCHIITO"):SetDir(CH("HORUBII"))
  CH("BUIZERU"):SetDir(RotateTarget(-170))
  CH("AAKEN"):SetDir(RotateTarget(160))
  SOUND:PlayBgm(SymSnd("BGM_DUN_19"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CAMERA:MoveToHero(Speed(7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()

  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.7))
  -- CH("PARTNER"):WalkTo(SymPos("P00_PARTNER"), Speed(1.7))
  -- CH("DEDENNE"):WalkTo(SymPos("P00_DEDENNE"), Speed(1.7))
  -- CH("KUCHIITO"):WalkTo(SymPos("P00_KUCHIITO"), Speed(1.7))
  -- CH("BUIZERU"):WalkTo(SymPos("P00_BUIZERU"), Speed(1.7))
  -- CH("AAKEN"):WalkTo(SymPos("P00_AAKEN"), Speed(1.7))
  -- CH("HORUBII"):WalkTo(SymPos("P00_HORUBII"), Speed(1.7))
  -- SOUND:PlayBgm(SymSnd("BGM_DUN_19"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CH("BUIZERU"):WaitMove()
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("BUIZERU"), 1523429901)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- CH("HORUBII"):DirTo(CH("AAKEN"), Speed(500), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):DirTo(CH("HORUBII"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("PARTNER"):DirTo(CH("HORUBII"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("DEDENNE"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  -- CH("KUCHIITO"):DirTo(CH("HORUBII"), Speed(350), ROT_TYPE.NEAR)
  -- CH("BUIZERU"):DirTo(RotateTarget(-170), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("AAKEN"):DirTo(RotateTarget(160), Speed(350), ROT_TYPE.NEAR)
  -- CH("HORUBII"):WaitRotate()
  -- WINDOW:DrawFace(324, 20, SymAct("HORUBII"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("HORUBII"), 1910563278)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 20, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  -- WINDOW:Talk(SymAct("KUCHIITO"), 1761333391)
  -- WINDOW:Talk(SymAct("KUCHIITO"), 666519112)
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveToHero(Speed(7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CAMERA:WaitMove()
end
function main20_shizukanaiwabairiguchi02_end()
end
function groundEnd()
end
