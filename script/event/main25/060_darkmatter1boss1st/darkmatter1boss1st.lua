dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main25_darkmatter1boss1st01_init()
end
function main25_darkmatter1boss1st01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -467870056, PARTNER_1 = -49811495})
  WINDOW:CloseMessage()
  EFFECT:Create("effectDarkMatterM25Lp", SymEff("EV_DARKMATTER_M25_LP"))
  EFFECT:SetPosition("effectDarkMatterM25Lp", SymPos("P_EFF_EV_DARKMATTER_LP"))
  EFFECT:SetScale("effectDarkMatterM25Lp", Scale(3))
  EFFECT:Play("effectDarkMatterM25Lp")
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:FadeInBgm(SymSnd("SE_EVT_DARKMATTER_UGOMEKU_LP"), TimeSec(0.5), Volume(128))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-701842406)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -818836133, PARTNER_1 = -2140136548})
  WINDOW:SwitchTalk({PARTNER_0 = -1721029923, PARTNER_1 = -1304004322})
  CAMERA:WaitMove()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_DARKMATTER_UMEKI"), Volume(128))
  WINDOW:SysMsg(-1419949985)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutSe(SymSnd("SE_EVT_DARKMATTER_UMEKI"), TimeSec(0.5))
  WINDOW:KeyWait()
  SOUND:FadeOutBgm(TimeSec(0.5))
  EFFECT:ChangeColor("effectDarkMatterM25Lp", Color(1, 1, 1, 0), TimeSec(30, TIME_TYPE.FRAME))
  EFFECT:StartMotionBlur(0, 0, 0)
  EFFECT:ChangeMotionBlurLevel(0.04, TimeSec(0.05))
  EFFECT:ChangeMotionBlurAlpha(0.9, TimeSec(0.05))
  EFFECT:Create("effectDarkSmokeM25", SymEff("EV_DARK_SMOKE_M25"))
  EFFECT:SetPosition("effectDarkSmokeM25", SymPos("P_EFF_EV_DARK_SMOKE_M25"))
  EFFECT:Play("effectDarkSmokeM25")
  SOUND:PlaySe(SymSnd("SE_EVT_DARKMATTER_CRY_03"), Volume(128))
  WINDOW:SysMsg(751129744)
  TASK:Sleep(TimeSec(15, TIME_TYPE.FRAME))
  WINDOW:ForceCloseMessage()
  EFFECT:SetScale("effectDarkMatterM25Lp", Scale(1))
  EFFECT:EndMotionBlur()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CH("HERO"):SetMotion(SymMot("EV018_LIES00"), LOOP.OFF)
  CH("HERO"):MoveTo(SymPos("P00_HERO"), Speed(1.5), LINK_DIR.OFF)
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetMotion(SymMot("EV018_LIES00"), LOOP.OFF)
  CH("PARTNER"):MoveTo(SymPos("P00_PARTNER"), Speed(1.5), LINK_DIR.OFF)
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 903767505, PARTNER_1 = -19900236})
  SCREEN_A:FadeOut(TimeSec(0.1), false)
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  EFFECT:Remove("effectDarkMatterM25Lp")
  SCREEN_A:FadeInAll(TimeSec(0), true)
  TASK:Sleep(TimeSec(1))
end
function main25_darkmatter1boss1st01_end()
end
function main25_darkmatter1boss1st02_init()
end
function main25_darkmatter1boss1st02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  CAMERA:MoveFollow2(SymCam("CAMERA_00_5"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  GM("EV255_DARK01"):SetMotion(SymMot("FINE_KEEP"), LOOP.ON)
  GM("DARKMATTER"):SetMotion(SymMot("WAIT00"), LOOP.ON)
  CHARA:SetAllCharacterShadowVisible(false)
  SOUND:FadeInBgm(SymSnd("BGM_EVE_UNIVERSE_01"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(3))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  subEveFadeAfterTime()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  CAMERA:MoveFollow2(SymCam("CAMERA_01_5"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(3))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  subEveFadeAfterTime()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CAMERA:MoveFollow2(SymCam("CAMERA_02_1"), Speed(1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:FadeInEnv(SymSnd("SE_EVT_DARKMATTER_LP"), TimeSec(0.5), Volume(128))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(3))
  CAMERA:SetEye(SymCam("CAMERA_02_5"))
  CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  CAMERA:SetFovy(SymCam("CAMERA_02_5"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -406099467, PARTNER_1 = -857327050})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-704836745)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CAMERA:SetRotateZ(SymCam("CAMERA_03"))
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1698914896, PARTNER_1 = -2086163215})
  WINDOW:SwitchTalk({PARTNER_0 = -1467285710, PARTNER_1 = -1315844493})
  subEveCloseMsg()
  WINDOW:DrawFace(72, 88, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:DrawFaceOffset(20, 15)
  WINDOW:Monologue(906613436)
  WINDOW:CloseMessage()
  CAMERA:SetRotateZ(Degree(0))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_DARKMATTER_UMEKI"), Volume(128))
  WINDOW:SysMsg(789767165)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutSe(SymSnd("SE_EVT_DARKMATTER_UMEKI"), TimeSec(0.5))
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:SetFovy(SymCam("CAMERA_05"))
  CAMERA:SetRotateZ(SymCam("CAMERA_05"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -328861862, PARTNER_1 = -176241125})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-564947496)
  WINDOW:CloseMessage()
  CAMERA:SetRotateZ(Degree(0))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  CAMERA:MoveFollow2(SymCam("CAMERA_04_5"), Speed(0.3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:SysMsg(-951540583)
  WINDOW:SysMsg(-2012663202)
  WINDOW:SysMsg(-1861090529)
  WINDOW:SysMsg(-1170255652)
  SOUND:FadeOutBgm(TimeSec(2))
  SOUND:FadeOutEnv(TimeSec(2))
  WINDOW:SysMsg(-1557896803)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:CloseMessage()
  CH("DARKMATTER_01"):SetVisible(false)
  CH("HERO"):SetVisible(false)
  local pokemonIndexPartner = SymAct("PARTNER"):GetIndex()
  if pokemonIndexPartner == 481 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
  elseif pokemonIndexPartner == 3 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
  end
  EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  EFFECT:SetPosition("effectBgConLp", CH("PARTNER"), BODY_POINT.CENTER)
  EFFECT:Play("effectBgConLp")
  SOUND:PlayBgm(SymSnd("BGM_EVE_POKEMON_NO_CHIKARA_02"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CAMERA:SetFovy(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:SwitchTalk({PARTNER_0 = 616332626, PARTNER_1 = 1034374163})
  WINDOW:SwitchTalk({PARTNER_0 = 1423544383, PARTNER_1 = 1304600958})
  WINDOW:CloseMessage()
  EFFECT:Remove("effectBgConLp")
  CH("HERO"):SetVisible(true)
  CH("DARKMATTER_01"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CAMERA:SetRotateZ(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(72, 88, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:DrawFaceOffset(20, 15)
  WINDOW:Monologue(1727001277)
  WINDOW:Monologue(2146747388)
  WINDOW:Monologue(817190203)
  WINDOW:CloseMessage()
  CAMERA:SetRotateZ(Degree(0))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:SetFovy(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 699294842, PARTNER_1 = 42153913})
  CH("HERO"):SetManpu("MP_NOTICE_L")
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  CAMERA:SetFovy(SymCam("CAMERA_07"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 462948088, PARTNER_1 = -1677714889})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-2061816970)
  WINDOW:Monologue(-921786234)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  CAMERA:SetFovy(SymCam("CAMERA_08"))
  SOUND:PlaySe(SymSnd("SE_EVT_LIFETREE_GOD"), Volume(190))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-803890745)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -80164348, PARTNER_1 = -500958395})
  WINDOW:SwitchTalk({PARTNER_0 = -1386058366, PARTNER_1 = -1267114813})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  CAMERA:SetFovy(SymCam("CAMERA_09"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = -1621881088, PARTNER_1 = -2041627071})
  WINDOW:SwitchTalk({PARTNER_0 = 30876302, PARTNER_1 = 416027599})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_10"))
  CAMERA:SetTgt(SymCam("CAMERA_10"))
  CAMERA:SetFovy(SymCam("CAMERA_10"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 1907544035, PARTNER_1 = 1755971234})
  WINDOW:SwitchTalk({PARTNER_0 = 1132768609, PARTNER_1 = 1520409632})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:Monologue(366873319)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:SysMsg(214252454)
  WINDOW:CloseMessage()
  CH("HERO"):SetVisible(false)
  CH("DARKMATTER_01"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CAMERA:SetFovy(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:SwitchTalk({PARTNER_0 = 669542501, PARTNER_1 = 1056135460})
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.3), true)
end
function main25_darkmatter1boss1st02_end()
end
function main25_darkmatter1boss1st03_init()
end
function main25_darkmatter1boss1st03_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_POKEMON_NO_CHIKARA_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CH("REKKUUZA_MEGA"):SetShadow(false)
  CH("DEOKISHISU_N"):SetShadow(false)
  CUT:Load(SymCut("m25_060_03"))
  CUT:Play()
  CUT:Wait()
  CUT:Destroy()
end
function main25_darkmatter1boss1st03_cut_talk_01()
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:SysMsg(-1184152085)
  WINDOW:CloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
end
function main25_darkmatter1boss1st03_end()
end
function main25_darkmatter1boss1st04_init()
end
function main25_darkmatter1boss1st04_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_POKEMON_NO_CHIKARA_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CH("MYUUTSUU_MEGA_Y"):SetEyeMotion(EYE_MOTION.CLOSE)
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(0.1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("MYUUTSUU_MEGA_Y"):SetShadow(false)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:SysMsg(-1603242838)
  WINDOW:CloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main25_darkmatter1boss1st04_end()
end
function main25_darkmatter1boss1st05_init()
end
function main25_darkmatter1boss1st05_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_POKEMON_NO_CHIKARA_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(0.1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:SysMsg(1661427725)
  WINDOW:CloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main25_darkmatter1boss1st05_end()
end
function main25_darkmatter1boss1st06_init()
end
function main25_darkmatter1boss1st06_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_POKEMON_NO_CHIKARA_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("DENRYUU"):SetNeckRot(RotateTarget(0), RotateTarget(20), RotateTarget(0), TimeSec(0))
  CH("NYASUPAA"):SetNeckRot(RotateTarget(0), RotateTarget(40), RotateTarget(0), TimeSec(0))
  MAP:ChangeLightColor(Color(0.4, 0.4, 0.4, 1), TimeSec(0))
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(0.2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  local taskSound00 = function()
    TASK:Sleep(TimeSec(1))
    SOUND:FadeOutBgm(TimeSec(3))
  end
  TASK:Regist(taskSound00)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:SysMsg(2048676172)
  WINDOW:CloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  MAP:ReturnLightColor(TimeSec(0, TIME_TYPE.FRAME))
end
function main25_darkmatter1boss1st06_end()
end
function main25_darkmatter1boss1st07_init()
end
function main25_darkmatter1boss1st07_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetRotateZ(Degree(0))
  CAMERA:SetEye(SymCam("CAMERA_02_5"))
  CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  CAMERA:SetFovy(SymCam("CAMERA_02_5"))
  CHARA:SetAllCharacterShadowVisible(false)
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  GM("EV255_DARK01"):SetMotion(SymMot("FINE_KEEP"), LOOP.ON)
  GM("DARKMATTER"):SetMotion(SymMot("WAIT00"), LOOP.ON)
  SOUND:PlayBgm(SymSnd("BGM_EVE_BOSS_DARKMATTER_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)

  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- GM("EV255_DARK01"):SetMotion(SymMot("FINE_KEEP"), LOOP.ON)
  -- GM("DARKMATTER"):SetMotion(SymMot("WAIT00"), LOOP.ON)
  -- CHARA:SetAllCharacterShadowVisible(false)
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CAMERA:SetFovy(SymCam("CAMERA_00"))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_00_5"), Speed(2.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  -- CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_BOSS_DARKMATTER_01"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CAMERA:WaitMove()
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CAMERA:SetFovy(SymCam("CAMERA_01"))
  -- CAMERA:SetRotateZ(SymCam("CAMERA_01"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1362166415, PARTNER_1 = 1210725326})
  -- WINDOW:CloseMessage()
  -- subEveFlash2()
  -- CAMERA:SetRotateZ(Degree(0))
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- CAMERA:SetFovy(SymCam("CAMERA_02"))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  CAMERA:SetDefaultGroundFovy()
  SYSTEM:SetNextDungeonBanner(false)
end
function main25_darkmatter1boss1st07_end()
end
function groundEnd()
end

