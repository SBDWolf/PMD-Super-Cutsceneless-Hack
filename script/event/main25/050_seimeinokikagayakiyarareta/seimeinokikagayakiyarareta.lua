dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main25_seimeinokikagayakiyarareta01_init()
end
function main25_seimeinokikagayakiyarareta01_start()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = -1409917604, PARTNER_1 = -1293063139})
  WINDOW:KeyWait()
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  SOUND:PlayBgm(SymSnd("BGM_DUN_25"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -1715453986, PARTNER_1 = -2133127521})
  WINDOW:SwitchTalk({PARTNER_0 = -811952040, PARTNER_1 = -696145639})
  WINDOW:SwitchTalk({PARTNER_0 = -38995238, PARTNER_1 = -457716837})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  CH("PARTNER"):ResetFacialMotion()
  CAMERA:MoveToHero(Speed(10, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function main25_seimeinokikagayakiyarareta01_end()
end
function groundEnd()
end

