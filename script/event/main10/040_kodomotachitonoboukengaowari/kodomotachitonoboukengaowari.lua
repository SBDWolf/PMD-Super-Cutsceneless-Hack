dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main10_kodomotachitonoboukengaowari01_init()
end
function main10_kodomotachitonoboukengaowari01_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1144558749)
  WINDOW:KeyWait()
  CH("SHIKIJIKA_SPRING"):ResetManpu()
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1562617308)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P_OREI"), Speed(1.5))
  CH("SHIKIJIKA_SPRING"):WaitMove()
  SOUND:PlayMe(SymSnd("ME_REWARD"), Volume(256))
  OverFlow_AddOverflowCheckItem(288, 5, true)
  SOUND:WaitMe()
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P_BASE"), Speed(1.5), LINK_DIR.OFF)
  CH("SHIKIJIKA_SPRING"):WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1980691999)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P_BYE"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(60), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main10_kodomotachitonoboukengaowari01_end()
end
function main10_kodomotachitonoboukengaowari02_init()
end
function main10_kodomotachitonoboukengaowari02_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("NUMERA"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("NUMERA"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("NUMERA")
  })
  WINDOW:DrawFace(72, 16, SymAct("NUMERA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("NUMERA"), 1863698270)
  WINDOW:KeyWait()
  CH("NUMERA"):ResetManpu()
  WINDOW:Talk(SymAct("NUMERA"), 542396825)
  WINDOW:CloseMessage()
  CH("NUMERA"):ResetFacialMotion()
  CH("NUMERA"):WalkTo(SymPos("P_OREI"), Speed(1.5))
  CH("NUMERA"):WaitMove()
  SOUND:PlayMe(SymSnd("ME_REWARD"), Volume(256))
  OverFlow_AddOverflowCheckItem(302, 5, true)
  SOUND:WaitMe()
  WINDOW:CloseMessage()
  CH("NUMERA"):WalkTo(SymPos("P_BASE"), Speed(1.5), LINK_DIR.OFF)
  CH("NUMERA"):WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NUMERA"), 961503448)
  WINDOW:CloseMessage()
  CH("NUMERA"):WalkTo(SymPos("P_BYE"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(60), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main10_kodomotachitonoboukengaowari02_end()
end
function main10_kodomotachitonoboukengaowari03_init()
end
function main10_kodomotachitonoboukengaowari03_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("NYASUPAA"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("NYASUPAA"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("NYASUPAA")
  })
  WINDOW:DrawFace(72, 16, SymAct("NYASUPAA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("NYASUPAA"), 308425499)
  WINDOW:KeyWait()
  CH("NYASUPAA"):ResetManpu()
  WINDOW:Talk(SymAct("NYASUPAA"), 192479834)
  WINDOW:CloseMessage()
  CH("NYASUPAA"):ResetFacialMotion()
  CH("NYASUPAA"):WalkTo(SymPos("P_OREI"), Speed(1.5))
  CH("NYASUPAA"):WaitMove()
  SOUND:PlayMe(SymSnd("ME_REWARD"), Volume(256))
  OverFlow_AddOverflowCheckItem(3, 5, true)
  SOUND:WaitMe()
  WINDOW:CloseMessage()
  CH("NYASUPAA"):WalkTo(SymPos("P_BASE"), Speed(1.5), LINK_DIR.OFF)
  CH("NYASUPAA"):WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), -1931403627)
  WINDOW:CloseMessage()
  CH("NYASUPAA"):WalkTo(SymPos("P_BYE"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(60), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main10_kodomotachitonoboukengaowari03_end()
end
function main10_kodomotachitonoboukengaowari04_init()
end
function main10_kodomotachitonoboukengaowari04_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("YANCHAMU"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("YANCHAMU"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("YANCHAMU"), -1778765868)
  WINDOW:CloseMessage()
  CH("YANCHAMU"):ResetManpu()
  CH("YANCHAMU"):ResetFacialMotion()
  CH("YANCHAMU"):WalkTo(SymPos("P_OREI"), Speed(1.5))
  CH("YANCHAMU"):WaitMove()
  SOUND:PlayMe(SymSnd("ME_REWARD"), Volume(256))
  OverFlow_AddOverflowCheckItem(6, 10, true)
  SOUND:WaitMe()
  WINDOW:CloseMessage()
  CH("YANCHAMU"):WalkTo(SymPos("P_BASE"), Speed(1.5), LINK_DIR.OFF)
  CH("YANCHAMU"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_NOTICE_R")
  CH("YANCHAMU"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 363766875)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:Talk(SymAct("YANCHAMU"), 213226778)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("YANCHAMU"):WalkTo(SymPos("P_BYE"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(60), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main10_kodomotachitonoboukengaowari04_end()
end
function main10_kodomotachitonoboukengaowari05_init()
end
function main10_kodomotachitonoboukengaowari05_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("CHOBOMAKI"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 664323801)
  WINDOW:KeyWait()
  CH("CHOBOMAKI"):ResetManpu()
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1048835992)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):ResetFacialMotion()
  CH("CHOBOMAKI"):WalkTo(SymPos("P_OREI"), Speed(1.5))
  CH("CHOBOMAKI"):WaitMove()
  SOUND:PlayMe(SymSnd("ME_REWARD"), Volume(256))
  OverFlow_AddOverflowCheckItem(2, 10, true)
  SOUND:WaitMe()
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):WalkTo(SymPos("P_BASE"), Speed(1.5), LINK_DIR.OFF)
  CH("CHOBOMAKI"):WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1908564319)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1759072286)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):WalkTo(SymPos("P_BYE"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(60), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main10_kodomotachitonoboukengaowari05_end()
end
function main10_kodomotachitonoboukengaowari06_init()
end
function main10_kodomotachitonoboukengaowari06_start()
  SAJI:CreateSajiPlayer("connected", "CONNECT2")
  SJ("connected"):SetPosition(Vector2(200, 120))
  SJ("connected"):SetDrawPriority(200)
  SOUND:PlaySe(SymSnd("SE_SYS_ORB_CONNECTED"), Volume(256))
  SJ("connected"):Play(LOOP.OFF)
  TASK:Sleep(TimeSec(2.7))
  SAJI:DestroySajiPlayer("connected")
  WINDOW:SysMsg(1140065245)
  WINDOW:KeyWait()
  SOUND:PlayMe(SymSnd("ME_MINIGAME_PERFECT"), Volume(256))
  WINDOW:SysMsg(1525625500)
  SOUND:WaitMe()
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(1.5))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local taskHero00 = function()
    CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
    CH("HERO"):WaitMove()
    CH("HERO"):SetManpu("MP_EXCLAMATION")
    CH("HERO"):DirTo(SymPos("P00_ABAHOME"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
  end
  TASK:Regist(taskHero00)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
  local taskShake00 = function()
    CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.3))
    CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  end
  SOUND:PlaySe(SymSnd("SE_EVT_DOTEKKOTSU"), Volume(256))
  TASK:Regist(taskShake00)
  WINDOW:SwitchTalk({PARTNER_0 = -579391917, PARTNER_1 = -999547118})
  WINDOW:CloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_03"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("ABAGOORA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("ABAGOORA"), 119212981)
  WINDOW:KeyWait()
  TASK:Regist(taskShake00)
  WINDOW:Talk(SymAct("ABAGOORA"), 503331572)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.GLADNESS)
  WINDOW:SwitchTalk({PARTNER_0 = 892168503, PARTNER_1 = 741759094})
  WINDOW:SwitchTalk({PARTNER_0 = 1668796081, PARTNER_1 = 2053963760})
  subEveCloseMsg()
  TASK:Regist(taskShake00)
  WINDOW:DrawFace(324, 88, SymAct("ABAGOORA"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("ABAGOORA"), 1363258419)
  WINDOW:CloseMessage()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(4))
  CH("PARTNER"):WaitMove()
  CH("PARTNER"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 1213898098, PARTNER_1 = -809336387})
  WINDOW:CloseMessage()
  CH("PARTNER"):RunTo(SymPos("P01_PARTNER"), Speed(4))
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("PARTNER"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -690376452, PARTNER_1 = -1079546672})
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = -1497604719, PARTNER_1 = -1919873454})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetFacialMotion()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.3))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
    CH("HERO"):SetManpu("MP_NOTICE_R")
    CH("HERO"):DirTo(SymPos("P00_KONOHANA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("PARTNER"):SetManpu("MP_NOTICE_R")
    CH("PARTNER"):DirTo(SymPos("P00_KONOHANA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  SOUND:FadeOutBgm(TimeSec(1.5))
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(1), Volume(256))
  CH("KONOHANA"):WalkTo(SymPos("P00_KONOHANA"), Speed(1.5))
  CH("KONOHANA"):WaitMove()
  CH("KONOHANA"):SetManpu("MP_EXCLAMATION")
  CH("KONOHANA"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), -1802879213)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = -607409708, PARTNER_1 = -1026516843})
  CH("KONOHANA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("KONOHANA"):WaitRotate()
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), -369243306)
  WINDOW:KeyWait()
  CH("KONOHANA"):SetManpu("MP_LAUGH_LP")
  CH("KONOHANA"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("KONOHANA"), -253298153)
  WINDOW:CloseMessage()
  CH("KONOHANA"):ResetManpu()
  CH("KONOHANA"):ResetFacialMotion()
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = 2004805336, PARTNER_1 = 1852168089})
  WINDOW:SwitchTalk({PARTNER_0 = 577786985, PARTNER_1 = 996893992})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), 273037035)
  WINDOW:Talk(SymAct("KONOHANA"), 157091754)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = 1176277357, PARTNER_1 = 1594335276})
  WINDOW:SwitchTalk({PARTNER_0 = 1948972015, PARTNER_1 = 1831977646})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), -357966239)
  WINDOW:Talk(SymAct("KONOHANA"), -206377184)
  WINDOW:Talk(SymAct("KONOHANA"), -1697893620)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = -2083061171, PARTNER_1 = -1459990130})
  WINDOW:SwitchTalk({PARTNER_0 = -1310629681, PARTNER_1 = -23005688})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), -407124151)
  WINDOW:Talk(SymAct("KONOHANA"), -862546806)
  WINDOW:CloseMessage()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = -712137269, PARTNER_1 = 1377155332})
  WINDOW:CloseMessage()
  SOUND:FadeOutEnv(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  CH("PARTNER"):ResetFacialMotion()
end
function main10_kodomotachitonoboukengaowari06_end()
end
function main10_kodomotachitonoboukengaowari07_init()
end
function main10_kodomotachitonoboukengaowari07_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV1001"))
  MAP:SetVisibleBG(true)
  SOUND:PlayBgm(SymSnd("BGM_EVE_SHINPI"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 1259243589, PARTNER_1 = -2005295902})
  WINDOW:SwitchTalk({PARTNER_0 = -1855803997, PARTNER_1 = -1169162656})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), -1554723039)
  WINDOW:Talk(SymAct("KONOHANA"), -334145050)
  WINDOW:Talk(SymAct("KONOHANA"), -183605081)
  WINDOW:Talk(SymAct("KONOHANA"), -568116380)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main10_kodomotachitonoboukengaowari07_end()
end
function main10_kodomotachitonoboukengaowari08_init()
end
function main10_kodomotachitonoboukengaowari08_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_SHINPI"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:SwitchTalk({PARTNER_0 = -952628699, PARTNER_1 = 1084233450})
  WINDOW:SwitchTalk({PARTNER_0 = 1505437611, PARTNER_1 = 818281351})
  subEveCloseMsg()
  CH("PARTNER"):ResetFacialMotion()
  CH("KONOHANA"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("KONOHANA"), 702466758)
  WINDOW:KeyWait()
  CH("KONOHANA"):ResetManpu()
  WINDOW:DrawFace(324, 88, SymAct("KONOHANA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KONOHANA"), 49518853)
  WINDOW:Talk(SymAct("KONOHANA"), 468232260)
  WINDOW:Talk(SymAct("KONOHANA"), 1420377731)
  WINDOW:Talk(SymAct("KONOHANA"), 1303515074)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), 1721719809)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(1.5))
end
function main10_kodomotachitonoboukengaowari08_end()
end
function groundEnd()
end

