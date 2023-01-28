dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main15_ensokumaenochourei01_init()
end
function main15_ensokumaenochourei01_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), -664398568)
  TASK:Sleep(TimeSec(3))
  SCREEN_A:FadeOutAll(TimeSec(1), true)
  SCREEN_A:FadeOut(TimeSec(0), true)
  WINDOW:EndChapter()
  WINDOW:ForceCloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main15_ensokumaenochourei01_end()
end
function main15_ensokumaenochourei02_init()
end
function main15_ensokumaenochourei02_start()
  CH("AAKEN"):SetPosition(SymPos("P00_AAKEN"))
  CH("PEROPPAFU"):SetPosition(SymPos("P00_PEROPPAFU"))
  CH("BUIZERU"):SetPosition(SymPos("P00_BUIZERU"))
  CH("HORUBII"):SetPosition(SymPos("P00_HORUBII"))
  CH("DENRYUU"):SetPosition(SymPos("P00_DENRYUU"))
  CH("KUCHIITO"):SetPosition(SymPos("P01_KUCHIITO"))
  CH("JIRAACHI"):SetPosition(SymPos("P01_JIRAACHI"))
  CH("DEDENNE"):SetDir(RotateTarget(0))
  CH("PARTNER"):SetDir(CH("HERO"))
  CH("HERO"):SetDir(CH("PARTNER"))
  CAMERA:MoveToHero(TimeSec(0), ACCEL_TYPE.NONE, DECEL_TYPE.HIGH)
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  subTowerUpdate()

  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_03"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(1))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1048763303)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):ResetManpu()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_PARTY_02"))
  -- local taskPartner00 = function()
  --   CH("PARTNER"):SetMotion(SymMot("VICTORY"), LOOP.OFF)
  --   CH("PARTNER"):WaitPlayMotion()
  --   CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  --   CH("PARTNER"):SetMotionRaito(Raito(2))
  --   CH("PARTNER"):SetMotion(SymMot("WAIT00"), LOOP.ON)
  --   CH("PARTNER"):SetManpu("MP_SPREE_LP")
  -- end
  -- TASK:Regist(taskPartner00)
  -- local taskHorubii00 = function()
  --   TASK:Sleep(TimeSec(0.2))
  --   CH("HORUBII"):SetMotion(SymMot("ROUND"), LOOP.OFF)
  --   CH("HORUBII"):WaitPlayMotion()
  --   CH("HORUBII"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  --   CH("HORUBII"):SetManpu("MP_SPREE_LP")
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("HORUBII")
  --   })
  -- end
  -- TASK:Regist(taskHorubii00)
  -- local taskHero00 = function()
  --   CH("HERO"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  --   CH("HERO"):SetManpu("MP_LAUGH_LP")
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("HERO")
  --   })
  --   TASK:Sleep(TimeSec(0.5))
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("HERO")
  --   })
  -- end
  -- TASK:Regist(taskHero00)
  -- local taskBuizeru00 = function()
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("BUIZERU"):SetMotion(SymMot("VICTORY"), LOOP.OFF)
  --   CH("BUIZERU"):WaitPlayMotion()
  --   CH("BUIZERU"):SetManpu("MP_SPREE_LP")
  --   CH("BUIZERU"):SetMotionRaito(Raito(2))
  --   CH("BUIZERU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  --   CH("BUIZERU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("BUIZERU")
  --   })
  --   TASK:Sleep(TimeSec(0.7))
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("BUIZERU")
  --   })
  -- end
  -- TASK:Regist(taskBuizeru00)
  -- local taskAaken00 = function()
  --   TASK:Sleep(TimeSec(0.2))
  --   CH("AAKEN"):SetMotion(SymMot("VICTORY"), LOOP.OFF)
  --   CH("AAKEN"):WaitPlayMotion()
  --   CH("AAKEN"):SetManpu("MP_SPREE_LP")
  --   CH("AAKEN"):SetMotionRaito(Raito(2))
  --   CH("AAKEN"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  --   CH("AAKEN"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("AAKEN")
  --   })
  --   TASK:Sleep(TimeSec(0.7))
  --   TASK:Regist(subEveDoubleJump, {
  --     CH("AAKEN")
  --   })
  -- end
  -- TASK:Regist(taskAaken00)
  -- TASK:Sleep(TimeSec(0.5))
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PEROPPAFU")
  -- })
  -- TASK:Sleep(TimeSec(0.5))
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("JIRAACHI")
  -- })
  -- TASK:Sleep(TimeSec(1))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -363825254)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):ResetManpu()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:FadeOutSe(SymSnd("SE_EVT_PARTY_02"), TimeSec(1))
  -- CH("PARTNER"):ResetFacialMotion()
  -- CH("HERO"):ResetFacialMotion()
  -- CH("BUIZERU"):ResetFacialMotion()
  -- CH("AAKEN"):ResetFacialMotion()
  -- CH("HORUBII"):ResetManpu()
  -- CH("AAKEN"):ResetManpu()
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):ResetManpu()
  -- CH("BUIZERU"):ResetManpu()
  -- CH("PARTNER"):ResetManpu()
  -- CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("PARTNER"):SetMotionRaito(Raito(1))
  -- CH("AAKEN"):SetMotionRaito(Raito(1))
  -- CH("BUIZERU"):SetMotionRaito(Raito(1))
  -- CH("DEDENNE"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- WINDOW:SysMsg(-213170469)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("DEDENNE"):SetManpu("MP_SHOCK_R")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("DEDENNE")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("DEDENNE"), -1140142052)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("PEROPPAFU"):SetFacialMotion(FACIAL_MOTION.SAD)
  -- SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PEROPPAFU")
  -- })
  -- WINDOW:DrawFace(324, 88, SymAct("PEROPPAFU"), FACE_TYPE.CATCHBREATH)
  -- WINDOW:Talk(SymAct("PEROPPAFU"), -1525554851)
  -- TASK:WaitTask()
  -- WINDOW:KeyWait()
  -- CH("PEROPPAFU"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
  -- WINDOW:DrawFace(324, 88, SymAct("PEROPPAFU"), FACE_TYPE.TEARS)
  -- WINDOW:Talk(SymAct("PEROPPAFU"), -1908624738)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- CH("AAKEN"):SetFacialMotion(FACIAL_MOTION.SAD)
  -- CH("HORUBII"):SetFacialMotion(FACIAL_MOTION.SAD)
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("HORUBII"):SetManpu("MP_FLY_SWEAT")
  -- CH("HORUBII"):WaitManpu()
  -- WINDOW:DrawFaceF(172, 8, SymAct("HORUBII"), FACE_TYPE.SAD)
  -- WINDOW:DrawFaceOffset(20, 0)
  -- WINDOW:Talk(SymAct("HORUBII"), -1759018017)
  -- subEveCloseMsg()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("AAKEN"):SetManpu("MP_FLY_SWEAT")
  -- CH("AAKEN"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.SAD)
  -- WINDOW:Talk(SymAct("AAKEN"), 280993552)
  -- WINDOW:CloseMessage()
  -- CH("PEROPPAFU"):ResetShake()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("DENRYUU"):SetFacialMotion(FACIAL_MOTION.SAD)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("DENRYUU"):SetManpu("MP_FLY_SWEAT")
  -- CH("DENRYUU"):WaitManpu()
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.SAD)
  -- WINDOW:Talk(SymAct("DENRYUU"), 161787473)
  -- WINDOW:Talk(SymAct("DENRYUU"), -907679811)
  -- WINDOW:Talk(SymAct("DENRYUU"), -788605188)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):ResetFacialMotion()
  -- CH("DEDENNE"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(272, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(-30, 0)
  -- WINDOW:Talk(SymAct("DENRYUU"), -70023873)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):ResetManpu()
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("AAKEN"):RunTo(SymPos("P00_AAKEN"), Speed(3))
  -- CH("HORUBII"):DirTo(SymPos("P00_HORUBII"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PEROPPAFU"):RunTo(SymPos("P00_PEROPPAFU"), Speed(3))
  -- CH("BUIZERU"):RunTo(SymPos("P00_BUIZERU"), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HORUBII"):WalkTo(SymPos("P00_HORUBII"), Speed(3))
  -- CH("DENRYUU"):RunTo(SymPos("P00_DENRYUU"), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("DEDENNE"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  -- CH("KUCHIITO"):RunTo(SplinePath(SymPos("P00_KUCHIITO"), SymPos("P01_KUCHIITO")), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("JIRAACHI"):RunTo(SplinePath(SymPos("P00_JIRAACHI"), SymPos("P01_JIRAACHI")), Speed(3))
  -- TASK:Sleep(TimeSec(2.5))
  -- CAMERA:SetEye(SymCam("CAMERA_05"))
  -- CAMERA:SetTgt(SymCam("CAMERA_05"))
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -490163074, PARTNER_1 = -1383521607})
  -- WINDOW:SwitchTalk({PARTNER_0 = -1265495048, PARTNER_1 = -1614856133})
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  -- CAMERA:MoveToHero(TimeSec(0), ACCEL_TYPE.NONE, DECEL_TYPE.HIGH)
  -- TASK:Sleep(TimeSec(1))
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_01"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.2))
  -- subTowerUpdate()
end
function main15_ensokumaenochourei02_end()
end
function groundEnd()
end
