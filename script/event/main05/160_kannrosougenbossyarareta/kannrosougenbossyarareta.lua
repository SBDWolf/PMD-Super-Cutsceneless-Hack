dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main05_kannrosougenbossyarareta01_init()
end
function main05_kannrosougenbossyarareta01_start()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 1117892804, PARTNER_1 = 1538949509})
  WINDOW:KeyWait()
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  CH("HERO"):SetDir(RotateTarget(45))
  CH("PARTNER"):SetDir(RotateTarget(-55))
  CH("HERO"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  local taskHeroDownUp = function()
    CH("HERO"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
    CH("HERO"):WaitPlayMotion()
    CH("HERO"):ResetFacialMotion()
    subEveLookAround(CH("HERO"), Speed(600))
    CH("HERO"):DirTo(CH("PARTNER"), Speed(500), ROT_TYPE.NEAR)
  end
  local taskPartnerDownUp = function()
    CH("PARTNER"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
    CH("PARTNER"):WaitPlayMotion()
    CH("PARTNER"):ResetFacialMotion()
    subEveLookAround02(CH("PARTNER"), Speed(600))
    CH("PARTNER"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
    CH("PARTNER"):WaitRotate()
  end
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("SE_ENV_BREEZE_LP"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Regist(Group("hero"), taskHeroDownUp)
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(Group("partner"), taskPartnerDownUp)
  TASK:WaitTask(Group("partner"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 1888997958, PARTNER_1 = 1770840839})
  WINDOW:SwitchTalk({PARTNER_0 = 650999232, PARTNER_1 = 1071006849})
  WINDOW:SwitchTalk({PARTNER_0 = 351999810, PARTNER_1 = 232793603})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  CH("PARTNER"):ResetFacialMotion()
  CAMERA:MoveToHero(Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function main05_kannrosougenbossyarareta01_end()
end
function groundEnd()
end

