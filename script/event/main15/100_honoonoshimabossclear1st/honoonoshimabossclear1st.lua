dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main15_honoonoshimabossclear1st01_init()
end
function main15_honoonoshimabossclear1st01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("BUUBAAN"):SetMotion(SymMot("ENDURE"), LOOP.OFF, TimeSec(0))
  CH("BUUBAA"):SetMotion(SymMot("ENDURE"), LOOP.OFF, TimeSec(0))
  CH("BUUBAA2"):SetMotion(SymMot("ENDURE"), LOOP.OFF, TimeSec(0))
  CH("BUUBAA3"):SetMotion(SymMot("FALL"), LOOP.OFF, TimeSec(0))
  CH("BUUBAA4"):SetMotion(SymMot("FALL"), LOOP.OFF, TimeSec(0))
  local taskBuizeru00 = function()
    CH("BUIZERU"):RunTo(SymPos("P00_BUIZERU"), Speed(3))
    CH("BUIZERU"):WaitMove()
    CH("BUIZERU"):SetMotion(SymMot("ATTACK"), LOOP.OFF)
  end
  TASK:Regist(Group("grpBuizeru"), taskBuizeru00)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:WaitTask(Group("grpBuizeru"))
  local taskBuubaan00 = function()
    CH("BUUBAAN"):SetManpu("MP_SHOCK_L")
    CH("BUUBAAN"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
    CH("BUUBAAN"):MoveTo(SymPos("P00_BUUBAAN"), Speed(3), LINK_DIR.OFF)
    CH("BUUBAAN"):WaitMove()
    CH("BUUBAAN"):SetMotion(SymMot("FALL"), LOOP.OFF)
    TASK:Sleep(TimeSec(0.3))
    SOUND:PlaySe(SymSnd("SE_EVT_KOMATANA_DOWN"), Volume(256))
    CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.1))
    SOUND:PlaySe(SymSnd("SE_EVT_KOMATANA_DOWN"), Volume(256))
    TASK:Sleep(TimeSec(0.2))
    CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  end
  local taskBuubaa_00 = function()
    CH("BUUBAA"):SetManpu("MP_SHOCK_L")
    CH("BUUBAA"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
    CH("BUUBAA"):MoveTo(SymPos("P00_BUUBAA"), Speed(3), LINK_DIR.OFF)
    CH("BUUBAA"):WaitMove()
    CH("BUUBAA"):SetMotion(SymMot("FALL"), LOOP.OFF)
  end
  local taskBuubaa2_00 = function()
    CH("BUUBAA2"):SetManpu("MP_SHOCK_L")
    CH("BUUBAA2"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
    CH("BUUBAA2"):MoveTo(SymPos("P00_BUUBAA2"), Speed(3), LINK_DIR.OFF)
    CH("BUUBAA2"):WaitMove()
    CH("BUUBAA2"):SetMotion(SymMot("FALL"), LOOP.OFF)
  end
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  TASK:Regist(taskBuubaan00)
  TASK:Sleep(TimeSec(0.1))
  TASK:Regist(taskBuubaa_00)
  TASK:Regist(taskBuubaa2_00)
  SCREEN_A:WhiteChange(Level(1), Level(0), TimeSec(0.02), true)
  CH("BUIZERU"):WaitPlayMotion()
  CH("BUIZERU"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  WINDOW:Talk(SymAct("BUUBAAN"), -1170423151)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  CH("BUUBAA"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
  WINDOW:Talk(SymAct("BUUBAA"), -1557662768)
  CH("BUUBAA"):ResetShake()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Regist(subEveMoveDir, {
    CH("HERO"),
    SymPos("P00_HERO"),
    Speed(2.5),
    CH("BUIZERU")
  })
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveMoveDir, {
    CH("PARTNER"),
    SymPos("P00_PARTNER"),
    Speed(2.5),
    CH("BUIZERU")
  })
  TASK:WaitTask()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = -2012569581, PARTNER_1 = -1861119662})
  WINDOW:SwitchTalk({PARTNER_0 = -565180523, PARTNER_1 = -951372076})
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("BUIZERU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("BUIZERU"):WaitRotate()
  CH("BUIZERU"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFace(272, 16, SymAct("BUIZERU"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("BUIZERU"), -328833769)
  WINDOW:Talk(SymAct("BUIZERU"), -176335786)
  WINDOW:CloseMessage()
  CH("BUIZERU"):ResetFacialMotion()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_03"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 1927628953, PARTNER_1 = 1811839448})
  WINDOW:SwitchTalk({PARTNER_0 = 991158674, PARTNER_1 = 571003091})
  WINDOW:SwitchTalk({PARTNER_0 = 153453328, PARTNER_1 = 272544337})
  WINDOW:SwitchTalk({PARTNER_0 = 1602167958, PARTNER_1 = 1180964311})
  WINDOW:SwitchTalk({PARTNER_0 = 1833518612, PARTNER_1 = 1951561557})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03_5"))
  CAMERA:SetTgt(SymCam("CAMERA_03_5"))
  CH("BUIZERU"):DirTo(RotateTarget(-135), Speed(350), ROT_TYPE.NEAR)
  CH("BUIZERU"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("BUIZERU"):SetManpu("MP_FLY_SWEAT")
  CH("BUIZERU"):WaitManpu()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("PARTNER"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -204837990, PARTNER_1 = -355378469})
  WINDOW:SwitchTalk({PARTNER_0 = 698764924, PARTNER_1 = 817725245})
  WINDOW:CloseMessage()
  CH("BUIZERU"):DirTo(CH("PARTNER"), Speed(500), ROT_TYPE.NEAR)
  CH("BUIZERU"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  CH("BUIZERU"):WaitManpu()
  TASK:Regist(subEveJump, {
    CH("BUIZERU")
  })
  WINDOW:DrawFace(324, 20, SymAct("BUIZERU"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("BUIZERU"), 462433534)
  TASK:WaitTask()
  WINDOW:KeyWait()
  TASK:Regist(subEveNoNoNo, {
    CH("BUIZERU")
  })
  WINDOW:Talk(SymAct("BUIZERU"), 42671551)
  TASK:WaitTask()
  WINDOW:KeyWait()
  CH("BUIZERU"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("BUIZERU"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(324, 20, SymAct("BUIZERU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("BUIZERU"), 1305119608)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  CH("HERO"):SetManpu("MP_SWEAT_L")
  CH("PARTNER"):SetManpu("MP_SWEAT_R")
  CH("PARTNER"):WaitManpu()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  CH("BUIZERU"):ResetManpu()
  CH("BUIZERU"):ResetFacialMotion()
  WINDOW:DrawFace(272, 16, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), 1423030841)
  WINDOW:Talk(SymAct("BUIZERU"), 2147281402)
  WINDOW:Talk(SymAct("BUIZERU"), 1726470331)
  WINDOW:Talk(SymAct("BUIZERU"), -511720332)
  WINDOW:CloseMessage()
  CH("BUIZERU"):RunTo(SplinePath(SymSpl("S00_BUIZERU")), Speed(3))
  TASK:Sleep(TimeSec(1))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Sleep(TimeSec(1))
  SOUND:FadeOutBgm(TimeSec(1.5))
  CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):RunTo(SymPos("P01_PARTNER"), Speed(3))
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main15_honoonoshimabossclear1st01_end()
end
function groundEnd()
end

