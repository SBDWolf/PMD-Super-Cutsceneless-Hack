dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main21_chitenchuukeiyarare01_init()
end
function main21_chitenchuukeiyarare01_start()
  TASK:Sleep(TimeSec(1))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = -1567081802, PARTNER_1 = -1149039625})
  WINDOW:KeyWait()
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  SOUND:PlayBgm(SymSnd("SE_EVT_JIGOKU_UZU_LP"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("KUCHIITO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("KUCHIITO"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("KUCHIITO"), -1867622348)
  subEveCloseMsg()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -1984599691, PARTNER_1 = -957022286})
  WINDOW:KeyWait()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -537932045, PARTNER_1 = -188572368})
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:MoveToHero(Speed(7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  CH("PARTNER"):ResetFacialMotion()
end
function main21_chitenchuukeiyarare01_end()
end
function groundEnd()
end

