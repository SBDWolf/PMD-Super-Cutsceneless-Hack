dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main19_kyomunosekai01_init()
end
function main19_kyomunosekai01_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), -1493680973)
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
function main19_kyomunosekai01_end()
end
function main19_kyomunosekai02_init()
end
function main19_kyomunosekai02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  local pokemonIndexPartner = SymAct("PARTNER"):GetIndex()
  if pokemonIndexPartner == 197 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
    CH("PARTNER"):SetDir(RotateTarget(180))
  elseif pokemonIndexPartner == 1 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
    CH("PARTNER"):SetDir(RotateTarget(180))
  elseif pokemonIndexPartner == 479 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
    CH("PARTNER"):SetDir(RotateTarget(180))
  end
  CH("HERO"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(-1075638798)
  WINDOW:Monologue(-1798414799)
  WINDOW:Monologue(-1915392144)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:MoveFollow2(SymCam("CAMERA_00_5"), Speed(0.05, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:PlayBgm(SymSnd("BGM_EVE_KYOMUNOSEKAI"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):ResetShake()
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):ResetShake()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("HERO"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(-1030424137)
  WINDOW:CloseMessage()
  CH("HERO"):ResetFacialMotion()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("HERO"):SetManpu("MP_SHOCK_L")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-611333898)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  local pokemonIndexHero = SymAct("HERO"):GetIndex()
  if pokemonIndexHero == 595 then
    CH("HERO"):RunTo(SymPos("P00_5_HERO"), Speed(3))
  elseif pokemonIndexHero == 479 then
    CH("HERO"):RunTo(SymPos("P00_5_HERO"), Speed(3))
  elseif pokemonIndexHero == 1 then
    CH("HERO"):RunTo(SymPos("P00_5_HERO"), Speed(3))
  else
    CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  end
  CH("HERO"):WaitMove()
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetMotion(SymMot("EV013_START"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.1))
  TASK:Sleep(TimeSec(0.3))
  CH("PARTNER"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
  TASK:Sleep(TimeSec(0.3))
  CH("PARTNER"):ResetShake()
  TASK:Sleep(TimeSec(0.5))
  CH("PARTNER"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
  CH("PARTNER"):WaitPlayMotion()
  CH("HERO"):ResetNeckRot(TimeSec(0.1))
  CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(1.5), LINK_DIR.OFF)
  CH("PARTNER"):ResetFacialMotion()
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_NOTICE_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -257778891, PARTNER_1 = -373708172})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 1847703227, PARTNER_1 = 2000324602})
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(RotateTarget(45), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CH("PARTNER"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -962304915, PARTNER_1 = -541108948})
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("HERO"):SetManpu("MP_SHOCK_R")
  CH("HERO"):WaitManpu()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main19_kyomunosekai02_end()
end
function main19_kyomunosekai03_init()
end
function main19_kyomunosekai03_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_KYOMUNOSEKAI"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:MoveFollow(SymCam("CAMERA_01"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -191756561, PARTNER_1 = -309774418})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  WINDOW:SwitchTalk({PARTNER_0 = -1563909783, PARTNER_1 = -1143762904})
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main19_kyomunosekai03_end()
end
function main19_kyomunosekai04_init()
end
function main19_kyomunosekai04_start()
  CH("HERO"):SetDir(CH("PARTNER"))
  CH("PARTNER"):SetDir(CH("HERO"))

  -- SOUND:PlayBgm(SymSnd("BGM_EVE_KYOMUNOSEKAI"), Volume(256))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):WaitRotate()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1862351893, PARTNER_1 = -1981418838})
  -- WINDOW:SwitchTalk({PARTNER_0 = 243134053, PARTNER_1 = 392617764})
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):WaitManpu()
  -- TASK:Regist(subEveJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -737031293, PARTNER_1 = -854918462})
  -- WINDOW:SwitchTalk({PARTNER_0 = -433608447, PARTNER_1 = -12806080})
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1333981561, PARTNER_1 = -1452916794})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = -2108986363, PARTNER_1 = -1689232060})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 482886027, PARTNER_1 = 97743050})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.THINK)
  -- WINDOW:Monologue(1823321318)
  -- WINDOW:Monologue(1974902183)
  -- WINDOW:Monologue(1587269220)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1199636261, PARTNER_1 = 146893282})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.ANGRY)
  -- CH("PARTNER"):SetManpu("MP_ANGRY_LP")
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.ANGRY)
  -- WINDOW:SwitchTalk({PARTNER_0 = 299522211, PARTNER_1 = 989268832})
  -- WINDOW:SwitchTalk({PARTNER_0 = 602683937, PARTNER_1 = -1535891730})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetManpu()
  -- CH("PARTNER"):ResetFacialMotion()
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1116792913, PARTNER_1 = -243624865})
  -- WINDOW:SwitchTalk({PARTNER_0 = -396253922, PARTNER_1 = -1018366243})
  -- WINDOW:SwitchTalk({PARTNER_0 = -631781476, PARTNER_1 = -1793699493})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("PARTNER"):SetManpu("MP_UPSET_LP")
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1945280486, PARTNER_1 = -1491061799})
  -- TASK:WaitTask()
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetManpu()
  -- CH("PARTNER"):ResetFacialMotion()
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1103428968, PARTNER_1 = 966991447})
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  -- WINDOW:SwitchTalk({PARTNER_0 = 548941590, PARTNER_1 = 1237775162})
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1356710523, PARTNER_1 = 2079363512})
  -- WINDOW:KeyWait()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0.15))
  -- WINDOW:SwitchTalk({PARTNER_0 = 1659609337, PARTNER_1 = 766129726})
  -- WINDOW:CloseMessage()
  -- CH("HERO"):SetFacialMotion(FACIAL_MOTION.SAD)
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SAD)
  -- WINDOW:Monologue(884017023)
  -- WINDOW:Monologue(530339004)
  -- WINDOW:KeyWait()
  -- CH("HERO"):ResetFacialMotion()
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  -- WINDOW:Monologue(109536765)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("HERO"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):WaitRotate()
  -- CH("HERO"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.DECIDE)
  -- WINDOW:Monologue(-2128643790)
  -- WINDOW:CloseMessage()
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):WaitRotate()
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.DECIDE)
  -- WINDOW:Monologue(-1744549773)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1534287060, PARTNER_1 = 1114140053})
  -- WINDOW:SwitchTalk({PARTNER_0 = 1766145622, PARTNER_1 = 1885212439})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetNeckRot(TimeSec(0.2))
  -- CH("PARTNER"):WaitNeckRot()
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1059035600, PARTNER_1 = 637839505})
  -- WINDOW:SwitchTalk({PARTNER_0 = 220855122, PARTNER_1 = 338872851})
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutBgm(TimeSec(1))
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.5))
end
function main19_kyomunosekai04_end()
end
function groundEnd()
end

