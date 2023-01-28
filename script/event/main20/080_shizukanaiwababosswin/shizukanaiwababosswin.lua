dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main20_shizukanaiwababosswin01_init()
end
function main20_shizukanaiwababosswin01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00_5"))
  CAMERA:SetTgt(SymCam("CAMERA_00_5"))
  CAMERA:MoveFollow2(SymCam("CAMERA_00"), Speed(0.7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("BUIZERU"):SetMotion(SymMot("EV020_DOWN00"), LOOP.ON, TimeSec(0))
  CH("HERO"):SetMotion(SymMot("EV000_CSWAIT"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("EV000_CSWAIT"), LOOP.ON, TimeSec(0))
  CH("SHADOW_OF_NIHIL"):SetVisible(false)
  CH("SHADOW_OF_NIHIL2"):SetVisible(false)
  CH("SHADOW_OF_NIHIL3"):SetVisible(false)
  CH("SHADOW_OF_NIHIL4"):SetVisible(false)
  CH("SHADOW_OF_NIHIL5"):SetVisible(false)
  CH("SHADOW_OF_NIHIL6"):SetVisible(false)
  CH("SHADOW_OF_NIHIL7"):SetVisible(false)
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = -1605662802, PARTNER_1 = -1185892625})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("AAKEN"), -1837243092)
  CAMERA:WaitMove()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  CAMERA:SetRotateZ(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  local taskShadow00 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_AMEBA_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL"):SetVisible(true)
    CH("SHADOW_OF_NIHIL"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
    SOUND:PlaySe(SymSnd("SE_EVT_KK_UGOMEKU_LP"), Volume(256))
  end
  TASK:Regist(taskShadow00)
  TASK:Sleep(TimeSec(0.2))
  local taskShadow02 = function()
    CH("SHADOW_OF_NIHIL2"):SetVisible(true)
    CH("SHADOW_OF_NIHIL2"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL2"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL2"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL2"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL2"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow02)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("AAKEN"):SetManpu("MP_SHOCK_L")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.2))
  CH("KUCHIITO"):DirTo(CH("SHADOW_OF_NIHIL"), Speed(500), ROT_TYPE.NEAR)
  CH("AAKEN"):DirTo(CH("SHADOW_OF_NIHIL2"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("DEDENNE"):DirTo(CH("SHADOW_OF_NIHIL2"), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("SHADOW_OF_NIHIL"), Speed(500), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("SHADOW_OF_NIHIL"), Speed(500), ROT_TYPE.NEAR)
  CH("KUCHIITO"):WaitRotate()
  CH("AAKEN"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("HERO"):WaitRotate()
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0.2))
  TASK:Sleep(TimeSec(2.3))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CAMERA:SetRotateZ(SymCam("CAMERA_02"))
  CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  local taskShadow03 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_AMEBA_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL3"):SetVisible(true)
    CH("SHADOW_OF_NIHIL3"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL3"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL3"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL3"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL3"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
    SOUND:PlaySe(SymSnd("SE_EVT_KK_UGOMEKU_LP"), Volume(256))
  end
  TASK:Regist(taskShadow03)
  TASK:Sleep(TimeSec(0.2))
  local taskShadow04 = function()
    CH("SHADOW_OF_NIHIL4"):SetVisible(true)
    CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL4"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL4"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow04)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("DEDENNE"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.2))
  CH("KUCHIITO"):DirTo(CH("SHADOW_OF_NIHIL3"), Speed(500), ROT_TYPE.NEAR)
  CH("DEDENNE"):DirTo(CH("SHADOW_OF_NIHIL4"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("KUCHIITO"):WaitRotate()
  CH("KUCHIITO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("AAKEN"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("DEDENNE"):WaitRotate()
  CH("DEDENNE"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  TASK:Sleep(TimeSec(2.3))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CAMERA:SetRotateZ(SymCam("CAMERA_03"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("AAKEN"):SetManpu("MP_FLY_SWEAT")
  CH("AAKEN"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("AAKEN"), -1956195219)
  WINDOW:Talk(SymAct("AAKEN"), -1004059990)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("DEDENNE"):SetManpu("MP_FLY_SWEAT")
  CH("DEDENNE"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("DEDENNE"), -583240725)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:SetFovy(SymCam("CAMERA_05"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  TASK:Sleep(TimeSec(0.2))
  local taskShadow05 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_AMEBA_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL5"):SetVisible(true)
    CH("SHADOW_OF_NIHIL5"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL5"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL5"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL5"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL5"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow05)
  TASK:Sleep(TimeSec(0.2))
  local taskShadow06 = function()
    CH("SHADOW_OF_NIHIL6"):SetVisible(true)
    CH("SHADOW_OF_NIHIL6"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL6"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL6"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL6"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL6"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow06)
  TASK:Sleep(TimeSec(0.1))
  local taskShadow07 = function()
    CH("SHADOW_OF_NIHIL7"):SetVisible(true)
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL7"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL7"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow07)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):DirTo(CH("SHADOW_OF_NIHIL6"), Speed(500), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  WINDOW:DrawFace(20, 88, SymAct("KUCHIITO"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("KUCHIITO"), -166649816)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("KUCHIITO"):SetDir(RotateTarget(45))
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CAMERA:SetFovy(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  CH("SHADOW_OF_NIHIL3"):SetManpu("EV_NIHIL_MOVE")
  CH("SHADOW_OF_NIHIL3"):MoveTo(SymPos("P00_KAGE01"), Speed(1.5))
  SOUND:PlaySe(SymSnd("SE_EVT_KK_ATTACK"))
  CH("SHADOW_OF_NIHIL3"):SetMotion(SymMot("EV020_AT00"), LOOP.OFF)
  CH("SHADOW_OF_NIHIL3"):WaitPlayMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_KK_NOMIKOMU_01"))
  CH("SHADOW_OF_NIHIL3"):SetMotion(SymMot("EV020_AT01"), LOOP.ON)
  CH("BUIZERU"):ChangeColor(Color(1, 1, 1, 0), TimeSec(15, TIME_TYPE.FRAME))
  TASK:Sleep(TimeSec(0.5))
  CH("BUIZERU"):SetVisible(false)
  CAMERA:MoveFollow2(SymCam("CAMERA_06_5"), Speed(9, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("KUCHIITO"):DirTo(CH("SHADOW_OF_NIHIL3"), Speed(500), ROT_TYPE.NEAR)
  CH("AAKEN"):DirTo(CH("SHADOW_OF_NIHIL3"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("DEDENNE"):DirTo(CH("SHADOW_OF_NIHIL3"), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("SHADOW_OF_NIHIL3"), Speed(500), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("SHADOW_OF_NIHIL3"), Speed(500), ROT_TYPE.NEAR)
  CH("KUCHIITO"):WaitRotate()
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("AAKEN"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.2))
  CH("SHADOW_OF_NIHIL3"):SetMotion(SymMot("EV020_AT02"), LOOP.OFF)
  CH("SHADOW_OF_NIHIL3"):WaitPlayMotion()
  CH("SHADOW_OF_NIHIL3"):SetVisible(false)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("KUCHIITO"):SetManpu("MP_SHOCK_L")
  CH("AAKEN"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_SHOCK_R")
  CH("DEDENNE"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("DEDENNE"), -284552855)
  WINDOW:CloseMessage()
  CH("HERO"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  CAMERA:SetFovy(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  local taskShadow14 = function()
    CH("SHADOW_OF_NIHIL4"):SetManpu("EV_NIHIL_MOVE")
    CH("SHADOW_OF_NIHIL4"):MoveTo(SymPos("P00_KAGE02"), Speed(2))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_ATTACK"))
    TASK:Sleep(TimeSec(10, TIME_TYPE.FRAME))
    CH("DEDENNE"):SetMotion(SymMot("ENDURE"), LOOP.ON)
    CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_AT00"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL4"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_AT01"), LOOP.ON)
    CH("DEDENNE"):ChangeColor(Color(1, 1, 1, 0), TimeSec(15, TIME_TYPE.FRAME))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_NOMIKOMU_02_LP"))
    TASK:Sleep(TimeSec(15, TIME_TYPE.FRAME))
    CH("DEDENNE"):SetVisible(false)
  end
  TASK:Regist(taskShadow14)
  TASK:Sleep(TimeSec(0.2))
  CH("DEDENNE"):SetManpu("MP_SHOCK_R")
  CH("DEDENNE"):DirTo(CH("SHADOW_OF_NIHIL4"), Speed(500), ROT_TYPE.NEAR)
  local taskShadow17 = function()
    CH("SHADOW_OF_NIHIL7"):SetManpu("EV_NIHIL_MOVE")
    CH("SHADOW_OF_NIHIL7"):MoveTo(SymPos("P00_KAGE03"), Speed(2))
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AT00"), LOOP.OFF)
    SOUND:PlaySe(SymSnd("SE_EVT_KK_ATTACK"))
    TASK:Sleep(TimeSec(10, TIME_TYPE.FRAME))
    CH("AAKEN"):SetMotion(SymMot("ENDURE"), LOOP.ON)
    CH("SHADOW_OF_NIHIL7"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AT01"), LOOP.ON)
    CH("AAKEN"):ChangeColor(Color(1, 1, 1, 0), TimeSec(15, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(15, TIME_TYPE.FRAME))
    CH("AAKEN"):SetVisible(false)
  end
  TASK:Regist(taskShadow17)
  TASK:Sleep(TimeSec(0.1))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("AAKEN"):SetManpu("MP_EXCLAMATION")
  CH("AAKEN"):DirTo(CH("SHADOW_OF_NIHIL7"), Speed(500), ROT_TYPE.NEAR)
  CH("SHADOW_OF_NIHIL7"):WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("AAKEN"), 1754402214)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("DEDENNE"), 1904819431)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:ForceCloseMessage()
  CH("PARTNER"):SetDir(CH("DEDENNE"))
  CH("HERO"):SetDir(CH("DEDENNE"))
  CH("KUCHIITO"):SetDir(CH("DEDENNE"))
  CH("HERO"):SetMotion(SymMot("EV000_CSWAIT"), LOOP.ON, TimeSec(0))
  CH("HERO"):SetDir(RotateTarget(-165))
  CH("HERO"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  CAMERA:SetFovy(SymCam("CAMERA_09"))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1702585542, PARTNER_1 = 2086688135})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_10"))
  CAMERA:SetTgt(SymCam("CAMERA_10"))
  CAMERA:SetFovy(SymCam("CAMERA_10"))
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(2))
  TASK:Sleep(TimeSec(0.1))
  CH("KUCHIITO"):RunTo(SymPos("P00_KUCHIITO"), Speed(4))
  CH("PARTNER"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):WaitMove()
  CH("KUCHIITO"):SetNeckRot(RotateTarget(60), RotateTarget(0), RotateTarget(0), TimeSec(0.2))
  CH("KUCHIITO"):WaitNeckRot()
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("KUCHIITO"), 1464665668)
  subEveCloseMsg()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 1314273029, PARTNER_1 = 18325954})
  WINDOW:SwitchTalk({PARTNER_0 = 403476611, PARTNER_1 = 857850688})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  CAMERA:SetFovy(SymCam("CAMERA_11"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 708506113, PARTNER_1 = -1381830962})
  WINDOW:SwitchTalk({PARTNER_0 = -1262887025, PARTNER_1 = 2010041128})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetFacialMotion()
  EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  EFFECT:SetPosition("effectBgConLp", SymPos("P_EFF_BG_CONCENTRATION_LP"))
  EFFECT:Play("effectBgConLp")
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  CAMERA:SetFovy(SymCam("CAMERA_12"))
  CAMERA:MoveFollow2(SymCam("CAMERA_12_5"), Speed(12, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  WINDOW:SwitchTalk({PARTNER_0 = 1859517033, PARTNER_1 = 1173924266})
  WINDOW:CloseMessage()
  EFFECT:Remove("effectBgConLp")
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  CAMERA:SetFovy(SymCam("CAMERA_11"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 20, SymAct("DEDENNE"), FACE_TYPE.PAIN)
  WINDOW:DrawFaceOffset(20, 0)
  WINDOW:Talk(SymAct("DEDENNE"), 1558419691)
  WINDOW:CloseMessage()
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):SetNeckRot(RotateTarget(-50), RotateTarget(0), RotateTarget(0), TimeSec(0.2))
  CH("KUCHIITO"):WaitNeckRot()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_L")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 329387564, PARTNER_1 = 179912557})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_13"))
  CAMERA:SetTgt(SymCam("CAMERA_13"))
  CAMERA:SetFovy(SymCam("CAMERA_13"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("DEDENNE"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("DEDENNE"), 563375278)
  WINDOW:Talk(SymAct("DEDENNE"), 948919791)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  CAMERA:SetFovy(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:FadeOutSe(SymSnd("SE_EVT_KK_UGOMEKU_LP"), TimeSec(0.5))
  SOUND:FadeOutSe(SymSnd("SE_EVT_KK_NOMIKOMU_02_LP"), TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_KK_NOMIKOMU_01"), Volume(256))
  CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AT02"), LOOP.OFF)
  TASK:Sleep(TimeSec(0.2))
  CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_AT02"), LOOP.OFF)
  CH("SHADOW_OF_NIHIL7"):WaitPlayMotion()
  CH("SHADOW_OF_NIHIL7"):SetVisible(false)
  CH("SHADOW_OF_NIHIL4"):WaitPlayMotion()
  CH("SHADOW_OF_NIHIL4"):SetVisible(false)
  TASK:Sleep(TimeSec(1.5))
  CAMERA:SetEye(SymCam("CAMERA_14"))
  CAMERA:SetTgt(SymCam("CAMERA_14"))
  CAMERA:SetFovy(SymCam("CAMERA_14"))
  CAMERA:MoveFollow2(SymCam("CAMERA_14_5"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  EFFECT:SetPosition("effectBgConLp", SymPos("P_EFF_BG_CONCENTRATION_LP"))
  EFFECT:Play("effectBgConLp")
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(30), RotateTarget(0), TimeSec(0.1))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SHOUT)
  WINDOW:SwitchTalk({PARTNER_0 = -1088995040, PARTNER_1 = -1509134239})
  WINDOW:CloseMessage()
  CH("PARTNER"):SetVisible(false)
  CH("KUCHIITO"):SetVisible(false)
  EFFECT:Remove("effectBgConLp")
  CAMERA:SetEye(SymCam("CAMERA_15"))
  CAMERA:SetTgt(SymCam("CAMERA_15"))
  CAMERA:SetFovy(SymCam("CAMERA_15"))
  local taskShadow10 = function()
    CH("SHADOW_OF_NIHIL"):SetManpu("EV_NIHIL_MOVE")
    CH("SHADOW_OF_NIHIL"):MoveTo(SymPos("P00_KAGE04"), Speed(3))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_ATTACK"))
    CH("SHADOW_OF_NIHIL"):SetMotion(SymMot("EV020_AT00"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL"):SetMotion(SymMot("EV020_AT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow10)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("SHADOW_OF_NIHIL"), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CH("HERO"):SetManpu("MP_SHOCK_L")
  TASK:Regist(subEveJumpSurprise, {
    CH("HERO")
  })
  CH("SHADOW_OF_NIHIL"):WaitMove()
  CH("HERO"):SetMotion(SymMot("ENDURE"), LOOP.ON)
  CH("HERO"):ChangeColor(Color(1, 1, 1, 0), TimeSec(15, TIME_TYPE.FRAME))
  SOUND:PlayEnv(SymSnd("SE_EVT_KK_NOMIKOMU_02_LP"), Volume(256))
  TASK:Sleep(TimeSec(15, TIME_TYPE.FRAME))
  CH("HERO"):SetVisible(false)
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-814568371)
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetNeckRot(TimeSec(0))
  CH("KUCHIITO"):ResetNeckRot(TimeSec(0))
  CH("PARTNER"):SetVisible(true)
  CH("KUCHIITO"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_16"))
  CAMERA:SetTgt(SymCam("CAMERA_16"))
  CAMERA:SetFovy(SymCam("CAMERA_16"))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("KUCHIITO"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_L")
  CH("KUCHIITO"):WaitRotate()
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -697721588, PARTNER_1 = -45822257})
  WINDOW:CloseMessage()
  CH("PARTNER"):SetVisible(false)
  CH("KUCHIITO"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_17"))
  CAMERA:SetTgt(SymCam("CAMERA_17"))
  CAMERA:SetFovy(SymCam("CAMERA_17"))
  CAMERA:MoveFollow2(SymCam("CAMERA_17_5"), Speed(0.1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main20_shizukanaiwababosswin01_end()
end
function main20_shizukanaiwababosswin02_init()
end
function main20_shizukanaiwababosswin02_start()
  SOUND:PlayEnv(SymSnd("SE_EVT_KK_NOMIKOMU_02_LP"), Volume(256))
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-463470706)
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(-1424070327)
  WINDOW:Monologue(-1308272632)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1725428789, PARTNER_1 = -2144126326})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(128656965)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("KUCHIITO"), 514856708)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 1386583284, PARTNER_1 = 1270785461})
  WINDOW:SwitchTalk({PARTNER_0 = 1620309622, PARTNER_1 = 2039007031})
  subEveCloseMsg()
  SOUND:FadeOutBgm(TimeSec(2.5))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(919163376)
  WINDOW:Monologue(802316465)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 83833714, PARTNER_1 = 501482035})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(-1703141636)
  WINDOW:Monologue(-2090389571)
  WINDOW:Monologue(-367397999)
  WINDOW:Monologue(-217922864)
  WINDOW:CloseMessage()
  SOUND:FadeOutEnv(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_WHITEOUT"), Volume(256))
  SCREEN_A:WhiteOutAll(TimeSec(0.5), true)
  subEveFadeAfterTime()
  SCREEN_A:WhiteOut(TimeSec(0), true)
  SCREEN_A:WhiteInAll(TimeSec(0), true)
end
function main20_shizukanaiwababosswin02_end()
end
function main20_shizukanaiwababosswin03_init()
end
function main20_shizukanaiwababosswin03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(1))
  CUT:Load(SymCut("m20_080_03"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_SANSEIJUU"), Volume(256))
  CUT:Play()
  CUT:Wait()
  CUT:Destroy()
end
function main20_shizukanaiwababosswin03_cut_script_05()
  SOUND:PlaySe(SymSnd("SE_EVT_SANSEIJUU"), Volume(190))
end
function main20_shizukanaiwababosswin03_cut_talk_01()
  SOUND:PlaySe(SymSnd("SE_EVT_SANSEIJUU_ATTACK"), Volume(190))
  local taskKageKieru01 = function()
    TASK:Sleep(TimeSec(20, TIME_TYPE.FRAME))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_SPLASH"), Volume(64))
  end
  TASK:Regist(taskKageKieru01)
  local taskKageKieru02 = function()
    TASK:Sleep(TimeSec(30, TIME_TYPE.FRAME))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_SPLASH"), Volume(64))
  end
  TASK:Regist(taskKageKieru02)
  local taskKageKieru03 = function()
    TASK:Sleep(TimeSec(93, TIME_TYPE.FRAME))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_SPLASH"), Volume(64))
  end
  TASK:Regist(taskKageKieru03)
  local taskKageKieru04 = function()
    TASK:Sleep(TimeSec(115, TIME_TYPE.FRAME))
    SOUND:PlaySe(SymSnd("SE_EVT_KK_SPLASH"), Volume(64))
  end
  TASK:Regist(taskKageKieru04)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:SysMsg(-667971309)
  WINDOW:CloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
end
function main20_shizukanaiwababosswin03_cut_script_01()
end
function main20_shizukanaiwababosswin03_cut_script_02()
end
function main20_shizukanaiwababosswin03_cut_script_03()
end
function main20_shizukanaiwababosswin03_cut_script_04()
end
function main20_shizukanaiwababosswin03_end()
end
function main20_shizukanaiwababosswin04_init()
end
function main20_shizukanaiwababosswin04_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_SANSEIJUU"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  EFFECT:Create("effectSmokeEnd", SymEff("EV_RUN_SMOKE_END"))
  EFFECT:SetPosition("effectSmokeEnd", SymPos("P_EFF_SMOKE_END"))
  EFFECT:Play("effectSmokeEnd")
  CH("HERO"):SetMotion(SymMot("EV013_TIRED"), LOOP.ON, TimeSec(0))
  CH("ENTEI"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  TASK:Sleep(TimeSec(0.2))
  CH("RAIKOU"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  TASK:Sleep(TimeSec(0.1))
  CH("SUIKUN"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("SHADOW_OF_NIHIL7"):SetVisible(false)
  CH("SHADOW_OF_NIHIL8"):SetVisible(false)
  CH("KUCHIITO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("EV018_LIES00LOOP"), LOOP.ON, TimeSec(0))
  CH("ENTEI"):SetScale(Scale(1.2))
  CH("RAIKOU"):SetScale(Scale(1.2))
  CH("SUIKUN"):SetScale(Scale(1.2))
  CAMERA:MoveFollow2(SymCam("CAMERA_00_5"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:WhiteIn(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.15))
  CH("KUCHIITO"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.3))
  TASK:Sleep(TimeSec(0.15))
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.3))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_01"), Volume(256))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  EFFECT:Wait("effectSmokeEnd")
  EFFECT:Remove("effectSmokeEnd")
  TASK:Sleep(TimeSec(0.8))
  CH("SUIKUN"):SetVisible(false)
  CH("ENTEI"):SetVisible(false)
  CH("KUCHIITO"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.2))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("HERO"):SetManpu("MP_NOTICE_L")
  CH("HERO"):WaitManpu()
  CH("HERO"):DirTo(RotateTarget(90), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-1053515694)
  WINDOW:CloseMessage()
  CH("SUIKUN"):SetVisible(true)
  CH("ENTEI"):SetVisible(true)
  CH("KUCHIITO"):SetVisible(true)
  CH("RAIKOU"):SetScale(Scale(1.2))
  CH("ENTEI"):SetScale(Scale(1.2))
  CH("SUIKUN"):SetScale(Scale(1.2))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("HERO"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("KUCHIITO"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("KUCHIITO"), -1904920939)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1754396716, PARTNER_1 = -1136438249})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-1520933546)
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("KUCHIITO"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("KUCHIITO"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 20, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 583039385, PARTNER_1 = 1004226776})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.2))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("KUCHIITO"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(20, 20, SymAct("ENTEI"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("ENTEI"), -122921857)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -508072642, PARTNER_1 = -895860995})
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:SwitchTalk({PARTNER_0 = -746516548, PARTNER_1 = -1665099397})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:SetFovy(SymCam("CAMERA_05"))
  CAMERA:SetRotateZ(SymCam("CAMERA_05"))
  local taskShadow00 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_AMEBA_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL7"):SetVisible(true)
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL7"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL7"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow00)
  TASK:Sleep(TimeSec(0.2))
  local taskShadow02 = function()
    CH("SHADOW_OF_NIHIL8"):SetVisible(true)
    CH("SHADOW_OF_NIHIL8"):SetMotion(SymMot("EV020_AP00"), LOOP.OFF, TimeSec(0))
    CH("SHADOW_OF_NIHIL8"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KK_APPEAR"), Volume(256))
    CH("SHADOW_OF_NIHIL8"):SetMotion(SymMot("EV020_AP01"), LOOP.OFF)
    CH("SHADOW_OF_NIHIL8"):WaitPlayMotion()
    CH("SHADOW_OF_NIHIL8"):SetMotion(SymMot("EV020_WT01"), LOOP.ON)
  end
  TASK:Regist(taskShadow02)
  CH("SUIKUN"):DirTo(CH("SHADOW_OF_NIHIL7"), Speed(200), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("SHADOW_OF_NIHIL8"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("KUCHIITO"):DirTo(CH("SHADOW_OF_NIHIL8"), Speed(500), ROT_TYPE.NEAR)
  CH("RAIKOU"):DirTo(CH("SHADOW_OF_NIHIL7"), Speed(200), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):DirTo(CH("SHADOW_OF_NIHIL7"), Speed(500), ROT_TYPE.NEAR)
  CH("ENTEI"):DirTo(CH("SHADOW_OF_NIHIL7"), Speed(200), ROT_TYPE.NEAR)
  CH("SUIKUN"):WaitRotate()
  CH("PARTNER"):SetMotion(SymMot("EV000_CSWAIT"), LOOP.ON)
  CH("SUIKUN"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("RAIKOU"):WaitRotate()
  CH("RAIKOU"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("KUCHIITO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("ENTEI"):WaitRotate()
  CH("ENTEI"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("HERO"):WaitRotate()
  CH("HERO"):SetMotion(SymMot("EV000_CSWAIT"), LOOP.ON)
  WINDOW:DrawFace(20, 20, SymAct("SUIKUN"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("SUIKUN"), -2049202118)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("RAIKOU"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("RAIKOU"), -1359545351)
  WINDOW:CloseMessage()
  CH("ENTEI"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CAMERA:SetFovy(SymCam("CAMERA_06"))
  CAMERA:SetRotateZ(SymCam("CAMERA_06"))
  CAMERA:MoveFollow2(SymCam("CAMERA_06_5"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("RAIKOU"):SetMotion(SymMot("EV020_BARK00"), LOOP.OFF)
  TASK:Sleep(TimeSec(0.3))
  SOUND:PlaySe(SymSnd("SE_EVT_ROAR"), Volume(190))
  EFFECT:Create("effectBodyElectric", SymEff("EV_BODY_ELECTRIC"))
  EFFECT:SetPosition("effectBodyElectric", SymPos("P_EFF_BODY_ELECTRIC"))
  EFFECT:Play("effectBodyElectric")
  SOUND:PlaySe(SymSnd("SE_EVT_DEDENNE_DENGEKI_01"), Volume(190))
  CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  WINDOW:SysMsg(-1209152840)
  CH("RAIKOU"):WaitPlayMotion()
  CH("RAIKOU"):SetMotion(SymMot("EV020_BARK01"), LOOP.ON)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:ForceCloseMessage()
  CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  CH("RAIKOU"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("ENTEI"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:SetFovy(SymCam("CAMERA_05"))
  CAMERA:SetRotateZ(SymCam("CAMERA_05"))
  SOUND:PlaySe(SymSnd("SE_EVT_DEDENNE_DENGEKI_02"))
  EFFECT:Create("effectLightningWarp01", SymEff("EV_LIGHTNING_WARP_ZOOM"))
  EFFECT:SetPosition("effectLightningWarp01", SymPos("P_EFF_LIGHTNING_WARP_01"))
  EFFECT:SetDir("effectLightningWarp01", RotateTarget(-30))
  EFFECT:Play("effectLightningWarp01")
  CH("HERO"):SetMotion(SymMot("EV018_LIES00LOOP"), LOOP.ON, TimeSec(0.2))
  CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  local taskEffAway01 = function()
    EFFECT:Create("effectSmokeupBlack01", SymEff("EV_SMOKEUP_BLACK"))
    EFFECT:SetPosition("effectSmokeupBlack01", SymPos("P_EFF_EV_SMOKEUP_BLACK_01"))
    EFFECT:Play("effectSmokeupBlack01")
    SOUND:PlaySe(SymSnd("SE_EVT_KK_SPLASH"), Volume(190))
    CH("SHADOW_OF_NIHIL7"):ChangeColor(Color(1, 1, 1, 0), TimeSec(5, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.5))
    CH("SHADOW_OF_NIHIL7"):SetVisible(false)
  end
  TASK:Regist(taskEffAway01)
  TASK:Sleep(TimeSec(0.2))
  local taskEffAway02 = function()
    EFFECT:Create("effectSmokeupBlack02", SymEff("EV_SMOKEUP_BLACK"))
    EFFECT:SetPosition("effectSmokeupBlack02", SymPos("P_EFF_EV_SMOKEUP_BLACK_02"))
    EFFECT:Play("effectSmokeupBlack02")
    SOUND:PlaySe(SymSnd("SE_EVT_KK_SPLASH"), Volume(190))
    CH("SHADOW_OF_NIHIL8"):ChangeColor(Color(1, 1, 1, 0), TimeSec(5, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.5))
    CH("SHADOW_OF_NIHIL8"):SetVisible(false)
  end
  TASK:Regist(taskEffAway02)
  TASK:Sleep(TimeSec(0.8))
  CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  SCREEN_A:WhiteOut(TimeSec(0.1), true)
  CH("HERO"):SetVisible(false)
  CH("PARTNER"):SetVisible(false)
  CH("KUCHIITO"):SetVisible(false)
  CH("ENTEI"):SetVisible(false)
  CH("RAIKOU"):SetVisible(false)
  CH("SUIKUN"):SetVisible(false)
  TASK:Sleep(TimeSec(1))
  EFFECT:Create("effectSmokeEnd", SymEff("EV_RUN_SMOKE_END"))
  EFFECT:SetPosition("effectSmokeEnd", SymPos("P_EFF_SMOKE_END"))
  EFFECT:Play("effectSmokeEnd")
  SCREEN_A:WhiteIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  CAMERA:SetFovy(SymCam("CAMERA_07"))
  CAMERA:SetRotateZ(SymCam("CAMERA_07"))
  CAMERA:MoveFollow2(SymCam("CAMERA_07_5"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:FadeOutBgm(TimeSec(2.5))
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  EFFECT:Remove("effectSmokeEnd")
end
function main20_shizukanaiwababosswin04_end()
end
function groundEnd()
end

