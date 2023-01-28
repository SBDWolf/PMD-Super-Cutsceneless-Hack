dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main09_yanchamunoteian01_init()
end
function main09_yanchamunoteian01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
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
  WINDOW:SwitchTalk({PARTNER_0 = -1400289384, PARTNER_1 = -1248692519})
  CH("PARTNER"):WaitMove()
  WINDOW:CloseMessage()
  CH("PARTNER"):SetManpu("MP_SPREE_LP")
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = -1631640294, PARTNER_1 = -2019290021})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetManpu()
  CH("PARTNER"):ResetFacialMotion()
  subEveNod(CH("HERO"))
  WINDOW:Talk(SymAct("CHOBOMAKI"), -924482916)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_NOTICE_L")
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(SymPos("P00_CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("PARTNER"):WalkTo(SymPos("P01_PARTNER"), Speed(1.5))
  CH("CHOBOMAKI"):RunTo(SymPos("P00_CHOBOMAKI"), Speed(2.5))
  CH("CHOBOMAKI"):WaitMove()
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = -771836963, PARTNER_1 = -86777826})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  CH("CHOBOMAKI"):WaitManpu()
  CH("CHOBOMAKI"):SetEyeMotion(EYE_MOTION.PAIN)
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -473378465)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:DrawFaceOffset(-30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = 1683017104, PARTNER_1 = 2102131921})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1996700609)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):DirTo(RotateTarget(-60), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  CH("CHOBOMAKI"):WaitManpu()
  WINDOW:DrawFaceF(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1847069312)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1161124163)
  WINDOW:KeyWait()
  CH("CHOBOMAKI"):SetEyeMotion(EYE_MOTION.CLOSE)
  WINDOW:DrawFaceF(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.RELIEF)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1546545154)
  WINDOW:KeyWait()
  SOUND:PlaySe(SymSnd("SE_EVT_HOWAWAN"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_HEART")
  CH("CHOBOMAKI"):SetEyeMotion(EYE_MOTION.NORMAL)
  WINDOW:DrawFaceF(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.SPECIAL01)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 326106821)
  CH("CHOBOMAKI"):WaitManpu()
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):ResetFacialMotion()
  CH("CHOBOMAKI"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  CH("CHOBOMAKI"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 175427460)
  WINDOW:KeyWait()
  TASK:Regist(subEveJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:Talk(SymAct("CHOBOMAKI"), 559520839)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):RunTo(SymPos("P01_CHOBOMAKI"), Speed(3))
  TASK:Sleep(TimeSec(0.4))
  CH("PARTNER"):DirTo(RotateTarget(-70), Speed(200), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(2.5))
  CAMERA:MoveFollow(SymCam("CAMERA_02"), Speed(0.7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CAMERA:WaitMove()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 943893766, PARTNER_1 = -1076186679})
  WINDOW:KeyWait()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1497268088, PARTNER_1 = 1706464303})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):DirTo(SymPos("P02_PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):WalkTo(SymPos("P02_PARTNER"), Speed(1.5))
  TASK:Sleep(TimeSec(1))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
end
function main09_yanchamunoteian01_end()
end
function main09_yanchamunoteian02_init()
end
function main09_yanchamunoteian02_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), 2091754862)
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
function main09_yanchamunoteian02_end()
end
function main09_yanchamunoteian03_init()
end
function main09_yanchamunoteian03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_02"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  local taskSurprise00 = function()
    CH("CHOBOMAKI"):SetManpu("MP_EXCLAMATION")
    CH("SHIKIJIKA_SPRING"):SetManpu("MP_SHOCK_L")
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):SetManpu("MP_EXCLAMATION")
    CH("PARTNER"):SetManpu("MP_SHOCK_R")
    TASK:Sleep(TimeSec(0.1))
    TASK:Regist(subEveJumpSurprise, {
      CH("PARTNER")
    })
    CH("NUMERA"):SetManpu("MP_SHOCK_R")
    CH("NUMERA"):WaitManpu()
  end
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  TASK:Regist(taskSurprise00)
  WINDOW:Talk(SymWord(2093398760), 1468069549)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.1))
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1318832108, PARTNER_1 = 31084843})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.1))
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 415326314)
  WINDOW:Talk(SymAct("YANCHAMU"), 871117737)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:Talk(SymAct("YANCHAMU"), 720831208)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02_2"))
  CAMERA:SetTgt(SymCam("CAMERA_02_2"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_FLY_SWEAT")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1385226713)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.1))
  TASK:Regist(subEveJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -1267454106)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_02_7"), Speed(7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("YANCHAMU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  CH("YANCHAMU"):SetMotion(SymMot("EV009_POINT00"), LOOP.OFF)
  CH("YANCHAMU"):WaitPlayMotion()
  CH("YANCHAMU"):SetMotion(SymMot("EV009_POINT01"), LOOP.ON)
  CAMERA:WaitMove()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("NUMERA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -586484918)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1005469173, PARTNER_1 = -281243192})
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(6, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:Sleep(TimeSec(0.2))
  CH("YANCHAMU"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("NYASUPAA"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NUMERA"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  CAMERA:WaitMove()
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -165175159)
  WINDOW:Talk(SymAct("YANCHAMU"), -1184483762)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:Talk(SymAct("YANCHAMU"), -1602418929)
  WINDOW:Talk(SymAct("YANCHAMU"), -1957669684)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_L")
  CH("CHOBOMAKI"):WaitManpu()
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    CH("NYASUPAA"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("PARTNER"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(324, 20, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1840552563)
  CH("YANCHAMU"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 366180674)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 214452227)
  WINDOW:Talk(SymAct("YANCHAMU"), 1088277491)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  CH("CHOBOMAKI"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1506212530)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1928046961)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  CH("NUMERA"):WaitManpu()
  local taskLookAt03 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
    CH("NYASUPAA"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt03)
  WINDOW:DrawFace(20, 20, SymAct("NUMERA"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("NUMERA"), 1810929712)
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 615583479)
  subEveCloseMsg()
  CH("SHIKIJIKA_SPRING"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  local taskLookAt04 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt04)
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1034567606)
  subEveCloseMsg()
  CH("YANCHAMU"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(20, 0)
  WINDOW:Talk(SymAct("YANCHAMU"), 377973877)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt05 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt05)
  CH("NYASUPAA"):SetManpu("MP_SPREE_LP")
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("NYASUPAA"), 261905716)
  WINDOW:Talk(SymAct("NYASUPAA"), -2012986885)
  WINDOW:CloseMessage()
  CH("NYASUPAA"):ResetManpu()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_SHOCK_R")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_FLY_SWEAT")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1860210502)
  subEveCloseMsg()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("PARTNER"):SetMotion(SymMot("ENDURE"), LOOP.ON)
  CH("NUMERA"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("NUMERA"):SetMotion(SymMot("ENDURE"), LOOP.ON)
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(20, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -127816554)
  WINDOW:Talk(SymAct("YANCHAMU"), -512057897)
  WINDOW:Talk(SymAct("YANCHAMU"), -900215276)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_NOTICE_R")
  CH("YANCHAMU"):WaitManpu()
  TASK:Sleep(TimeSec(0.2))
  CAMERA:MoveFollow(SymCam("CAMERA_05"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("YANCHAMU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  CH("SHIKIJIKA_SPRING"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_SHOCK_L")
  CH("YANCHAMU"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("YANCHAMU"), -749928619)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:Talk(SymAct("YANCHAMU"), -1676842606)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("YANCHAMU"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  local taskLookAt06 = function()
    CH("SHIKIJIKA_SPRING"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NYASUPAA"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt06)
  CH("YANCHAMU"):SetManpu("MP_SPREE_LP")
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -2062133037)
  WINDOW:Talk(SymAct("YANCHAMU"), -1371862256)
  WINDOW:CloseMessage()
  CH("YANCHAMU"):ResetManpu()
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main09_yanchamunoteian03_end()
end
function main09_yanchamunoteian04_init()
end
function main09_yanchamunoteian04_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -1222624687, PARTNER_1 = 817374878})
  WINDOW:SwitchTalk({PARTNER_0 = 698554335, PARTNER_1 = -355204232})
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = -204524999, PARTNER_1 = -656252422})
  WINDOW:SwitchTalk({PARTNER_0 = -1040625477, PARTNER_1 = -1900493188})
  WINDOW:CloseMessage()
  SOUND:FadeOutEnv(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main09_yanchamunoteian04_end()
end
function groundEnd()
end

