dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main04_kirarayamayarareta01_init()
end
function main04_kirarayamayarareta01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
  CH("HERO"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  CH("SHIKIJIKA_SPRING"):SetMotion(SymMot("EV004_DOWN"), LOOP.OFF, TimeSec(0))
  CH("NYASUPAA"):SetMotion(SymMot("SLEEPLOOP"), LOOP.OFF, TimeSec(0))
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 2033661078)
  WINDOW:KeyWait()
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local taskHeroDownUp = function()
    CH("HERO"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
    CH("HERO"):WaitPlayMotion()
    CH("HERO"):ResetFacialMotion()
    subEveLookAround(CH("HERO"), Speed(600))
    CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(500), ROT_TYPE.NEAR)
  end
  local taskShikijikaDownUp = function()
    TASK:Sleep(TimeSec(0.1))
    CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
    CH("SHIKIJIKA_SPRING"):SetMotion(SymMot("EV004_RISE"), LOOP.OFF)
    CH("SHIKIJIKA_SPRING"):WaitPlayMotion()
    subEveLookAround(CH("SHIKIJIKA_SPRING"), Speed(600))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):WaitRotate()
  end
  local taskNyasupaaDownUp = function()
    TASK:Sleep(TimeSec(0.3))
    CH("NYASUPAA"):SetMotion(SymMot("EV004_RISE"), LOOP.OFF)
    CH("NYASUPAA"):WaitPlayMotion()
    CH("NYASUPAA"):ResetFacialMotion()
    subEveLookAround(CH("NYASUPAA"), Speed(500))
    CH("NYASUPAA"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
    CH("NYASUPAA"):WaitRotate()
  end
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Regist(Group("nyasupaa"), taskNyasupaaDownUp)
  TASK:Regist(Group("hero"), taskHeroDownUp)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("MIRUHOGGU"):SetManpu("MP_NOTICE_R")
  TASK:Sleep(TimeSec(0.1))
  CH("CHOBOMAKI"):SetManpu("MP_EXCLAMATION")
  TASK:Regist(Group("shikijika"), taskShikijikaDownUp)
  TASK:WaitTask(Group("shikijika"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_FLY_SWEAT")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1613497815)
  subEveCloseMsg()
  WINDOW:DrawFace(172, 8, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 1258378772)
  subEveCloseMsg()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
    CH("HERO"):SetManpu("MP_EXCLAMATION")
    CH("CHOBOMAKI"):SetManpu("MP_NOTICE_R")
    TASK:Sleep(TimeSec(0.1))
    CH("MIRUHOGGU"):SetManpu("MP_EXCLAMATION")
    CH("SHIKIJIKA_SPRING"):SetManpu("MP_NOTICE_R")
    CH("HERO"):WaitManpu()
  end
  TASK:Regist(taskLookAt01)
  WINDOW:Talk(SymAct("YANCHAMU"), 1377462101)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("MIRUHOGGU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("CHOBOMAKI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):DirTo(CH("PARTNER"), Speed(200), ROT_TYPE.NEAR)
  CAMERA:WaitMove()
  SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_01"), Volume(256))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 492564882, PARTNER_1 = 71352531})
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_ANGRY_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("YANCHAMU"), 795710224)
  WINDOW:CloseMessage()
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  TASK:Sleep(TimeSec(0.3))
  CAMERA:MoveFollow2(SymCam("CAMERA_00"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  CH("YANCHAMU"):ResetManpu()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 913744465)
  WINDOW:CloseMessage()
  CH("MIRUHOGGU"):WalkTo(SymPos("P00_MIRUHOGGU"), Speed(1.5))
  CH("MIRUHOGGU"):WaitMove()
  CH("MIRUHOGGU"):SetManpu("MP_SPREE_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("MIRUHOGGU")
  })
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(CH("MIRUHOGGU"), Speed(200), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(72, 16, SymAct("MIRUHOGGU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MIRUHOGGU"), -1309753698)
  WINDOW:KeyWait()
  CH("MIRUHOGGU"):ResetManpu()
  WINDOW:Talk(SymAct("MIRUHOGGU"), -1460301857)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 546104183)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  WINDOW:SysMsg(966251062)
  SOUND:WaitSe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  WINDOW:ForceCloseMessage()
end
function main04_kirarayamayarareta01_end()
end
function main04_kirarayamayarareta02_init()
end
function main04_kirarayamayarareta02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), 314212853)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayEnv(SymSnd("SE_ENV_BREEZE_LP"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), false)
  CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(1.5))
  TASK:Sleep(TimeSec(2.5))
  SOUND:FadeOutEnv(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main04_kirarayamayarareta02_end()
end
function main04_kirarayamayarareta03_init()
end
function main04_kirarayamayarareta03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  WINDOW:SysMsg(195145908)
  SOUND:WaitSe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  WINDOW:ForceCloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_GAKKOU_03"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  CH("MIRUHOGGU"):SetManpu("MP_SPREE_LP")
  WINDOW:DrawFace(72, 16, SymAct("MIRUHOGGU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 1155540595)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 1576736562)
  subEveCloseMsg()
  CH("MIRUHOGGU"):ResetManpu()
  CH("YANCHAMU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("NUMERA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(20, 88, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 1993753841)
  WINDOW:CloseMessage()
  CH("PARTNER"):RunTo(SplinePath(SymPos("P00_PARTNER"), SymPos("P01_PARTNER")), Speed(3))
  CH("YANCHAMU"):DirTo(SymPos("P00_PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  CH("NUMERA"):DirTo(SymPos("P00_PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):RunTo(SplinePath(SymPos("P00_PARTNER"), SymPos("P01_PARTNER")), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CH("NUMERA"):RunTo(SplinePath(SymPos("P00_PARTNER"), SymPos("P01_PARTNER")), Speed(3))
  TASK:Sleep(TimeSec(1))
  CAMERA:MoveFollow2(SymCam("CAMERA_04"), Speed(1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("NYASUPAA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1875735984)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun05)
  TASK:Sleep(TimeSec(0.7))
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  GROUND:MoveItemBagToBox()
  OverFlow_AddOverflowCheckItem(101, 3, false)
  OverFlow_AddOverflowCheckItem(113, 3, false)
  OverFlow_AddOverflowCheckItem(143, 1, false)
  OverFlow_AddOverflowCheckItem(115, 3, false)
  OverFlow_AddOverflowCheckItem(11, 3, false)
  OverFlow_AddOverflowCheckItem(245, 2, false)
  OverFlow_AddOverflowCheckItem(290, 5, false)
  OverFlow_AddOverflowCheckItem(529, 1, false)
  OverFlow_AddOverflowCheckItem(249, 1, false)
  GROUND:SortAndReduceBagItem()
end
function main04_kirarayamayarareta03_end()
end
function groundEnd()
end

