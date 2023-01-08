dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main07_tsunagariorbnosetsumei01_init()
end
function main07_tsunagariorbnosetsumei01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("HERO"):SetPosition(SymPos("P01_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P01_PARTNER"))
  CH("DENRYUU"):SetPosition(SymPos("P02_DENRYUU"))
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0))
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0))
  CH("HERO"):SetDir(SymPos("P02_DENRYUU"))
  CH("PARTNER"):SetDir(CH("HERO"))
  CH("DENRYUU"):SetDir(CH("PARTNER"))
  CH("HIPOPOTASU"):SetDir(SymPos("P02_DENRYUU"))
  CH("HASUBURERO"):SetDir(SymPos("P01_DENRYUU"))
  CH("HIMANATTSU"):SetDir(SymPos("P01_DENRYUU"))
  CH("RATTA"):SetDir(SymPos("P01_DENRYUU"))
  CH("HERO"):WaitNeckRot()
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_02"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- local taskHero00 = function()
  --   CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  --   CH("HERO"):WaitMove()
  --   CH("HERO"):SetManpu("MP_EXCLAMATION")
  --   CH("HERO"):DirTo(RotateTarget(-25), Speed(350), ROT_TYPE.NEAR)
  -- end
  -- TASK:Regist(taskHero00)
  -- CH("PARTNER"):WalkTo(SymPos("P00_PARTNER"), Speed(1.5))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CH("PARTNER"):WaitMove()
  -- CH("PARTNER"):DirTo(RotateTarget(-25), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_NOTICE_L")
  -- WINDOW:DrawFaceF(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1472638211, PARTNER_1 = 1323146306})
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- local taskRuchaburu00 = function()
  --   CH("RUCHABURU"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
  --   CH("RUCHABURU"):WaitPlayMotion()
  --   CH("RUCHABURU"):SetManpu("MP_FLY_SWEAT")
  --   CH("RUCHABURU"):SetMotion(SymMot("ATTACK"), LOOP.OFF)
  --   CH("RUCHABURU"):WaitPlayMotion()
  --   CH("RUCHABURU"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  --   CH("RUCHABURU"):SetManpu("MP_FLY_SWEAT")
  --   CH("RUCHABURU"):SetMotion(SymMot("ATTACK"), LOOP.OFF)
  --   CH("RUCHABURU"):WaitPlayMotion()
  --   CH("RUCHABURU"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- end
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_02"), Volume(256))
  -- CH("DENRYUU"):SetMotion(SymMot("EV006_WALK"), LOOP.ON)
  -- CH("DENRYUU"):MoveTo(SymPos("P00_DENRYUU"), Speed(1.5))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HASUBURERO"):SetManpu("MP_FLY_SWEAT_LP")
  -- TASK:Regist(subEveMoveDir, {
  --   CH("HASUBURERO"),
  --   SymPos("P00_HASUBURERO"),
  --   Speed(3),
  --   CH("DENRYUU")
  -- })
  -- CH("RUCHABURU"):DirTo(CH("DENRYUU"), Speed(500), ROT_TYPE.NEAR)
  -- CH("RUCHABURU"):WaitRotate()
  -- CH("RUCHABURU"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- CH("DENRYUU"):WaitMove()
  -- TASK:Regist(taskRuchaburu00)
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- SOUND:PlaySe(SymSnd("SE_EVT_NOKOTCHI_RISE"), Volume(256))
  -- EFFECT:Create("effectSmoke", SymEff("EV_SMOKE_DUST"))
  -- EFFECT:SetPosition("effectSmoke", SymPos("P_EFF_SMOKE_00"))
  -- EFFECT:Play("effectSmoke")
  -- CH("DENRYUU"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
  -- TASK:Sleep(TimeSec(0.2))
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- CH("HIPOPOTASU"):SetManpu("MP_EXCLAMATION")
  -- CH("RATTA"):SetManpu("MP_EXCLAMATION")
  -- CH("HIMANATTSU"):SetManpu("MP_EXCLAMATION")
  -- CH("HIPOPOTASU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HIMANATTSU"):DirTo(CH("DENRYUU"), Speed(500), ROT_TYPE.NEAR)
  -- CH("RATTA"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HASUBURERO"):ResetManpu()
  -- CH("DENRYUU"):DirTo(SymPos("P01_DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- CH("DENRYUU"):SetMotion(SymMot("EV006_WALK"), LOOP.ON)
  -- CH("DENRYUU"):MoveTo(SymPos("P01_DENRYUU"), Speed(2))
  -- CH("HASUBURERO"):DirTo(SymPos("P01_DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.4))
  -- CH("HIPOPOTASU"):SetManpu("MP_FLY_SWEAT")
  -- CH("HIMANATTSU"):DirTo(SymPos("P01_DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  -- CH("RATTA"):DirTo(SymPos("P01_DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("HIPOPOTASU"):DirTo(RotateTarget(90), Speed(500), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitMove()
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- SOUND:PlaySe(SymSnd("SE_EVT_NOKOTCHI_RISE"), Volume(256))
  -- EFFECT:Create("effectSmoke2", SymEff("EV_SMOKE_DUST"))
  -- EFFECT:SetPosition("effectSmoke2", SymPos("P_EFF_SMOKE_01"))
  -- EFFECT:Play("effectSmoke2")
  -- CH("DENRYUU"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
  -- CH("HIPOPOTASU"):SetManpu("MP_SHOCK_R")
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("HIPOPOTASU")
  -- })
  -- CH("RATTA"):SetManpu("MP_SHOCK_R")
  -- CH("HIMANATTSU"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HASUBURERO"):SetManpu("MP_FLY_SWEAT")
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- CH("DENRYUU"):WaitPlayMotion()
  -- CH("DENRYUU"):DirTo(SymPos("P02_DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("DENRYUU"):SetMotion(SymMot("EV006_WALK"), LOOP.ON)
  -- CH("DENRYUU"):MoveTo(SymPos("P02_DENRYUU"), Speed(2))
  -- TASK:Sleep(TimeSec(0.4))
  -- CH("HIPOPOTASU"):DirTo(SymPos("P02_DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.4))
  -- CH("HERO"):DirTo(SymPos("P02_DENRYUU"), Speed(60), ROT_TYPE.NEAR)
  -- CH("PARTNER"):DirTo(SymPos("P02_DENRYUU"), Speed(60), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitMove()
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- SOUND:PlaySe(SymSnd("SE_EVT_NOKOTCHI_RISE"), Volume(256))
  -- EFFECT:Create("effectSmoke3", SymEff("EV_SMOKE_DUST"))
  -- EFFECT:SetPosition("effectSmoke3", SymPos("P_EFF_SMOKE_02"))
  -- EFFECT:Play("effectSmoke3")
  -- CH("DENRYUU"):SetMotion(SymMot("DAMAGE"), LOOP.OFF)
  -- CH("HIPOPOTASU"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):SetManpu("MP_SHOCK_L")
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("HASUBURERO"):SetManpu("MP_EXCLAMATION")
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- CH("DENRYUU"):WaitPlayMotion()
  -- CH("DENRYUU"):SetMotion(SymMot("CONFUSE"), LOOP.ON)
  -- CH("PARTNER"):WalkTo(SymPos("P01_PARTNER"), Speed(2))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(2))
  -- CH("PARTNER"):WaitMove()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.CATCHBREATH)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1710280577, PARTNER_1 = 2095840960})
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.FAINT)
  -- WINDOW:Talk(SymAct("DENRYUU"), 866805767)
  -- WINDOW:Talk(SymAct("DENRYUU"), 716265798)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = 27003525, PARTNER_1 = 411515844})
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.FAINT)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1625348341)
  -- WINDOW:KeyWait()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  -- CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  -- WINDOW:Talk(SymAct("DENRYUU"), -2046552502)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.5))
  -- TASK:Sleep(TimeSec(0.5))
  -- CH("DENRYUU"):DirTo(CH("PARTNER"), Speed(200), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1519806407)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1133336200)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1755317573)
  -- WINDOW:CloseMessage()
  -- EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  -- EFFECT:SetPosition("effectBgConLp", CH("DENRYUU"), BODY_POINT.CENTER)
  -- EFFECT:Play("effectBgConLp")
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_STYLISH"))
  -- CH("DENRYUU"):SetMotion(SymMot("EV006_POSE00"), LOOP.OFF)
  -- CH("DENRYUU"):WaitPlayMotion()
  -- CH("DENRYUU"):SetMotion(SymMot("EV006_POSE01"), LOOP.ON)
  -- CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  -- WINDOW:Talk(SymAct("DENRYUU"), -1908093958)
  -- WINDOW:CloseMessage()
  -- subEveFlash2()
  -- TASK:Sleep(TimeSec(0.3))
  -- EFFECT:Remove("effectBgConLp")
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- CH("DENRYUU"):ResetManpu()
  -- CH("DENRYUU"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.25))
  -- TASK:Sleep(TimeSec(0.25))
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1056613059)
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.2))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.2))
  -- CH("HERO"):WaitNeckRot()
  -- WINDOW:SysMsg(-669094788)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -214745153)
  -- subEveCloseMsg()


  SYSTEM:ExecuteTutorial("tutorial_menu_diagram")
  SYSTEM:ExecuteTutorial("tutorial_diagram")
  CH("HERO"):ResetNeckRot(TimeSec(0.2))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):ResetNeckRot(TimeSec(0.2))
  CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -366473474)
  -- WINDOW:Talk(SymAct("DENRYUU"), 1840255537)
  -- WINDOW:Talk(SymAct("DENRYUU"), 1957372784)
  -- subEveCloseMsg()
  SYSTEM:ExecuteTutorial("tutorial_quest")
  -- TASK:Sleep(TimeSec(0.5))
  -- WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1210304553)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1362688362)
  -- subEveCloseMsg()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  -- WINDOW:SwitchTalk({PARTNER_0 = -2048240299, PARTNER_1 = -1661901804})
  -- TASK:WaitTask()
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_04"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("PARTNER"):ResetFacialMotion()
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CAMERA:WaitMove()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -743378221, PARTNER_1 = -894712942})
  -- WINDOW:KeyWait()
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  -- WINDOW:SwitchTalk({PARTNER_0 = -511274927, PARTNER_1 = -123887344})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetFacialMotion()
  -- subEveNod(CH("HERO"))
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- TASK:Sleep(TimeSec(0.3))
  -- SOUND:PlayMe(SymSnd("ME_ITEM_IMPORTANT"), Volume(256))
  -- WINDOW:SysMsg(2131082719)
  -- WINDOW:SysMsg(1713278110)
  -- SOUND:WaitMe()
  -- WINDOW:CloseMessage()
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main07_tsunagariorbnosetsumei01_end()
end
function groundEnd()
end
function tutorial_event_01_01()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 257970354)
  subEveCloseMsg()
end
function tutorial_event_01_02()
  WINDOW:SysMsg(377184755)
  subEveCloseMsg()
end
function tutorial_event_01_02_error()
  WINDOW:SysMsg(1029059120)
  subEveCloseMsg()
end
function tutorial_event_01_03()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 609026929)
  WINDOW:CloseMessage()
end
function tutorial_event_02_01()
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 1795986870, PARTNER_1 = 1914152183})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 1497036596)
  subEveCloseMsg()
end
function tutorial_event_02_02()
  WINDOW:SysMsg(1075955317)
  WINDOW:CloseMessage()
end
function tutorial_event_02_02_error()
  WINDOW:SysMsg(-944121158)
  WINDOW:CloseMessage()
end
function tutorial_event_03_01()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -559748101, PARTNER_1 = -1833474037})
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = -1951639222, PARTNER_1 = -1602155895})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -1181074488)
  WINDOW:Talk(SymAct("DENRYUU"), -153375473)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -272589746, PARTNER_1 = -991047795})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -571015476)
  WINDOW:Talk(SymAct("DENRYUU"), 1517216259)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 1131795266, PARTNER_1 = 705367918})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 856702511)
  subEveCloseMsg()
end
function tutorial_event_03_01_error()
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 406679020)
  subEveCloseMsg()
end
function tutorial_event_04_01()
  WINDOW:SysMsg(19291309)
  WINDOW:SysMsg(1315424874)
  WINDOW:CloseMessage()
end
function tutorial_event_04_01_error()
  WINDOW:SysMsg(1467808555)
  WINDOW:CloseMessage()
end
function tutorial_event_05_01()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 2085726440)
  subEveCloseMsg()
end
function tutorial_event_05_02()
  WINDOW:SysMsg(1699387817)
  subEveCloseMsg()
end
function tutorial_event_05_02_error()
  WINDOW:SysMsg(-489519770)
  subEveCloseMsg()
end
function tutorial_event_05_03()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -70667225)
  subEveCloseMsg()
end
function tutorial_event_06_01()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 952017024)
  WINDOW:Talk(SymAct("DENRYUU"), 564498881)
  WINDOW:Talk(SymAct("DENRYUU"), 176734722)
  subEveCloseMsg()
end

