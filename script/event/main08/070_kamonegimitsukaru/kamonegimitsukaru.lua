dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main08_kamonegimitsukaru01_init()
end
function main08_kamonegimitsukaru01_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  SOUND:FadeInEnv(SymSnd("SE_MAP_HILLSWIND_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("HERO"):WaitMove()
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("HERO"):SetManpu("MP_QUESTION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(1325169543)
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(1474775750)
  subEveCloseMsg()
  WINDOW:SwitchTalk({PARTNER_0 = 2093619461, PARTNER_1 = 1708206148})
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  CH("NUMERA"):RunTo(SymPos("P00_NUMERA"), Speed(2.5))
  CH("SHIKIJIKA_SPRING"):RunTo(SymPos("P00_SHIKIJIKA"), Speed(3))
  CH("NUMERA"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  CH("NUMERA"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("NUMERA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("NUMERA"), 714129027)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 864784322, PARTNER_1 = 413588481})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(29224256)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_FLY_SWEAT")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -2044333681)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1623277362, PARTNER_1 = -1791579219})
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -1943168276, PARTNER_1 = -1493120721})
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):RunTo(SymPos("P01_SHIKIJIKA"), Speed(3))
  TASK:Sleep(TimeSec(0.1))
  CH("NUMERA"):RunTo(SymPos("P01_NUMERA"), Speed(3))
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):RunTo(SymPos("P01_PARTNER"), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  TASK:Sleep(TimeSec(1))
  SOUND:FadeOutEnv(TimeSec(0.7))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
end
function main08_kamonegimitsukaru01_end()
end
function main08_kamonegimitsukaru02_init()
end
function main08_kamonegimitsukaru02_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):SetVisible(false)
  CH("PARTNER"):SetVisible(false)
  CH("SHIKIJIKA_SPRING"):SetVisible(false)
  CH("NUMERA"):SetVisible(false)
  local taskKamoTabu00 = function()
    CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
    CH("KAMONEGI"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0))
    function TaskL.Loop()
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      CH("TABUNNE"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
      CH("TABUNNE"):WaitPlayMotion()
      CH("TABUNNE"):SetMotion(SymMot("WAIT02"), LOOP.ON)
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      subEveNod(CH("KAMONEGI"))
      CH("KAMONEGI"):SetManpu("MP_FLY_SWEAT")
      CH("KAMONEGI"):WaitManpu()
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      subEveNodDouble(CH("KAMONEGI"))
      CH("TABUNNE"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
      CH("TABUNNE"):WaitPlayMotion()
      CH("TABUNNE"):SetMotion(SymMot("WAIT02"), LOOP.ON)
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
      CH("KAMONEGI"):SetManpu("MP_FLY_SWEAT")
      subEveNoNoNo(CH("KAMONEGI"))
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      TASK:Sleep(TimeSec(0.25))
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
      CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.PAIN)
      TASK:Sleep(TimeSec(0), TASK_EXIT.QUICK)
    end
    function TaskL.Finish()
      CH("TABUNNE"):SetMotion(SymMot("WAIT02"), LOOP.ON)
      CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.PAIN)
      return
    end
  end
  TASK:Regist(Group("grpKamoTabu"), taskKamoTabu00)
  CAMERA:MoveFollow2(SymCam("CAMERA_00_5"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:PlayBgm(SymSnd("BGM_EVE_FUON_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(2.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1))
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("HERO"):SetVisible(true)
  CH("PARTNER"):SetVisible(true)
  CH("SHIKIJIKA_SPRING"):SetVisible(true)
  CH("NUMERA"):SetVisible(true)
  TASK:Regist(subEveRunDir, {
    CH("PARTNER"),
    SymPos("P00_PARTNER"),
    Speed(2.5),
    CH("YANCHAMU")
  })
  TASK:Regist(subEveRunDir, {
    CH("HERO"),
    SymPos("P00_HERO"),
    Speed(2.5),
    CH("YANCHAMU")
  })
  TASK:Regist(subEveRunDir, {
    CH("SHIKIJIKA_SPRING"),
    SymPos("P00_SHIKIJIKA"),
    Speed(2.5),
    CH("YANCHAMU")
  })
  TASK:Regist(subEveRunDir, {
    CH("NUMERA"),
    SymPos("P00_NUMERA"),
    Speed(2.5),
    CH("YANCHAMU")
  })
  TASK:Sleep(TimeSec(1.25))
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.4))
    CH("YANCHAMU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1105463186, PARTNER_1 = -245731671})
  WINDOW:CloseMessage()
  TASK:Regist(subEveDoubleJump, {
    CH("NUMERA")
  })
  WINDOW:DrawFace(20, 20, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NUMERA"), -398368792)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1016329173)
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(20, 0)
  WINDOW:Talk(SymAct("NYASUPAA"), -629719702)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1575952805)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_FLY_SWEAT")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.RELIEF)
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.RELIEF)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1156845796)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:ExitNotifyTasks(Group("grpKamoTabu"))
  TASK:WaitTask()
  CAMERA:WaitMove()
  TASK:Regist(subEveJump, {
    CH("TABUNNE")
  })
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("TABUNNE"):SetManpu("MP_SHOCK_L")
  CH("TABUNNE"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("TABUNNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("TABUNNE"), -2021456829)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("NUMERA"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("CHOBOMAKI"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  CH("KAMONEGI"):ResetNeckRot(TimeSec(0.2))
  CH("KAMONEGI"):WaitNeckRot()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("KAMONEGI"):SetManpu("MP_FLY_SWEAT")
  WINDOW:DrawFace(20, 88, SymAct("KAMONEGI"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("KAMONEGI"), -1634192126)
  WINDOW:KeyWait()
  CH("KAMONEGI"):SetMotion(SymMot("ENDURE"), LOOP.ON)
  WINDOW:Talk(SymAct("KAMONEGI"), -1246402879)
  WINDOW:KeyWait()
  CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
  WINDOW:Talk(SymAct("KAMONEGI"), -1397860480)
  WINDOW:CloseMessage()
  local taskKamonegi00 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_GYAAAA"), Volume(256))
    CH("KAMONEGI"):SetManpu("MP_SHOCK_R")
    CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
    TASK:Regist(subEveDoubleJump, {
      CH("KAMONEGI")
    })
    TASK:Sleep(TimeSec(0.2))
    CH("KAMONEGI"):SetManpu("MP_FLY_SWEAT")
    CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
    CH("KAMONEGI"):SetMotion(SymMot("EV008_SCARE"), LOOP.ON)
  end
  TASK:Regist(taskKamonegi00)
  WINDOW:DrawFace(20, 88, SymAct("KAMONEGI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("KAMONEGI"), -470826681)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("ABAGOORA"):SetManpu("MP_FLY_SWEAT")
  CH("ABAGOORA"):WaitManpu()
  WINDOW:DrawFace(20, 20, SymAct("ABAGOORA"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("ABAGOORA"), -84611066)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  CH("HASUBURERO"):SetManpu("MP_SWEAT_L")
  CH("HASUBURERO"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("HASUBURERO"), FACE_TYPE.CATCHBREATH)
  WINDOW:Talk(SymAct("HASUBURERO"), -774265915)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("RATTA")
  })
  WINDOW:DrawFace(272, 16, SymAct("RATTA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("RATTA"), -926772604)
  WINDOW:KeyWait()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("RATTA"):SetManpu("MP_FLY_SWEAT")
  WINDOW:Talk(SymAct("RATTA"), 1331334731)
  WINDOW:CloseMessage()
  CH("HERO"):SetDir(CH("HASUBURERO"))
  CH("PARTNER"):SetDir(CH("HASUBURERO"))
  CH("YANCHAMU"):SetDir(CH("HASUBURERO"))
  CH("CHOBOMAKI"):SetDir(CH("HASUBURERO"))
  CH("NUMERA"):SetDir(CH("HASUBURERO"))
  CH("SHIKIJIKA_SPRING"):SetDir(CH("HASUBURERO"))
  CH("NYASUPAA"):SetDir(CH("HASUBURERO"))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  local taskSurprise00 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
    CH("CHOBOMAKI"):SetManpu("MP_SHOCK_R")
    TASK:Regist(subEveJumpSurprise, {
      CH("CHOBOMAKI")
    })
    TASK:Sleep(TimeSec(0.1))
    CH("YANCHAMU"):SetManpu("MP_SHOCK_R")
    CH("SHIKIJIKA_SPRING"):SetManpu("MP_EXCLAMATION")
    CH("PARTNER"):SetManpu("MP_SHOCK_R")
    TASK:Regist(subEveJumpSurprise, {
      CH("PARTNER")
    })
    CH("NUMERA"):SetManpu("MP_EXCLAMATION")
    CH("NUMERA"):WaitManpu()
  end
  TASK:Regist(taskSurprise00)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1447149322, PARTNER_1 = 1061118758})
  TASK:WaitTask()
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("NUMERA")
  })
  WINDOW:DrawFace(20, 20, SymAct("NUMERA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("NUMERA"), 639914599)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_04"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("ABAGOORA"):SetManpu("MP_FLY_SWEAT")
  CH("ABAGOORA"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("ABAGOORA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("ABAGOORA"), 218694052)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  local taskHasuRatta00 = function()
    CH("HASUBURERO"):DirTo(CH("RATTA"), Speed(350), ROT_TYPE.NEAR)
    CH("HASUBURERO"):WaitRotate()
    CH("RATTA"):DirTo(CH("HASUBURERO"), Speed(350), ROT_TYPE.NEAR)
    CH("HIPOPOTASU"):DirTo(CH("RATTA"), Speed(350), ROT_TYPE.NEAR)
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
    CH("HASUBURERO"):SetManpu("MP_FLY_SWEAT")
    TASK:Sleep(TimeSec(0.5))
    CH("RATTA"):SetManpu("MP_SPREE_LP")
    TASK:Regist(subEveDoubleJump, {
      CH("RATTA")
    })
    CH("RATTA"):SetMotion(SymMot("SPEAK"), LOOP.ON)
    TASK:Sleep(TimeSec(1.5))
    CH("RATTA"):SetMotion(SymMot("WAIT02"), LOOP.ON)
    TASK:Sleep(TimeSec(1))
    CH("RATTA"):ResetManpu()
    TASK:Sleep(TimeSec(0.5))
  end
  TASK:Regist(taskHasuRatta00)
  local taskAbaHima00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("ABAGOORA"):DirTo(CH("HIMANATTSU"), Speed(350), ROT_TYPE.NEAR)
    CH("ABAGOORA"):WaitRotate()
    CH("HIMANATTSU"):DirTo(CH("ABAGOORA"), Speed(350), ROT_TYPE.NEAR)
    CH("ABAGOORA"):SetMotion(SymMot("SPEAK"), LOOP.ON)
    TASK:Sleep(TimeSec(1.5))
    CH("ABAGOORA"):SetMotion(SymMot("WAIT02"), LOOP.ON)
    CH("HIMANATTSU"):SetManpu("MP_FLY_SWEAT")
    TASK:Regist(subEveDoubleJump, {
      CH("HIMANATTSU")
    })
    TASK:Sleep(TimeSec(0.5))
    CH("ABAGOORA"):SetManpu("MP_SPREE_LP")
    TASK:Sleep(TimeSec(1.5))
    CH("ABAGOORA"):ResetManpu()
    TASK:Sleep(TimeSec(0.5))
  end
  TASK:Regist(taskAbaHima00)
  local taskKodomotachi00 = function()
    CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
    TASK:Regist(subEveDoubleJump, {
      CH("PARTNER")
    })
    TASK:Sleep(TimeSec(0.5))
    CH("YANCHAMU"):SetManpu("MP_SPREE_LP")
    TASK:Regist(subEveDoubleJump, {
      CH("YANCHAMU")
    })
    TASK:Sleep(TimeSec(2.5))
    CH("YANCHAMU"):ResetManpu()
    TASK:Sleep(TimeSec(0.2))
  end
  TASK:Regist(taskKodomotachi00)
  SOUND:PlaySe(SymSnd("SE_EVT_WAIWAI_LP"), Volume(256))
  CH("TABUNNE"):SetManpu("MP_FLY_SWEAT")
  CH("TABUNNE"):DirTo(CH("ABAGOORA"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(2.5))
  CH("HIYAKKII"):WalkTo(SymPos("P00_HIYAKKII"), Speed(1.5))
  WINDOW:DrawFace(72, 16, SymAct("HIYAKKII"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(50, 0)
  WINDOW:Talk(SymAct("HIYAKKII"), 336736485)
  WINDOW:CloseMessage()
  SOUND:FadeOutSe(SymSnd("SE_EVT_WAIWAI_LP"), TimeSec(0.5))
  CH("NYASUPAA"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("TABUNNE"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("KAMONEGI"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("KAMONEGI"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.3))
  TASK:Sleep(TimeSec(0.2))
  CH("ABAGOORA"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("NUMERA"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("HASUBURERO"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("CHOBOMAKI"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("RATTA"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("HIPOPOTASU"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("KAMONEGI"):DirTo(CH("HIYAKKII"), Speed(350), ROT_TYPE.NEAR)
  CH("KAMONEGI"):WaitRotate()
  WINDOW:DrawFace(72, 16, SymAct("HIYAKKII"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(50, 0)
  WINDOW:Talk(SymAct("HIYAKKII"), 1532208674)
  WINDOW:Talk(SymAct("HIYAKKII"), 1112053603)
  WINDOW:Talk(SymAct("HIYAKKII"), 1768277152)
  WINDOW:Talk(SymAct("HIYAKKII"), 1887368673)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(272, 16, SymAct("RATTA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("RATTA"), -135861970)
  CH("HIYAKKII"):DirTo(CH("HASUBURERO"), Speed(350), ROT_TYPE.NEAR)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HASUBURERO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("HASUBURERO"), -285353873)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_05"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("HIYAKKII"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(40, 0)
  WINDOW:Talk(SymAct("HIYAKKII"), -1561830497)
  WINDOW:Talk(SymAct("HIYAKKII"), -1141675298)
  WINDOW:Talk(SymAct("HIYAKKII"), -1864484579)
  WINDOW:Talk(SymAct("HIYAKKII"), -1983575972)
  WINDOW:Talk(SymAct("HIYAKKII"), -964387173)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(2))
  TASK:Regist(subEveMoveDir2, {
    CH("RATTA"),
    SymPos("P00_RATTA"),
    Speed(1.5),
    SymPos("P00_RATTA")
  })
  TASK:Sleep(TimeSec(0.4))
  TASK:Regist(subEveMoveDir2, {
    CH("HASUBURERO"),
    SymPos("P00_HASUBURERO"),
    Speed(1.5),
    SymPos("P00_HASUBURERO")
  })
  TASK:Sleep(TimeSec(0.3))
  TASK:Regist(subEveMoveDir2, {
    CH("HIPOPOTASU"),
    SymPos("P00_HIPOPOTASU"),
    Speed(1.5),
    SymPos("P00_HIPOPOTASU")
  })
  TASK:Sleep(TimeSec(0.1))
  TASK:Regist(subEveMoveDir2, {
    CH("TABUNNE"),
    SymPos("P00_TABUNNE"),
    Speed(1.5),
    SymPos("P00_TABUNNE")
  })
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveMoveDir2, {
    CH("KAMONEGI"),
    SymPos("P00_KAMONEGI"),
    Speed(1.5),
    SymPos("P00_KAMONEGI")
  })
  TASK:Sleep(TimeSec(1.2))
  TASK:Regist(subEveMoveDir2, {
    CH("HIYAKKII"),
    SymPos("P01_HIYAKKII"),
    Speed(1.5),
    SymPos("P01_HIYAKKII")
  })
  TASK:Regist(subEveMoveDir2, {
    CH("HIMANATTSU"),
    SymPos("P00_HIMANATTSU"),
    Speed(1.5),
    SymPos("P00_HIMANATTSU")
  })
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveMoveDir2, {
    CH("ABAGOORA"),
    SymPos("P00_ABAGOORA"),
    Speed(1.5),
    SymPos("P00_ABAGOORA")
  })
  TASK:Sleep(TimeSec(1.5))
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  CH("HERO"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("NUMERA"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("CHOBOMAKI"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFace(272, 16, SymAct("NYASUPAA"), FACE_TYPE.THINK)
  WINDOW:DrawFaceOffset(10, 0)
  WINDOW:Talk(SymAct("NYASUPAA"), -543182886)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -189596647)
  subEveCloseMsg()
  CH("NYASUPAA"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -307638952)
  WINDOW:CloseMessage()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("NUMERA"):SetFacialMotion(FACIAL_MOTION.SAD)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("NUMERA"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  WINDOW:SwitchTalk({PARTNER_0 = 1781649815, PARTNER_1 = 1932189910})
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  CH("NUMERA"):WaitManpu()
  TASK:Regist(subEveDoubleJump, {
    CH("NUMERA")
  })
  WINDOW:DrawFace(20, 20, SymAct("NUMERA"), FACE_TYPE.TEARS)
  WINDOW:Talk(SymAct("NUMERA"), 441728250)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 55512507)
  WINDOW:Talk(SymAct("YANCHAMU"), 677535352)
  WINDOW:KeyWait()
  CH("YANCHAMU"):SetManpu("MP_LAUGH_LP")
  CH("YANCHAMU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("YANCHAMU"), 830041913)
  CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:CloseMessage()
  TASK:Regist(subEveMoveDir2, {
    CH("YANCHAMU"),
    SymPos("P00_YANCHAMU"),
    Speed(1.5),
    SymPos("P00_YANCHAMU")
  })
  TASK:Sleep(TimeSec(0.3))
  TASK:Regist(subEveMoveDir2, {
    CH("CHOBOMAKI"),
    SymPos("P00_CHOBOMAKI"),
    Speed(1.5),
    SymPos("P00_CHOBOMAKI")
  })
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):DirTo(RotateTarget(90), Speed(60), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.3))
  CH("NYASUPAA"):DirTo(RotateTarget(90), Speed(200), ROT_TYPE.LEFT)
  TASK:Sleep(TimeSec(1.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  WINDOW:SwitchTalk({PARTNER_0 = 2117663230, PARTNER_1 = 1730398399})
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_06"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  CAMERA:WaitMove()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(200), ROT_TYPE.NEAR)
  WINDOW:DrawFaceF(172, 8, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(50, 0)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1276025724)
  CH("PARTNER"):ResetFacialMotion()
  CH("PARTNER"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:KeyWait()
  CH("SHIKIJIKA_SPRING"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFaceF(172, 8, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(50, 0)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1427483197)
  CH("NUMERA"):ResetFacialMotion()
  CH("NUMERA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):DirTo(RotateTarget(0), Speed(200), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(200), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFaceF(172, 8, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.HAPPY)
  WINDOW:DrawFaceOffset(50, 0)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -762464526)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun01 = function()
    subEveNod(CH("NYASUPAA"))
  end
  local taskUnun02 = function()
    subEveNod(CH("PARTNER"))
  end
  local taskUnun03 = function()
    subEveNod(CH("NUMERA"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun01)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Sleep(TimeSec(0.8))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
end
function main08_kamonegimitsukaru02_end()
end
function groundEnd()
end

