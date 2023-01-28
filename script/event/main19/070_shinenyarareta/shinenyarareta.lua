dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main19_shinenyarareta01_init()
end
function main19_shinenyarareta01_start()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 636258599, PARTNER_1 = 1022867558})
  WINDOW:KeyWait()
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:FadeInBgm(SymSnd("SE_ENV_CLIFF_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("PARTNER"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("DEDENNE"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("KUCHIITO"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):WaitRotate()
  CH("DEDENNE"):SetFacialMotion(FACIAL_MOTION.SAD)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("DEDENNE"):SetManpu("MP_FLY_SWEAT")
  CH("DEDENNE"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("DEDENNE"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("DEDENNE"), 400223141)
  subEveCloseMsg()
  CH("DEDENNE"):ResetFacialMotion()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 247585508, PARTNER_1 = 1098927139})
  WINDOW:SwitchTalk({PARTNER_0 = 1486585186, PARTNER_1 = 1941319329})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetFacialMotion()
  CAMERA:MoveToHero(Speed(12, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function main19_shinenyarareta01_end()
end
function groundEnd()
end

