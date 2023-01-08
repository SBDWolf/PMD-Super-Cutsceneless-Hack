dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main05_kannrosougenbosswin01_init()
end
function main05_kannrosougenbosswin01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(1))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("BIIKUIN"):SetVisible(false)
  CH("SUPIAA2"):SetMotion(SymMot("EV005_DOWN"), LOOP.ON, TimeSec(0))
  CH("MITSUHANII4"):SetMotion(SymMot("EV005_DOWN"), LOOP.ON, TimeSec(0))
  TASK:Sleep(TimeSec(0.1))
  CH("SUPIAA3"):SetMotion(SymMot("EV005_DOWN"), LOOP.ON, TimeSec(0))
  CH("MITSUHANII3"):SetMotion(SymMot("EV005_DOWN"), LOOP.ON, TimeSec(0))
  CH("MITSUHANII5"):SetMotion(SymMot("EV005_DOWN"), LOOP.ON, TimeSec(0))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SUPIAA3"):SetManpu("MP_FLY_SWEAT")
  CH("SUPIAA3"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("SUPIAA3"), 8232849)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("MITSUHANII3"):SetManpu("MP_FLY_SWEAT")
  CH("MITSUHANII3"):WaitManpu()
  WINDOW:DrawFace(20, 20, SymAct("MITSUHANII3"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("MITSUHANII3"), 426159824)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(272, 16, SymAct("SUPIAA3"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("SUPIAA"), 843840787)
  WINDOW:Talk(SymAct("SUPIAA"), 726715474)
  WINDOW:Talk(SymAct("SUPIAA"), 1678858901)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlaySe(SymSnd("SE_EVT_SUPIAA_ENTRY"))
  CH("SUPIAA2"):SetMotion(SymMot("EV005_RISE"), LOOP.OFF)
  CH("MITSUHANII4"):SetMotion(SymMot("EV005_RISE"), LOOP.OFF)
  TASK:Sleep(TimeSec(0.2))
  CH("SUPIAA3"):SetMotion(SymMot("EV005_RISE"), LOOP.OFF)
  CH("MITSUHANII3"):SetMotion(SymMot("EV005_RISE"), LOOP.OFF)
  TASK:Sleep(TimeSec(0.1))
  CH("MITSUHANII5"):SetMotion(SymMot("EV005_RISE"), LOOP.OFF)
  CH("SUPIAA2"):WaitPlayMotion()
  CH("SUPIAA2"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("MITSUHANII4"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("SUPIAA3"):WaitPlayMotion()
  CH("SUPIAA3"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("MITSUHANII3"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("MITSUHANII5"):WaitPlayMotion()
  CH("MITSUHANII5"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("SUPIAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SUPIAA"), 2097834964)
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  WINDOW:Talk(SymAct("SUPIAA"), 1445410839)
  WINDOW:CloseMessage()
  SOUND:FadeOutSe(SymSnd("SE_EVT_SUPIAA_ENTRY"), TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:SetColorFilter(Color(0, 0, 0, 1))
  subEveFlash()
  CH("BIIKUIN"):SetVisible(true)
  WINDOW:Narration(TimeSec(0), TimeSec(0), 1329334614)
  WINDOW:CloseMessage()
  SCREEN_A:SetColorFilter(Color(0, 0, 0, 0))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(18, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("PARTNER")
  })
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("HERO"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  CH("SUPIAA2"):SetManpu("MP_FLY_SWEAT")
  CH("SUPIAA2"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("SUPIAA2"):MoveTo(SymPos("P00_SUPIAA2"), Speed(4), LINK_DIR.OFF)
  CH("MITSUHANII5"):SetManpu("MP_EXCLAMATION")
  CH("MITSUHANII5"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("MITSUHANII5"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  TASK:Regist(subEveJumpSurprise, {
    CH("SUBOMII")
  })
  CH("SUPIAA3"):SetManpu("MP_EXCLAMATION")
  CH("MITSUHANII3"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("MITSUHANII3"):SetManpu("MP_EXCLAMATION")
  CH("SUPIAA3"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("SUPIAA3"):MoveTo(SymPos("P00_SUPIAA3"), Speed(4), LINK_DIR.OFF)
  CH("MITSUHANII4"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("MITSUHANII3"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  CH("SUPIAA2"):WaitMove()
  CH("SUPIAA2"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  CH("SUPIAA3"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -928770663, PARTNER_1 = -776002344})
  CAMERA:WaitMove()
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("SUPIAA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("SUPIAA"), 784955034)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 20, SymAct("MITSUHANII3"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("MITSUHANII3"), 936527835)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("BIIKUIN"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("BIIKUIN"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), 486478872)
  WINDOW:Talk(SymAct("BIIKUIN"), 98837849)
  WINDOW:Talk(SymAct("BIIKUIN"), 1252373406)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02_5"))
  CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  CH("BIIKUIN"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("MITSUHANII3"):DirTo(SymPos("P00_SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  CH("BIIKUIN"):WaitRotate()
  CH("MITSUHANII5"):DirTo(SymPos("P00_SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHUKEI"), Volume(256))
  WINDOW:DrawFace(272, 16, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), 1404994271)
  WINDOW:Talk(SymAct("BIIKUIN"), 2022953244)
  WINDOW:Talk(SymAct("BIIKUIN"), 1636360285)
  WINDOW:Talk(SymAct("BIIKUIN"), -435094382)
  WINDOW:Talk(SymAct("BIIKUIN"), -16003629)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 1014815092, PARTNER_1 = 627566645})
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), 239778806)
  WINDOW:Talk(SymAct("BIIKUIN"), 391219895)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1477450864, PARTNER_1 = 1091251505})
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), 1780907762)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("SUBOMII"):WalkTo(SymPos("P00_SUBOMII"), Speed(1.5))
  CH("MITSUHANII3"):DirTo(SymPos("P00_SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("MITSUHANII5"):DirTo(SymPos("P00_SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  CH("SUBOMII"):WaitMove()
  WINDOW:DrawFace(324, 88, SymAct("SUBOMII"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("SUBOMII"), 1933397939)
  WINDOW:Talk(SymAct("SUBOMII"), -190491780)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02_5"))
  CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("MITSUHANII4"):SetManpu("MP_EXCLAMATION")
  CH("MITSUHANII3"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("MITSUHANII5"):SetManpu("MP_EXCLAMATION")
  CH("SUPIAA2"):SetManpu("MP_EXCLAMATION")
  CH("SUPIAA3"):SetManpu("MP_SHOCK_R")
  CH("MITSUHANII4"):WaitManpu()
  WINDOW:DrawFace(20, 20, SymAct("SUPIAA2"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SUPIAA2"), -306290115)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  CH("SUBOMII"):MoveTo(SymPos("P01_SUBOMII"), Speed(2), LINK_DIR.OFF)
  WINDOW:DrawFace(324, 88, SymAct("SUBOMII"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("SUBOMII"), -2067743215)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("BIIKUIN"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("BIIKUIN"):WaitRotate()
  CH("MITSUHANII3"):DirTo(CH("BIIKUIN"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 88, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), -1646555312)
  WINDOW:Talk(SymAct("BIIKUIN"), -1225335661)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("SUBOMII"):WalkTo(SymPos("P00_SUBOMII"), Speed(1.5))
  TASK:Sleep(TimeSec(0.1))
  CH("MITSUHANII3"):DirTo(SymPos("P00_SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("BIIKUIN"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("MITSUHANII5"):DirTo(SymPos("P00_SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  CH("SUBOMII"):WaitMove()
  WINDOW:DrawFace(324, 88, SymAct("SUBOMII"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("SUBOMII"), -1343361582)
  WINDOW:Talk(SymAct("SUBOMII"), -525567211)
  WINDOW:Talk(SymAct("SUBOMII"), -105428396)
  WINDOW:DrawFace(324, 88, SymAct("SUBOMII"), FACE_TYPE.TEARS)
  WINDOW:Talk(SymAct("SUBOMII"), -761652841)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), -880727850)
  WINDOW:Talk(SymAct("BIIKUIN"), 1276720153)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02_5"))
  CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  TASK:Sleep(TimeSec(0.2))
  CH("BIIKUIN"):WalkTo(SymPos("P00_BIIKUIN"), Speed(1.5))
  CH("BIIKUIN"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_HAND"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:SysMsg(1426195800)
  WINDOW:CloseMessage()
  CH("BIIKUIN"):WalkTo(SymPos("P01_BIIKUIN"), Speed(1.5), LINK_DIR.OFF)
  CH("BIIKUIN"):WaitMove()
  WINDOW:DrawFace(272, 16, SymAct("BIIKUIN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BIIKUIN"), 420972200)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("SUBOMII")
  })
  WINDOW:DrawFace(20, 88, SymAct("SUBOMII"), FACE_TYPE.TEARS)
  WINDOW:Talk(SymAct("SUBOMII"), 833513)
  WINDOW:Talk(SymAct("SUBOMII"), 723641386)
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("BIIKUIN"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("BIIKUIN"), 842716523)
  WINDOW:Talk(SymAct("BIIKUIN"), 2105230252)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main05_kannrosougenbosswin01_end()
end
function groundEnd()
end
