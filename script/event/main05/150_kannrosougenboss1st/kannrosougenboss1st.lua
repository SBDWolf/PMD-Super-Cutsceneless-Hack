dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main05_kannrosougenboss1st01_init()
end
function main05_kannrosougenboss1st01_start()
  CH("HERO"):SetPosition(SymPos("P00_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CH("SUBOMII"):SetPosition(SymPos("P02_SUBOMII"))
  CH("SUPIAA2"):SetPosition(SymPos("P00_SUPIAA2"))
  CH("SUPIAA3"):SetPosition(SymPos("P00_SUPIAA3"))
  CH("MITSUHANII3"):SetPosition(SymPos("P01_MITSUHANII3"))
  CH("MITSUHANII4"):SetPosition(SymPos("P00_MITSUHANII4"))
  CH("MITSUHANII5"):SetPosition(SymPos("P01_MITSUHANII5"))
  CH("PARTNER"):SetDir(RotateTarget(180))
  CH("HERO"):SetDir(RotateTarget(180))
  CH("MITSUHANII3"):SetDir(CH("PARTNER"))
  CH("MITSUHANII5"):SetDir(CH("PARTNER"))
  CH("SUPIAA3"):SetDir(RotateTarget(-45))
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("SUPIAA2"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("SUPIAA3"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(1))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("SUBOMII"):WalkTo(SymPos("P00_SUBOMII"), Speed(1.5))
  -- SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CH("SUBOMII"):WaitMove()
  -- subEveLookAround(CH("SUBOMII"), Speed(600))
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUBOMII"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("SUBOMII"), FACE_TYPE.SAD)
  -- WINDOW:Talk(SymAct("SUBOMII"), 9119211)
  -- WINDOW:Talk(SymAct("SUBOMII"), 428872874)
  -- subEveCloseMsg()
  -- WINDOW:SysMsg(851265385)
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("SUBOMII")
  -- })
  -- TASK:WaitTask()
  -- CH("SUBOMII"):MoveTo(SymPos("P01_SUBOMII"), Speed(2), LINK_DIR.OFF)
  -- SOUND:FadeOutEnv(TimeSec(1.5))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SUPIAA_ENTRY"))
  -- CH("SUPIAA2"):RunTo(SymPos("P00_SUPIAA2"), Speed(8))
  -- CH("SUPIAA3"):RunTo(SymPos("P00_SUPIAA3"), Speed(8))
  -- CH("SUPIAA2"):WaitMove()
  -- WINDOW:CloseMessage()
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_02"), Volume(256))
  -- CH("SUPIAA3"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUPIAA3"):WaitManpu()
  -- WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("SUPIAA3"), 732329512)
  -- WINDOW:CloseMessage()
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUBOMII"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("SUBOMII"), FACE_TYPE.SAD)
  -- WINDOW:Talk(SymAct("SUBOMII"), 1692917999)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("SUPIAA2"):SetManpu("MP_SHOCK_R")
  -- CH("SUPIAA3"):SetManpu("MP_SHOCK_L")
  -- CH("SUPIAA2"):WaitManpu()
  -- WINDOW:DrawFace(20, 20, SymAct("SUPIAA2"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("SUPIAA2"), 2113720750)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUBOMII"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("SUBOMII"), FACE_TYPE.TEARS)
  -- WINDOW:Talk(SymAct("SUBOMII"), 1456570989)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("SUPIAA3"):DirTo(RotateTarget(-135), Speed(500), ROT_TYPE.NEAR)
  -- CH("SUPIAA3"):WaitRotate()
  -- CH("SUPIAA3"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(324, 88, SymAct("SUPIAA3"), FACE_TYPE.SHOUT)
  -- WINDOW:Talk(SymAct("SUPIAA3"), 1338684204)
  -- WINDOW:CloseMessage()
  -- CH("SUPIAA3"):ResetManpu()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:Talk(SymAct("MITSUHANII3"), -934105117)
  -- CH("SUPIAA3"):DirTo(RotateTarget(-45), Speed(500), ROT_TYPE.NEAR)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SUPIAA_ENTRY"))
  -- CH("MITSUHANII3"):WalkTo(SymPos("P00_MITSUHANII3"), Speed(8))
  -- CH("MITSUHANII4"):WalkTo(SymPos("P00_MITSUHANII4"), Speed(8))
  -- CH("MITSUHANII5"):WalkTo(SymPos("P00_MITSUHANII5"), Speed(8))
  -- TASK:Sleep(TimeSec(0.3))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("SUBOMII"):SetManpu("MP_SHOCK_R")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("SUBOMII")
  -- })
  -- CH("SUBOMII"):WaitManpu()
  -- CH("MITSUHANII3"):WaitMove()
  -- subEveCloseMsg()
  -- CH("MITSUHANII3"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(72, 16, SymAct("MITSUHANII3"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("MITSUHANII3"), -783704414)
  -- subEveCloseMsg()
  -- CH("SUPIAA3"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("SUPIAA3"), -793920126)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- CH("SUBOMII"):SetMotion(SymMot("ENDURE"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUBOMII"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("SUBOMII"), FACE_TYPE.PAIN)
  -- WINDOW:Talk(SymAct("SUBOMII"), -910783293)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  -- CH("MITSUHANII4"):SetManpu("MP_EXCLAMATION")
  -- CH("MITSUHANII3"):SetManpu("MP_SHOCK_R")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("MITSUHANII5"):SetManpu("MP_SHOCK_L")
  -- CH("MITSUHANII4"):WaitManpu()
  -- WINDOW:DrawFace(72, 16, SymAct("MITSUHANII3"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("MITSUHANII3"), -493101312)
  -- WINDOW:Talk(SymAct("MITSUHANII3"), -75436479)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("SUPIAA3"), -1262389114)
  -- WINDOW:Talk(SymAct("SUPIAA"), -1378203193)
  -- subEveCloseMsg()
  -- SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  -- CH("MITSUHANII3"):SetManpu("MP_FLY_SWEAT")
  -- TASK:Regist(subEveJump, {
  --   CH("MITSUHANII3")
  -- })
  -- WINDOW:DrawFace(72, 16, SymAct("MITSUHANII3"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("MITSUHANII3"), -2030626300)
  -- subEveCloseMsg()
  -- local taskLookAt00 = function()
  --   TASK:Sleep(TimeSec(0.4))
  --   SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  --   CH("MITSUHANII4"):SetManpu("MP_EXCLAMATION")
  --   CH("MITSUHANII3"):SetManpu("MP_EXCLAMATION")
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("MITSUHANII5"):SetManpu("MP_EXCLAMATION")
  --   CH("MITSUHANII4"):WaitManpu()
  -- end
  -- TASK:Regist(taskLookAt00)
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- WINDOW:SwitchTalk({PARTNER_0 = -1611912379, PARTNER_1 = 410269578})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(4))
  -- CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(4))
  -- CH("PARTNER"):WaitMove()
  -- CH("SUBOMII"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):DirTo(CH("SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("HERO"):DirTo(CH("SUBOMII"), Speed(350), ROT_TYPE.NEAR)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = 24053451, PARTNER_1 = -1038609812})
  -- WINDOW:SwitchTalk({PARTNER_0 = -620551379, PARTNER_1 = -265391890})
  -- WINDOW:CloseMessage()
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_TENSION_01"), Volume(256))
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("SUPIAA3"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("SUPIAA3"), -382385745)
  -- subEveCloseMsg()
  -- CH("SUPIAA3"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(72, 16, SymAct("MITSUHANII3"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("MITSUHANII3"), -1502292120)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):WaitManpu()
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1083185623, PARTNER_1 = -1807567382})
  -- WINDOW:CloseMessage()
  -- CH("SUPIAA2"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("SUPIAA3"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUBOMII"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Regist(subEveMoveDir, {
  --   CH("MITSUHANII3"),
  --   SymPos("P01_MITSUHANII3"),
  --   Speed(4),
  --   CH("PARTNER")
  -- })
  -- TASK:Regist(subEveMoveDir, {
  --   CH("MITSUHANII5"),
  --   SymPos("P01_MITSUHANII5"),
  --   Speed(4),
  --   CH("PARTNER")
  -- })
  -- SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  -- subEveFlash()
  -- TASK:WaitTask()
  -- CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("SUPIAA3"), -1923513173)
  -- WINDOW:Talk(SymAct("SUPIAA3"), 180459620)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 333097253, PARTNER_1 = 2057598217})
  -- WINDOW:CloseMessage()
  -- CH("SUBOMII"):SetManpu("MP_FLY_SWEAT")
  -- CH("SUBOMII"):RunTo(SymPos("P02_SUBOMII"), Speed(4))
  -- TASK:Sleep(TimeSec(0.7))
  -- CH("SUPIAA3"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(324, 20, SymAct("SUPIAA3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("SUPIAA3"), 1673479240)
  -- WINDOW:CloseMessage()
  -- subEveFlash2()
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  CAMERA:SetDefaultGroundFovy()
  SYSTEM:SetNextDungeonBanner(false)
end
function main05_kannrosougenboss1st01_end()
end
function groundEnd()
end

