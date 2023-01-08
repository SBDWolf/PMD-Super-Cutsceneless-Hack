dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main05_shinjirupartner01_init()
end
function main05_shinjirupartner01_start()
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CH("HERO"):SetPosition(SymPos("P00_HERO"))
  CH("HERO"):SetDir(CH("PARTNER"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1.5))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)

  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1.5))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1332260152, PARTNER_1 = 1450417273})
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  -- CH("HERO"):SetManpu("MP_NOTICE_R")
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  -- CH("HERO"):WaitMove()
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.RIGHT)
  -- CH("PARTNER"):WaitMove()
  -- CH("PARTNER"):SetMotion(SymMot("EV013_TIRED"), LOOP.ON)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  -- WINDOW:SwitchTalk({PARTNER_0 = 2103365562, PARTNER_1 = 1682308859})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  -- CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.3))
  -- WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 721709116, PARTNER_1 = 840915325})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("HERO"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  -- WINDOW:Monologue(422709950)
  -- subEveCloseMsg()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 2702335, PARTNER_1 = -2018433232})
  -- WINDOW:SwitchTalk({PARTNER_0 = -1633020303, PARTNER_1 = -1713672273})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.EMOTION)
  -- WINDOW:Monologue(-2134876434)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1410527955, PARTNER_1 = -1292485524})
  -- WINDOW:SwitchTalk({PARTNER_0 = -38294869, PARTNER_1 = -458449942})
  -- WINDOW:CloseMessage()
  WINDOW:SysMsg(-813578199)
  WINDOW:SelectStart()
  WINDOW:SelectChain(-694486680, 1)
  WINDOW:SelectChain(1359144359, 0)
  WINDOW:DefaultCursor(0)
  local id = WINDOW:SelectEnd(MENU_SELECT_MODE.DISABLE_CANCEL)
  if id == 1 then
    SCREEN_A:FadeOut(TimeSec(0.3), true)
    -- subEveNod(CH("HERO"))
    -- TASK:Sleep(TimeSec(0.2))
    -- SCREEN_A:FadeOut(TimeSec(0.3), true)
    -- TASK:Sleep(TimeSec(0.3))
    -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
    -- WINDOW:SwitchTalk({PARTNER_0 = 1209652454, PARTNER_1 = -1955676095})
    -- WINDOW:SwitchTalk({PARTNER_0 = -1837764352, PARTNER_1 = -1185373501})
    -- WINDOW:SwitchTalk({PARTNER_0 = -1606184062, PARTNER_1 = -285080251})
    -- WINDOW:CloseMessage()
    return "select1"
  else
    SCREEN_A:FadeOut(TimeSec(0.5), true)
    return "select2"
  end
end
function main05_shinjirupartner01_end()
end
function groundEnd()
end
