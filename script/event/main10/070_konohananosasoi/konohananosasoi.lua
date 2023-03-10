dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main10_konohananosasoi01_init()
end
function main10_konohananosasoi01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  TASK:Regist(subEveMoveDir, {
    CH("PARTNER"),
    SymPos("P00_PARTNER"),
    Speed(1.5),
    CH("HERO")
  })
  TASK:Regist(subEveMoveDir, {
    CH("HERO"),
    SymPos("P00_HERO"),
    Speed(1.5),
    CH("PARTNER")
  })
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("RUCHABURU"):SetMotion(SymMot("ROUND"), LOOP.OFF)
  CH("RUCHABURU"):WaitPlayMotion()
  CH("RUCHABURU"):SetMotion(SymMot("ATTACK"), LOOP.OFF)
  CH("RUCHABURU"):WaitPlayMotion()
  CH("RUCHABURU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:WaitTask()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 491554313, PARTNER_1 = 72857416})
  subEveCloseMsg()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
    CH("HERO"):SetManpu("MP_NOTICE_L")
    CH("HERO"):DirTo(CH("KONOHANA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("PARTNER"):SetManpu("MP_NOTICE_R")
    CH("PARTNER"):DirTo(CH("KONOHANA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:Talk(SymAct("KONOHANA"), 796583051)
  subEveCloseMsg()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 912381386, PARTNER_1 = 2032157453})
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("KONOHANA")
  })
  WINDOW:DrawFace(20, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), 1614508620)
  WINDOW:CloseMessage()
  CH("PARTNER"):WalkTo(SymPos("P01_PARTNER"), Speed(2))
  TASK:Regist(subEveMoveDir, {
    CH("HERO"),
    SymPos("P01_HERO"),
    Speed(2),
    CH("KONOHANA")
  })
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:WaitTask()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1259741583, PARTNER_1 = 1376587982})
  subEveCloseMsg()
  CH("PARTNER"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_FLY_SWEAT")
  TASK:Regist(subEveDoubleJump, {
    CH("KONOHANA")
  })
  WINDOW:DrawFace(20, 88, SymAct("KONOHANA"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("KONOHANA"), -711652351)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("KONOHANA"):SetManpu("MP_FLY_SWEAT")
  subEveLookAround(CH("KONOHANA"), Speed(800))
  TASK:WaitTask()
  CH("KONOHANA"):SetManpu("MP_FLY_SWEAT")
  WINDOW:DrawFace(20, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), -863093440)
  WINDOW:Talk(SymAct("KONOHANA"), -214252679)
  WINDOW:CloseMessage()
  TASK:Regist(subEveMoveDir2, {
    CH("KONOHANA"),
    SymPos("P00_KONOHANA"),
    Speed(1.5),
    SymPos("P00_KONOHANA")
  })
  TASK:Sleep(TimeSec(1.5))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  TASK:Sleep(TimeSec(1))
  TASK:Regist(subEveMoveDir2, {
    CH("PARTNER"),
    SymPos("P02_PARTNER"),
    Speed(1.5),
    SymPos("P02_PARTNER")
  })
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveMoveDir2, {
    CH("HERO"),
    SymPos("P02_HERO"),
    Speed(1.5),
    SymPos("P02_HERO")
  })
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_konohananosasoi01_end()
end
function main10_konohananosasoi02_init()
end
function main10_konohananosasoi02_start()
  -- just loading this script so that every character's position gets initialized
  -- there must be something else outside this script that sets them when this function gets called

  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("KONOHANA"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  -- SOUND:FadeInEnv(SymSnd("SE_MAP_HILLSWIND_LP"), TimeSec(0.5), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.5))
  -- CH("KONOHANA"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("KONOHANA"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  -- TASK:Sleep(TimeSec(1.2))
  -- CH("KONOHANA"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):SetManpu("MP_SHOCK_L")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -366874056, PARTNER_1 = -1056136709})
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("KONOHANA"):SetManpu("MP_FLY_SWEAT")
  -- CH("KONOHANA"):WaitManpu()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("KONOHANA")
  -- })
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("KONOHANA"), -669544262)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1755969923)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.CATCHBREATH)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1907542212, PARTNER_1 = -1520409345})
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.THINK)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1132767810)
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_QUESTION")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1004751217, PARTNER_1 = 586709040})
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("KONOHANA"), -510694249)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_QUESTION")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = -124494378, PARTNER_1 = -742846955})
  -- subEveCloseMsg()
  -- CH("PARTNER"):ResetFacialMotion()
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("KONOHANA"), -895336620)
  -- WINDOW:Talk(SymAct("KONOHANA"), -2048677485)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1661429550)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1210725615)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1362167216)
  -- WINDOW:Talk(SymAct("KONOHANA"), 693560991)
  -- subEveCloseMsg()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = 810407902, PARTNER_1 = 1496517618})
  -- subEveCloseMsg()
  -- CH("PARTNER"):ResetFacialMotion()
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("KONOHANA"), 1076378291)
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutEnv(TimeSec(1))
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  -- MAP:SetVisible(false)
  -- MAP:SetBG(SymImg("IMEV1001"))
  -- MAP:SetVisibleBG(true)
  -- CH("HERO"):SetVisible(false)
  -- CH("PARTNER"):SetVisible(false)
  -- CH("KONOHANA"):SetVisible(false)
  -- TASK:Sleep(TimeSec(0.3))
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_SHINPI"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- WINDOW:DrawFace(20, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("KONOHANA"), 1795516784)
  -- WINDOW:Talk(SymAct("KONOHANA"), 1914591281)
  -- WINDOW:Talk(SymAct("KONOHANA"), 1029689078)
  -- WINDOW:Talk(SymAct("KONOHANA"), 608501687)
  -- WINDOW:Talk(SymAct("KONOHANA"), 258583668)
  -- WINDOW:Talk(SymAct("KONOHANA"), 376610101)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1846902278)
  -- WINDOW:CloseMessage()
  -- SCREEN_A:FadeOut(TimeSec(0.3), true)
  -- MAP:SetVisible(true)
  -- MAP:SetVisibleBG(false)
  -- CH("HERO"):SetVisible(true)
  -- CH("PARTNER"):SetVisible(true)
  -- CH("KONOHANA"):SetVisible(true)
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  -- SCREEN_A:FadeIn(TimeSec(0.3), true)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):SetManpu("MP_SHOCK_L")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1997426501, PARTNER_1 = -991677621})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  -- WINDOW:Monologue(-570490358)
  -- WINDOW:CloseMessage()
  -- CH("HERO"):ResetFacialMotion()
  -- CH("PARTNER"):ResetFacialMotion()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("KONOHANA"), -153988663)
  -- WINDOW:Talk(SymAct("KONOHANA"), -272015224)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1601636785)
  -- WINDOW:Talk(SymAct("KONOHANA"), -1181497586)
  -- subEveCloseMsg()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1833003827, PARTNER_1 = -1952078452})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetFacialMotion()
  -- CH("HERO"):SetFacialMotion(FACIAL_MOTION.THINK)
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.THINK)
  -- WINDOW:Monologue(205371715)
  -- WINDOW:Monologue(354846722)
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetFacialMotion()
  -- SOUND:FadeOutBgm(TimeSec(1.5))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(72, 16, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("KONOHANA"), 2086163502)
  -- WINDOW:Talk(SymAct("KONOHANA"), 1698915695)
  -- WINDOW:CloseMessage()
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.5))
end
function main10_konohananosasoi02_end()
end
function groundEnd()
end

