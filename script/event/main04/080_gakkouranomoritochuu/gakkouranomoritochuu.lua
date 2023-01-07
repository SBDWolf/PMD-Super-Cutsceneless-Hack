dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main04_gakkouranomoritochuu01_init()
end
function main04_gakkouranomoritochuu01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  CH("PARTNER"):WalkTo(SymPos("P00_PARTNER"), Speed(1.5))
  CH("NUMERA"):WalkTo(SymPos("P00_NUMERA"), Speed(1.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHUKEI"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("PARTNER"):WaitMove()
  local taskPartner00 = function()
    TASK:Sleep(TimeSec(0.3))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
    CH("PARTNER"):SetManpu("MP_EXCLAMATION")
    CH("PARTNER"):WaitManpu()
    CH("PARTNER"):DirTo(SymPos("P00_NUMERA"), Speed(350), ROT_TYPE.RIGHT)
    CH("PARTNER"):WaitRotate()
  end
  local taskHero00 = function()
    TASK:Sleep(TimeSec(0.5))
    CH("HERO"):SetManpu("MP_NOTICE_R")
    CH("HERO"):WaitMove()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(RotateTarget(90), Speed(500), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
    TASK:Sleep(TimeSec(0.2))
    subEveLookAround(CH("HERO"), Speed(600))
  end
  local taskNumera00 = function()
    TASK:Sleep(TimeSec(0.4))
    CH("NUMERA"):SetManpu("MP_EXCLAMATION")
    CH("NUMERA"):WaitMove()
  end
  TASK:Regist(taskPartner00)
  TASK:Regist(taskHero00)
  TASK:Regist(taskNumera00)
  SOUND:PlaySe(SymSnd("SE_EVT_NYASUPAA_ALERT"), Volume(190))
  WINDOW:SysMsg(-894340519)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("HERO"):SetManpu("MP_QUESTION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(-743816424)
  subEveCloseMsg()
  WINDOW:SysMsg(-125366053)
  WINDOW:CloseMessage()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-509861478)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.3))
  CH("NUMERA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):ResetFacialMotion()
    CH("HERO"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.RIGHT)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1361201315, PARTNER_1 = -1211726308})
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(RotateTarget(45), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Sleep(TimeSec(0.3))
  CH("NUMERA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  subEveNod(CH("PARTNER"))
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1662265889, PARTNER_1 = -2047810402})
  subEveCloseMsg()
  WINDOW:SysMsg(40433745)
  WINDOW:SysMsg(460572944)
  subEveCloseMsg()
  subEveNod(CH("PARTNER"))
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -212762667, PARTNER_1 = -364228972})
  WINDOW:SwitchTalk({PARTNER_0 = -1050206889, PARTNER_1 = -662950890})
  subEveCloseMsg()
  WINDOW:SysMsg(-1757562159)
  WINDOW:SysMsg(-1910076528)
  subEveCloseMsg()
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = -1525950381, PARTNER_1 = -1139742446})
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 998831581, PARTNER_1 = 580109468})
  WINDOW:SwitchTalk({PARTNER_0 = -505098181, PARTNER_1 = -117448326})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  CH("NUMERA"):WaitManpu()
  CH("HERO"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("NUMERA"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("NUMERA"), -741166407)
  WINDOW:Talk(SymAct("NUMERA"), -892763144)
  subEveCloseMsg()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = -2054679233, PARTNER_1 = -1668078466})
  WINDOW:KeyWait()
  CH("PARTNER"):SetManpu("MP_LAUGH_LP")
  WINDOW:SwitchTalk({PARTNER_0 = -1212254275, PARTNER_1 = -1364900100})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetManpu()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 691886643, PARTNER_1 = 807824242})
  WINDOW:SwitchTalk({PARTNER_0 = 1498986334, PARTNER_1 = 1078167071})
  WINDOW:CloseMessage()
  TASK:Regist(subEveMoveDir2, {
    CH("PARTNER"),
    SymPos("P01_PARTNER"),
    Speed(1.5),
    RotateTarget(180)
  })
  TASK:Sleep(TimeSec(0.3))
  TASK:Regist(subEveMoveDir2, {
    CH("HERO"),
    SymPos("P01_HERO"),
    Speed(1.5),
    RotateTarget(180)
  })
  TASK:Sleep(TimeSec(0.3))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  CH("NUMERA"):WalkTo(SymPos("P01_NUMERA"), Speed(1.5))
  SOUND:FadeOutBgm(TimeSec(2))
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main04_gakkouranomoritochuu01_end()
end
function groundEnd()
end

