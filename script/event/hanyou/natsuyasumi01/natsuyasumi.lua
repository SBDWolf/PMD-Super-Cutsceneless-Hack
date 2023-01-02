dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function hanyou_natsuyasumi01_init()
end
function hanyou_natsuyasumi01_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local taskHero00 = function()
    TASK:Sleep(TimeSec(0.2))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
    CH("HERO"):SetManpu("MP_NOTICE_L")
    CH("HERO"):WaitManpu()
    CH("HERO"):DirTo(SymPos("P00_PARTNER"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
  end
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_ODAYAKA_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("HERO"):WaitMove()
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(4))
  TASK:Regist(taskHero00)
  WINDOW:SwitchTalk({PARTNER_0 = -553383895, PARTNER_1 = -971032216})
  CH("PARTNER"):WaitMove()
  WINDOW:CloseMessage()
  CH("PARTNER"):SetManpu("MP_SPREE_LP")
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = -315462997, PARTNER_1 = -198616086})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetManpu()
  CH("PARTNER"):ResetFacialMotion()
  subEveNod(CH("HERO"))
  CAMERA:MoveToHero(Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function hanyou_natsuyasumi01_end()
end
function groundEnd()
end

