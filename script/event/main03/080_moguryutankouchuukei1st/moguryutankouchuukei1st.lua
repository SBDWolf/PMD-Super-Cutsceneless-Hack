dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main03_moguryutankouchuukei1st01_init()
end
function main03_moguryutankouchuukei1st01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local taskMoguryuu00 = function()
    CH("MOGURYUU"):SetManpu("MP_FLY_SWEAT_LP")
    CH("MOGURYUU"):WalkTo(SymPos("P00_MOGURYUU"), Speed(1.5))
    CH("MOGURYUU"):WaitMove()
    CH("MOGURYUU"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
    CH("MOGURYUU"):WaitRotate()
    CH("MOGURYUU"):ResetManpu()
    CH("MOGURYUU"):SetMotion(SymMot("PUSH"), LOOP.ON)
    TASK:Sleep(TimeSec(1.5))
    CH("MOGURYUU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
    TASK:Sleep(TimeSec(0.5))
    CH("MOGURYUU"):WalkTo(SymPos("P01_MOGURYUU"), Speed(1))
    CH("MOGURYUU"):WaitMove()
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
    CH("MOGURYUU"):SetManpu("MP_EXCLAMATION")
    CH("MOGURYUU"):WaitManpu()
    CH("MOGURYUU"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
    CH("MOGURYUU"):WaitRotate()
  end
  TASK:Regist(taskMoguryuu00)
  SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_03"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:WaitTask()
  TASK:Sleep(TimeSec(0.3))
  CAMERA:SetEye(SymCam("CAMERA_00_5"))
  CAMERA:SetTgt(SymCam("CAMERA_00_5"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("MOGURYUU"):SetManpu("MP_QUESTION")
  CH("MOGURYUU"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("MOGURYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MOGURYUU"), 1818141143)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  CH("PARTNER"):WaitMove()
  CH("PARTNER"):DirTo(SymPos("P00_HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitMove()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 1967493270, PARTNER_1 = 1583924053})
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 1198780948, PARTNER_1 = 137520339})
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = 287921554, PARTNER_1 = 973342289})
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 589248272, PARTNER_1 = -1534645281})
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_04"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1113843042, PARTNER_1 = 1233907601})
  WINDOW:SwitchTalk({PARTNER_0 = 1351671504, PARTNER_1 = 2076019987})
  WINDOW:SwitchTalk({PARTNER_0 = 1655094354, PARTNER_1 = 770124437})
  WINDOW:SwitchTalk({PARTNER_0 = 888937428, PARTNER_1 = 533809175})
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.1), true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SCREEN_A:FadeIn(TimeSec(0.1), true)
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 113932630, PARTNER_1 = -2125306471})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:WaitTask()
  CAMERA:MoveFollow2(SymCam("CAMERA_05"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("PARTNER"):RunTo(SplinePath(SymPos("P01_PARTNER"), SymPos("P02_PARTNER")), Speed(2.5))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):RunTo(SplinePath(SymPos("P01_HERO"), SymPos("P02_HERO")), Speed(2.5))
  TASK:Sleep(TimeSec(1))
  CH("MOGURYUU"):DirTo(RotateTarget(-45), Speed(350), ROT_TYPE.NEAR)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("MOGURYUU"):SetManpu("MP_EXCLAMATION")
  TASK:Regist(subEveJumpSurprise, {
    CH("MOGURYUU")
  })
  TASK:WaitTask()
  WINDOW:DrawFace(324, 20, SymAct("MOGURYUU"), FACE_TYPE.SPECIAL01)
  WINDOW:Talk(SymAct("MOGURYUU"), -1740024616)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_NOTICE_L")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  CH("PARTNER"):DirTo(SymPos("P02_MOGURYUU"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(SymPos("P02_MOGURYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("MOGURYUU"):WalkTo(SymPos("P02_MOGURYUU"), Speed(1.5))
  CH("MOGURYUU"):WaitMove()
  WINDOW:DrawFace(272, 16, SymAct("MOGURYUU"), FACE_TYPE.SPECIAL01)
  WINDOW:Talk(SymAct("MOGURYUU"), 1530806399)
  WINDOW:Talk(SymAct("MOGURYUU"), 1109750078)
  WINDOW:Talk(SymAct("MOGURYUU"), 1762140925)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = 1880298428, PARTNER_1 = 1062372731})
  WINDOW:CloseMessage()
  CH("MOGURYUU"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("MOGURYUU"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("MOGURYUU"):WaitRotate()
  CH("MOGURYUU"):SetManpu("MP_FLY_SWEAT")
  TASK:Regist(subEveNo, {
    CH("MOGURYUU")
  })
  WINDOW:DrawFace(272, 16, SymAct("MOGURYUU"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("MOGURYUU"), 642364474)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("MOGURYUU"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("MOGURYUU"):SetManpu("MP_EXCLAMATION")
  CH("MOGURYUU"):WaitManpu()
  CH("MOGURYUU"):DirTo(CH("PARTNER"), Speed(500), ROT_TYPE.NEAR)
  CH("MOGURYUU"):WaitRotate()
  TASK:Regist(subEveJumpSurprise, {
    CH("MOGURYUU")
  })
  WINDOW:DrawFace(272, 16, SymAct("MOGURYUU"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("MOGURYUU"), 224716793)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main03_moguryutankouchuukei1st01_end()
end
function groundEnd()
end

