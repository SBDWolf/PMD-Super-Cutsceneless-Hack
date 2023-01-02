dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main01_shinryokutry1st01_init()
end
function main01_shinryokutry1st01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(1))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("KONOHANA"):RunTo(SymPos("P00_KONOHANA"), Speed(4))
  CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(4))
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("KONOHANA"):WaitMove()
  CH("KONOHANA"):SetEyeMotion(EYE_MOTION.PAIN)
  CH("KONOHANA"):SetMotion(SymMot("EV001_TIRED"), LOOP.ON)
  CH("HERO"):WaitMove()
  CH("HERO"):SetMotion(SymMot("EV013_TIRED"), LOOP.ON)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_FLY_SWEAT")
  CH("KONOHANA"):WaitManpu()
  WINDOW:DrawFaceF(324, 88, SymAct("KONOHANA"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("KONOHANA"), -1222506224)
  WINDOW:Talk(SymAct("KONOHANA"), -1371981743)
  WINDOW:CloseMessage()
  CH("KONOHANA"):SetEyeMotion(EYE_MOTION.NORMAL)
  CH("KONOHANA"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFaceF(324, 88, SymAct("KONOHANA"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("KONOHANA"), -2062259310)
  WINDOW:CloseMessage()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("KONOHANA"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.RIGHT)
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("KONOHANA"):WaitRotate()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("KONOHANA"), -1676715309)
  WINDOW:Talk(SymAct("KONOHANA"), -749810668)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("KONOHANA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("KONOHANA"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_ANGRY_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("KONOHANA")
  })
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("KONOHANA"), -900334251)
  WINDOW:Talk(SymAct("KONOHANA"), -512184682)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-127688745)
  WINDOW:Monologue(2147189528)
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(1726001753)
  WINDOW:CloseMessage()
  CH("KONOHANA"):ResetManpu()
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_QUESTION")
  CH("KONOHANA"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("KONOHANA"), 356343486)
  WINDOW:CloseMessage()
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_NOTICE_L")
  CH("KONOHANA"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("KONOHANA"), 203845631)
  WINDOW:Talk(SymAct("KONOHANA"), 655047740)
  WINDOW:Talk(SymAct("KONOHANA"), 1041239421)
  WINDOW:Talk(SymAct("KONOHANA"), 1901173690)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:MoveFollow2(SymCam("CAMERA_04_5"), Speed(10, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  TASK:Regist(subEveJumpSurprise, {
    CH("KONOHANA")
  })
  CH("KONOHANA"):SetManpu("MP_SHOCK_L")
  CH("KONOHANA"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("KONOHANA"), 1749723899)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_OOBEMU_SPEAK"))
  WINDOW:SysMsg(1130887480)
  SOUND:WaitSe(SymSnd("SE_EVT_OOBEMU_SPEAK"))
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("KONOHANA"):SetManpu("MP_NOTICE_L")
  CH("HERO"):WaitManpu()
  CH("KONOHANA"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.RIGHT)
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFaceF(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1518127225)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_FLY_SWEAT")
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("KONOHANA"), -572205898)
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(CH("KONOHANA"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("KONOHANA"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("KONOHANA"), -989862409)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  SOUND:PlaySe(SymSnd("SE_EVT_FOOT_STEP_01_LP"))
  CH("KONOHANA"):RunTo(SplinePath(SymPos("P00_RUNAWAY"), SymPos("P01_RUNAWAY")), Speed(4))
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):RunTo(SplinePath(SymPos("P00_RUNAWAY"), SymPos("P01_RUNAWAY")), Speed(4))
  TASK:Sleep(TimeSec(0.8))
  SOUND:FadeOutEnv(TimeSec(1))
  SOUND:FadeOutSe(SymSnd("SE_EVT_FOOT_STEP_01_LP"), TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main01_shinryokutry1st01_end()
end
function groundEnd()
end

