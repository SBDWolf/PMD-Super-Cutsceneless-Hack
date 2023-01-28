dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main15_honoonoshimaboss1st01_init()
end
function main15_honoonoshimaboss1st01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CH("HERO"):SetPosition(SymPos("P01_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P01_PARTNER"))
  CH("BUIZERU"):SetPosition(SymPos("P01_BUIZERU"))
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("BUIZERU"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("BUUBAAN"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("BUUBAA"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("BUUBAA2"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("BUUBAA3"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("BUUBAA4"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  SCREEN_A:FadeIn(TimeSec(0.5), true)

  -- TASK:Sleep(TimeSec(1))
  -- SOUND:FadeInEnv(SymSnd("SE_ENV_VOLCANO_LOW_LP"), TimeSec(0.5), Volume(256))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("BUIZERU"), -1045966781)
  -- WINDOW:Talk(SymAct("BUIZERU"), -658710270)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -208555327, PARTNER_1 = -360021120})
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_FOOT_STEP_01_LP"))
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("BUUBAAN"):SetVisible(false)
  -- CH("BUUBAA"):SetVisible(false)
  -- CH("BUUBAA2"):SetVisible(false)
  -- CH("BUUBAA3"):SetVisible(false)
  -- CH("BUUBAA4"):SetVisible(false)
  -- local taskPartner00 = function()
  --   CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  --   CH("PARTNER"):WaitMove()
  --   CH("PARTNER"):DirTo(RotateTarget(-135), Speed(350), ROT_TYPE.NEAR)
  --   CH("PARTNER"):WaitRotate()
  --   TASK:Sleep(TimeSec(0.2))
  --   subEveLookAround(CH("PARTNER"), Speed(600))
  -- end
  -- local taskHero00 = function()
  --   CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  --   CH("HERO"):WaitMove()
  --   CH("HERO"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  --   CH("HERO"):WaitRotate()
  --   TASK:Sleep(TimeSec(0.2))
  --   subEveLookAround(CH("HERO"), Speed(600))
  -- end
  -- local taskBuizeru00 = function()
  --   CH("BUIZERU"):RunTo(SymPos("P00_BUIZERU"), Speed(3))
  --   CH("BUIZERU"):WaitMove()
  --   CH("BUIZERU"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  --   CH("BUIZERU"):WaitRotate()
  --   TASK:Sleep(TimeSec(0.2))
  --   subEveLookAround(CH("BUIZERU"), Speed(600))
  -- end
  -- TASK:Regist(taskPartner00)
  -- TASK:Regist(taskHero00)
  -- TASK:Regist(taskBuizeru00)
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:FadeOutSe(SymSnd("SE_EVT_FOOT_STEP_01_LP"), TimeSec(0.8))
  -- TASK:WaitTask()
  -- WINDOW:DrawFaceF(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1513417401, PARTNER_1 = -1127209978})
  -- WINDOW:SwitchTalk({PARTNER_0 = -1744996411, PARTNER_1 = -1897511292})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- WINDOW:Talk(SymAct(""), 159275595)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):SetManpu("MP_SHOCK_L")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  -- CH("BUIZERU"):WaitManpu()
  -- WINDOW:CloseMessage()
  -- subEveFlash2()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFaceF(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 275081994, PARTNER_1 = 2074365148})
  -- WINDOW:CloseMessage()
  -- CH("BUIZERU"):DirTo(RotateTarget(-135), Speed(500), ROT_TYPE.NEAR)
  -- CH("BUIZERU"):WaitRotate()
  -- WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("BUIZERU"), 1656716701)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:Talk(SymAct(""), 1234316894)
  -- WINDOW:Talk(SymAct("BUUBAAN"), 1351163679)
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("HERO"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 533236184, PARTNER_1 = 114538649})
  -- TASK:WaitTask()
  -- subEveCloseMsg()
  -- WINDOW:Talk(SymAct("BUUBAAN"), 771681114)
  -- WINDOW:Talk(SymAct("BUUBAAN"), 887478811)
  -- WINDOW:Talk(SymAct("BUUBAAN"), -1283602732)
  -- WINDOW:Talk(SymAct("BUUBAAN"), -1436092523)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_QUESTION")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1762779954, PARTNER_1 = 1879757427})
  -- subEveCloseMsg()
  -- WINDOW:Talk(SymAct("BUUBAAN"), 1529315760)
  -- WINDOW:Talk(SymAct("BUUBAAN"), 1111273713)
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutEnv(TimeSec(1))
  -- SOUND:PlaySe(SymSnd("SE_EVT_WHITEOUT"))
  -- SCREEN_A:WhiteOut(TimeSec(0.5), true)
  -- CH("BUUBAAN"):SetVisible(true)
  -- CH("BUUBAA"):SetVisible(true)
  -- CH("BUUBAA2"):SetVisible(true)
  -- CH("BUUBAA3"):SetVisible(true)
  -- CH("BUUBAA4"):SetVisible(true)
  -- TASK:Sleep(TimeSec(1))
  -- SCREEN_A:WhiteIn(TimeSec(0.5), false)
  -- CH("PARTNER"):DirTo(CH("BUUBAAN"), Speed(500), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):DirTo(CH("BUUBAAN"), Speed(500), ROT_TYPE.NEAR)
  -- CH("BUIZERU"):DirTo(CH("BUUBAAN"), Speed(500), ROT_TYPE.NEAR)
  -- CH("BUIZERU"):WaitRotate()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):SetManpu("MP_SHOCK_L")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  -- local taskHero01 = function()
  --   CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(2.5), LINK_DIR.OFF)
  --   CH("HERO"):WaitMove()
  --   CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- end
  -- local taskPartner01 = function()
  --   CH("PARTNER"):WalkTo(SymPos("P01_PARTNER"), Speed(2.5), LINK_DIR.OFF)
  --   CH("PARTNER"):WaitMove()
  --   CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- end
  -- local taskBuizeru01 = function()
  --   CH("BUIZERU"):WalkTo(SymPos("P01_BUIZERU"), Speed(2.5), LINK_DIR.OFF)
  --   CH("BUIZERU"):WaitMove()
  --   CH("BUIZERU"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- end
  -- CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- TASK:Regist(taskPartner01)
  -- TASK:Sleep(TimeSec(0.1))
  -- TASK:Regist(taskHero01)
  -- TASK:Regist(taskBuizeru01)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 226305590, PARTNER_1 = 342234999})
  -- WINDOW:CloseMessage()
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_FEAR_01"), Volume(256))
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- WINDOW:DrawFace(272, 16, SymAct("BUUBAAN"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("BUUBAAN"), 1061897396)
  -- WINDOW:Talk(SymAct("BUUBAAN"), 642807285)
  -- WINDOW:Talk(SymAct("BUUBAAN"), -1580701382)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_05"))
  -- CAMERA:SetTgt(SymCam("CAMERA_05"))
  -- WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.DECIDE)
  -- WINDOW:Talk(SymAct("BUIZERU"), -1194108805)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- CH("BUUBAAN"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- WINDOW:DrawFace(272, 16, SymAct("BUUBAAN"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("BUUBAAN"), -777157545)
  -- WINDOW:Talk(SymAct("BUUBAAN"), -927550186)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- local taskBuubaa_00 = function()
  --   CH("BUUBAA"):SetManpu("MP_SPREE_LP")
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("BUUBAA")
  --   })
  -- end
  -- local taskBuubaa2_00 = function()
  --   CH("BUUBAA2"):SetManpu("MP_SPREE_LP")
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("BUUBAA2")
  --   })
  -- end
  -- local taskBuubaa3_00 = function()
  --   CH("BUUBAA3"):SetManpu("MP_SPREE_LP")
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("BUUBAA3")
  --   })
  -- end
  -- local taskBuubaa4_00 = function()
  --   CH("BUUBAA4"):SetManpu("MP_SPREE_LP")
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("BUUBAA4")
  --   })
  -- end
  -- TASK:Regist(taskBuubaa_00)
  -- TASK:Regist(taskBuubaa2_00)
  -- TASK:Sleep(TimeSec(0.1))
  -- TASK:Regist(taskBuubaa3_00)
  -- TASK:Regist(taskBuubaa4_00)
  -- CAMERA:MoveFollow2(SymCam("CAMERA_06"), Speed(15, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- WINDOW:Talk(SymAct("BUUBAA"), -476322091)
  -- CAMERA:WaitMove()
  -- TASK:WaitTask()
  -- WINDOW:CloseMessage()
  -- CH("BUUBAA"):ResetManpu()
  -- CH("BUUBAA2"):ResetManpu()
  -- CH("BUUBAA3"):ResetManpu()
  -- CH("BUUBAA4"):ResetManpu()
  -- CH("BUUBAA"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- CH("BUUBAA2"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("BUUBAA3"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- CH("BUUBAA4"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  -- subEveFlash2()
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  CAMERA:SetDefaultGroundFovy()
  SYSTEM:SetNextDungeonBanner(false)
end
function main15_honoonoshimaboss1st01_end()
end
function groundEnd()
end
