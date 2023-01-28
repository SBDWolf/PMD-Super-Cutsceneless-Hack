dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main22_arasaretamachi01_init()
end
function main22_arasaretamachi01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV1601"))
  MAP:SetVisibleBG(true)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 944593314, PARTNER_1 = 559311075})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(175848224)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 325061217, PARTNER_1 = 1545706662})
  WINDOW:SwitchTalk({PARTNER_0 = 1161473511, PARTNER_1 = 1847066148})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(1997328229)
  WINDOW:Monologue(-258681942)
  WINDOW:Monologue(-376446229)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1465562081, PARTNER_1 = -1312916130})
  WINDOW:SwitchTalk({PARTNER_0 = -1701630307, PARTNER_1 = -2088230948})
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main22_arasaretamachi01_end()
end
function main22_arasaretamachi02_init()
end
function main22_arasaretamachi02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("PARTNER"):RunTo(SplinePath(SymPos("P00_PARTNER"), SymPos("P01_PARTNER")), Speed(3))
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):RunTo(SplinePath(SymPos("P00_HERO"), SymPos("P01_HERO")), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("PARTNER"):WaitMove()
  CH("PARTNER"):DirTo(RotateTarget(-170), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitMove()
  CH("HERO"):DirTo(RotateTarget(-170), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  CH("HERO"):SetPosition(SymPos("P02_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P02_PARTNER"))
  CH("HERO"):SetDir(RotateTarget(-170))
  CH("PARTNER"):SetDir(RotateTarget(-170))
  CAMERA:MoveFollow2(SymCam("CAMERA_04_5"), Speed(1.2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  CAMERA:WaitMove()
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -859207397, PARTNER_1 = -707610534})
  WINDOW:CloseMessage()
  CH("PARTNER"):RunTo(SplinePath(SymSpl("S00_PARTNER")), Speed(3))
  CH("HERO"):DirTo(RotateTarget(0), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CH("HERO"):RunTo(SplinePath(SymSpl("S00_HERO")), Speed(3))
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutEnv(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
end
function main22_arasaretamachi02_end()
end
function main22_arasaretamachi03_init()
end
function main22_arasaretamachi03_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), -16782439)
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
function main22_arasaretamachi03_end()
end
function main22_arasaretamachi04_init()
end
function main22_arasaretamachi04_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("HERO"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("HERO"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitMove()
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -404432168, PARTNER_1 = 1618789911})
  WINDOW:SwitchTalk({PARTNER_0 = 2036856662, PARTNER_1 = -1173298191})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_DEDEEN"))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(10, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-1559506256)
  SOUND:WaitSe(SymSnd("SE_EVT_DEDEEN"))
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -2010742413, PARTNER_1 = -1858228174})
  WINDOW:CloseMessage()
  CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):RunTo(SymPos("P01_PARTNER"), Speed(3))
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.3), true)
end
function main22_arasaretamachi04_end()
end
function main22_arasaretamachi05_init()
end
function main22_arasaretamachi05_start()
  CH("HERO"):SetPosition(SymPos("P00_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CH("PARTNER"):SetDir(CH("HERO"))
  CH("HERO"):SetDir(CH("PARTNER"))

  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  -- CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  -- SCREEN_A:FadeIn(TimeSec(0.3), true)
  -- CH("HERO"):WaitMove()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("HERO"):SetManpu("MP_SHOCK_R")
  -- CH("PARTNER"):WaitMove()
  -- CH("PARTNER"):SetManpu("MP_SHOCK_R")
  -- WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  -- WINDOW:Monologue(-562288907)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -949545036, PARTNER_1 = -330677129})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):WaitRotate()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -179210954, PARTNER_1 = 1925802489})
  -- WINDOW:SwitchTalk({PARTNER_0 = 1808947384, PARTNER_1 = 44860564})
  -- WINDOW:CloseMessage()
  -- subEveNod(CH("HERO"))
  -- TASK:Sleep(TimeSec(0.2))
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main22_arasaretamachi05_end()
end
function groundEnd()
end

