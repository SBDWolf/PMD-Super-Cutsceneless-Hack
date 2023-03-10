dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main17_warubiarutosekiban01_init()
end
function main17_warubiarutosekiban01_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PEROPPAFU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("PEROPPAFU"), -1420045881)
  WINDOW:Talk(SymAct("PEROPPAFU"), -1304371066)
  WINDOW:CloseMessage()
end
function main17_warubiarutosekiban01_end()
end
function main17_warubiarutosekiban02_init()
end
function main17_warubiarutosekiban02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local pokemonIndexHero = SymAct("HERO"):GetIndex()
  if pokemonIndexHero == 592 then
    CH("HERO"):SetPosition(SymPos("SP00_HERO"))
  elseif pokemonIndexHero == 5 then
    CH("HERO"):SetPosition(SymPos("SP00_HERO"))
  end
  local pokemonIndexPartner = SymAct("HERO"):GetIndex()
  if pokemonIndexPartner == 592 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
  elseif pokemonIndexPartner == 5 then
    CH("PARTNER"):SetPosition(SymPos("SP00_PARTNER"))
  end
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_02"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("PARTNER"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  CH("PARTNER"):WaitPlayMotion()
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HORUBII"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    CH("PEROPPAFU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1720863931, PARTNER_1 = -2139717116})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("HORUBII"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 20, SymAct("HORUBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("HORUBII"), -818473789)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("JIRAACHI"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  CH("JIRAACHI"):WaitRotate()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("HORUBII"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    CH("PEROPPAFU"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("JIRAACHI"), -701749886)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("HORUBII"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
    CH("PEROPPAFU"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("DEDENNE"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("DEDENNE"), -50235839)
  WINDOW:Talk(SymAct("DEDENNE"), -468039936)
  subEveCloseMsg()
  CH("PEROPPAFU"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("PEROPPAFU"):WaitRotate()
  local taskLookAt03 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("DEDENNE"):DirTo(CH("PEROPPAFU"), Speed(200), ROT_TYPE.NEAR)
    CH("JIRAACHI"):DirTo(CH("PEROPPAFU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HORUBII"):DirTo(CH("PEROPPAFU"), Speed(200), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
    CH("PEROPPAFU"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt03)
  WINDOW:DrawFace(20, 88, SymAct("PEROPPAFU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("PEROPPAFU"), 1669487567)
  WINDOW:KeyWait()
  CH("PEROPPAFU"):SetManpu("MP_LAUGH_LP")
  CH("PEROPPAFU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  TASK:Regist(subEveDoubleJump, {
    CH("PEROPPAFU")
  })
  WINDOW:DrawFace(20, 88, SymAct("PEROPPAFU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("PEROPPAFU"), 2056874638)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("DEDENNE"):SetManpu("MP_SHOCK_L")
  TASK:Regist(subEveJumpSurprise, {
    CH("DEDENNE")
  })
  CH("HORUBII"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.1))
  CH("JIRAACHI"):SetManpu("MP_SHOCK_R")
  CH("DEDENNE"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("DEDENNE"), 1397509113)
  subEveCloseMsg()
  CH("PEROPPAFU"):ResetManpu()
  CH("PEROPPAFU"):ResetFacialMotion()
  WINDOW:DrawFace(20, 88, SymAct("PEROPPAFU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("PEROPPAFU"), 1247247032)
  WINDOW:CloseMessage()
  CH("PEROPPAFU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("PEROPPAFU"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("PEROPPAFU")
  })
  WINDOW:DrawFace(20, 88, SymAct("PEROPPAFU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("PEROPPAFU"), 1635395963)
  WINDOW:CloseMessage()
  local taskLookAt04 = function()
    CH("JIRAACHI"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HORUBII"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt04)
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 2019629114)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("HORUBII"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("PARTNER")
  })
  CH("DEDENNE"):WaitManpu()
  CH("DEDENNE"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("DEDENNE")
  })
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(172, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:DrawFaceOffset(-20, 0)
  WINDOW:Talk(SymAct("DEDENNE"), 924880637)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CH("PEROPPAFU"):SetManpu("MP_SPREE_LP")
  SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  TASK:Regist(subEveDoubleJump, {
    CH("PEROPPAFU")
  })
  TASK:Sleep(TimeSec(0.2))
  CH("DEDENNE"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("PEROPPAFU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("PEROPPAFU"), 775667644)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("PEROPPAFU"):ResetManpu()
  CH("PEROPPAFU"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("PEROPPAFU"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("PEROPPAFU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("PEROPPAFU"), 85388415)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt05 = function()
    TASK:Sleep(TimeSec(0.2))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
    CH("DEDENNE"):SetManpu("MP_EXCLAMATION")
    CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
    CH("DENRYUU"):SetManpu("MP_NOTICE_L")
    TASK:Sleep(TimeSec(0.1))
    CH("HORUBII"):SetManpu("MP_NOTICE_R")
    CH("JIRAACHI"):SetManpu("MP_NOTICE_L")
    CH("DEDENNE"):WaitManpu()
  end
  TASK:Regist(taskLookAt05)
  SOUND:FadeOutBgm(TimeSec(1))
  WINDOW:SysMsg(470670654)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CH("AAKEN"):WalkTo(SymPos("P00_AAKEN"), Speed(2))
  CH("BUIZERU"):WalkTo(SymPos("P00_BUIZERU"), Speed(2))
  local taskLookAt06 = function()
    CH("JIRAACHI"):DirTo(SymPos("P00_BUIZERU"), Speed(200), ROT_TYPE.NEAR)
    CH("DENRYUU"):DirTo(SymPos("P00_BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(SymPos("P00_AAKEN"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HORUBII"):DirTo(SymPos("P00_BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(SymPos("P00_BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(SymPos("P00_AAKEN"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("PEROPPAFU"):DirTo(SymPos("P00_BUIZERU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt06)
  CH("AAKEN"):WaitMove()
  WINDOW:DrawFace(324, 20, SymAct("DEDENNE"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DEDENNE"), -1684684303)
  WINDOW:Talk(SymAct("DEDENNE"), -2104561488)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  TASK:Sleep(TimeSec(0.2))
  CH("AAKEN"):SetManpu("MP_SPREE_LP")
  WINDOW:DrawFaceF(20, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), 1106895895)
  subEveCloseMsg()
  CH("AAKEN"):ResetManpu()
  TASK:Regist(subEveDoubleJump, {
    CH("BUIZERU")
  })
  WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), 1491260758)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  CH("BUIZERU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("AAKEN"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("BUIZERU"):WaitRotate()
  WINDOW:DrawFaceF(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), 1942980245)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), 1792325588)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), 630530323)
  WINDOW:Talk(SymAct("BUIZERU"), 1015943250)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("DEDENNE"):SetManpu("MP_SHOCK_L")
  TASK:Regist(subEveJumpSurprise, {
    CH("DEDENNE")
  })
  CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HORUBII"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("PARTNER")
  })
  CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):WaitManpu()
  WINDOW:SysMsg(396575633)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 246969040, PARTNER_1 = -1994363361})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_10"))
  CAMERA:SetTgt(SymCam("CAMERA_10"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("DEDENNE"):SetManpu("MP_SHOCK_L")
  CH("DEDENNE"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("DEDENNE"), -1875157154)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("JIRAACHI"), -112884878)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -530664909)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), -881597968)
  WINDOW:Talk(SymAct("AAKEN"), -764882767)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_10"))
  CAMERA:SetTgt(SymCam("CAMERA_10"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("DEDENNE"), -1658239370)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), -2077067465)
  subEveCloseMsg()
  local taskLookAt07 = function()
    TASK:Sleep(TimeSec(0.2))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
    CH("DEDENNE"):SetManpu("MP_EXCLAMATION")
    CH("DENRYUU"):SetManpu("MP_NOTICE_R")
    CH("AAKEN"):SetManpu("MP_NOTICE_L")
    TASK:Sleep(TimeSec(0.1))
    CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
    CH("BUIZERU"):SetManpu("MP_NOTICE_L")
    CH("DEDENNE"):WaitManpu()
  end
  TASK:Regist(taskLookAt07)
  WINDOW:SysMsg(-1356913420)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_13"))
  CAMERA:SetTgt(SymCam("CAMERA_13"))
  local taskLookAt08 = function()
    CH("JIRAACHI"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    CH("DENRYUU"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    CH("BUIZERU"):DirTo(SymPos("P00_KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HORUBII"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("PEROPPAFU"):DirTo(SymPos("P00_KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
    CH("AAKEN"):DirTo(SymPos("P00_KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt08)
  CH("KUCHIITO"):WalkTo(SymPos("P00_KUCHIITO"), Speed(2))
  CH("KUCHIITO"):WaitMove()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_14"))
  CAMERA:SetTgt(SymCam("CAMERA_14"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveDoubleJump, {
    CH("HORUBII")
  })
  WINDOW:DrawFace(324, 88, SymAct("HORUBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("HORUBII"), -1241246283)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_15"))
  CAMERA:SetTgt(SymCam("CAMERA_15"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KUCHIITO"), 832309626)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_14"))
  CAMERA:SetTgt(SymCam("CAMERA_14"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("JIRAACHI"), 679950395)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_15"))
  CAMERA:SetTgt(SymCam("CAMERA_15"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KUCHIITO"), 1687337931)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("AAKEN"):SetManpu("MP_SHOCK_R")
  CH("DEDENNE"):SetManpu("MP_SHOCK_L")
  TASK:Regist(subEveJumpSurprise, {
    CH("DEDENNE")
  })
  CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HORUBII"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.1))
  CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("PARTNER")
  })
  CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):WaitManpu()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_14"))
  CAMERA:SetTgt(SymCam("CAMERA_14"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveJumpSurprise, {
    CH("HORUBII")
  })
  WINDOW:DrawFace(324, 88, SymAct("HORUBII"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("HORUBII"), 2106165898)
  WINDOW:CloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHUKEI"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_15"))
  CAMERA:SetTgt(SymCam("CAMERA_15"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KUCHIITO"), 1453644105)
  WINDOW:Talk(SymAct("KUCHIITO"), 1337976840)
  WINDOW:Talk(SymAct("KUCHIITO"), 16678607)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 434458510)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_15"))
  CAMERA:SetTgt(SymCam("CAMERA_15"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(172, 8, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-30, 0)
  WINDOW:Talk(SymAct("BUIZERU"), 851975245)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("AAKEN")
  })
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), 735259916)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KUCHIITO"), -1404358205)
  WINDOW:Talk(SymAct("KUCHIITO"), -1253048190)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -600908626, PARTNER_1 = -986321425})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -300368340)
  WINDOW:Talk(SymAct("DENRYUU"), -150761619)
  WINDOW:Talk(SymAct("DENRYUU"), -1203627606)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_HARAHERI"), Volume(256))
  WINDOW:SysMsg(-1587992341)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("AAKEN"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):SetManpu("MP_EXCLAMATION")
  CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HORUBII"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):WaitManpu()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveDoubleJump, {
    CH("HORUBII")
  })
  WINDOW:DrawFace(324, 88, SymAct("HORUBII"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("HORUBII"), -1972077784)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_HARAHERI"), Volume(256))
  WINDOW:SysMsg(-1821422999)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("AAKEN"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):SetManpu("MP_EXCLAMATION")
  CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HORUBII"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):WaitManpu()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_10"))
  CAMERA:SetTgt(SymCam("CAMERA_10"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveDoubleJump, {
    CH("DEDENNE")
  })
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("DEDENNE"), 351753894)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("DENRYUU"):DirTo(RotateTarget(-90), Speed(200), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("DENRYUU"), FACE_TYPE.SPECIAL01)
  WINDOW:Talk(SymAct("DENRYUU"), 233596903)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_16"))
  CAMERA:SetTgt(SymCam("CAMERA_16"))
  CH("DEDENNE"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("DEDENNE"):WaitRotate()
  CH("HORUBII"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("PEROPPAFU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("KUCHIITO"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("JIRAACHI"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("BUIZERU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("AAKEN"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("DEDENNE"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DEDENNE"), -828673216)
  WINDOW:CloseMessage()
  CH("DENRYUU"):DirTo(CH("DEDENNE"), Speed(200), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.SPECIAL01)
  WINDOW:Talk(SymAct("DENRYUU"), -679460351)
  WINDOW:Talk(SymAct("DENRYUU"), -55766590)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("DENRYUU"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  TASK:Regist(subEveRunDir, {
    CH("BUIZERU"),
    SymPos("P01_BUIZERU"),
    Speed(3),
    RotateTarget(180)
  })
  TASK:Sleep(TimeSec(0.2))
  local taskAaken00 = function()
    CH("AAKEN"):RunTo(SplinePath(SymSpl("S00_AAKEN")), Speed(3))
    CH("AAKEN"):WaitMove()
    CH("AAKEN"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
    CH("AAKEN"):WaitRotate()
  end
  TASK:Regist(taskAaken00)
  TASK:Sleep(TimeSec(0.2))
  local taskKuchiito00 = function()
    CH("KUCHIITO"):RunTo(SplinePath(SymSpl("S00_KUCHIITO")), Speed(3))
    CH("KUCHIITO"):WaitMove()
    CH("KUCHIITO"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
    CH("KUCHIITO"):WaitRotate()
  end
  TASK:Regist(taskKuchiito00)
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("JIRAACHI"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("HORUBII"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("PEROPPAFU"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("DEDENNE"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -441048957)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  TASK:Sleep(TimeSec(0.2))
  CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  CH("DEDENNE"):SetManpu("MP_SPREE_LP")
  CH("AAKEN"):SetManpu("MP_SPREE_LP")
  CH("HORUBII"):SetManpu("MP_SPREE_LP")
  CH("BUIZERU"):SetManpu("MP_SPREE_LP")
  CH("PEROPPAFU"):SetManpu("MP_SPREE_LP")
  CH("KUCHIITO"):SetManpu("MP_SPREE_LP")
  CH("JIRAACHI"):SetManpu("MP_SPREE_LP")
  CH("HERO"):SetManpu("MP_SPREE_LP")
  CH("PARTNER"):SetManpu("MP_SPREE_LP")
  CH("DEDENNE"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("AAKEN"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("HORUBII"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("BUIZERU"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("PEROPPAFU"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("KUCHIITO"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("JIRAACHI"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("HERO"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  CH("PARTNER"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  WINDOW:SysMsg(-1426606524)
  CH("PARTNER"):WaitPlayMotion()
  WINDOW:CloseMessage()
  CH("DEDENNE"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("AAKEN"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("HORUBII"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("BUIZERU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("PEROPPAFU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("KUCHIITO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("JIRAACHI"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("DEDENNE"):ResetManpu()
  CH("AAKEN"):ResetManpu()
  CH("HORUBII"):ResetManpu()
  CH("BUIZERU"):ResetManpu()
  CH("PEROPPAFU"):ResetManpu()
  CH("KUCHIITO"):ResetManpu()
  CH("HERO"):ResetManpu()
  CH("PARTNER"):ResetManpu()
  CH("JIRAACHI"):ResetManpu()
  TASK:Sleep(TimeSec(0.3))
  SOUND:PlaySe(SymSnd("SE_EVT_GATSUGATSU_02_LP"), Volume(256))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("DEDENNE"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("AAKEN"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("BUIZERU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("HORUBII"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("PEROPPAFU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("JIRAACHI"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("KUCHIITO"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("DENRYUU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("DENRYUU"):SetManpu("EV_EAT_LP")
  CH("DENRYUU"):SetMotionRaito(Raito(2))
  CH("DENRYUU"):SetMotion(SymMot("EV014_EAT00"), LOOP.ON)
  CH("HERO"):SetManpu("EV_EAT_LP")
  CH("HERO"):SetMotionRaito(Raito(2))
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("AAKEN"):SetManpu("EV_EAT_LP")
  CH("AAKEN"):SetMotionRaito(Raito(2))
  CH("AAKEN"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("HORUBII"):SetManpu("EV_EAT_LP")
  CH("HORUBII"):SetMotionRaito(Raito(2))
  CH("HORUBII"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  TASK:Sleep(TimeSec(0.1))
  CH("DEDENNE"):SetManpu("EV_EAT_LP")
  CH("DEDENNE"):SetMotionRaito(Raito(2))
  CH("DEDENNE"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("PARTNER"):SetManpu("EV_EAT_LP")
  CH("PARTNER"):SetMotionRaito(Raito(2))
  CH("PARTNER"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("JIRAACHI"):SetManpu("EV_EAT_LP")
  CH("JIRAACHI"):SetMotionRaito(Raito(2))
  CH("JIRAACHI"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("PEROPPAFU"):SetManpu("EV_EAT_LP")
  CH("PEROPPAFU"):SetMotionRaito(Raito(2))
  CH("PEROPPAFU"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  TASK:Sleep(TimeSec(0.1))
  CH("BUIZERU"):SetManpu("EV_EAT_LP")
  CH("BUIZERU"):SetMotionRaito(Raito(2))
  CH("BUIZERU"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("KUCHIITO"):SetManpu("EV_EAT_LP")
  CH("KUCHIITO"):SetMotionRaito(Raito(2))
  CH("KUCHIITO"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  WINDOW:SysMsg(-1276344571)
  WINDOW:ForceCloseMessage()
  WINDOW:SysMsg(-1732127546)
  WINDOW:ForceCloseMessage()
  WINDOW:SysMsg(-2116360825)
  WINDOW:ForceCloseMessage()
  SOUND:FadeOutSe(SymSnd("SE_EVT_GATSUGATSU_02_LP"), TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1.5))
end
function main17_warubiarutosekiban02_end()
end
function main17_warubiarutosekiban03_init()
end
function main17_warubiarutosekiban03_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV1201"))
  MAP:SetVisibleBG(true)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main17_warubiarutosekiban03_end()
end
function main17_warubiarutosekiban04_init()
end
function main17_warubiarutosekiban04_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_04"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 105052488, PARTNER_1 = 525977609})
  WINDOW:SwitchTalk({PARTNER_0 = 1982272549, PARTNER_1 = 1866212708})
  WINDOW:SwitchTalk({PARTNER_0 = 1141995175, PARTNER_1 = 1560954854})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(20), RotateTarget(0), TimeSec(0.3))
  CH("PARTNER"):DirTo(RotateTarget(135), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 306958625, PARTNER_1 = 189849696})
  WINDOW:SwitchTalk({PARTNER_0 = 545108899, PARTNER_1 = 963019490})
  WINDOW:SwitchTalk({PARTNER_0 = -1090609619, PARTNER_1 = -1478119572})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(776209523)
  WINDOW:Monologue(928986418)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  local taskPartner00 = function()
    CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
    CH("PARTNER"):SetManpu("MP_SPREE_LP")
    SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
    TASK:Regist(subEveDoubleJump, {
      CH("PARTNER")
    })
    TASK:Sleep(TimeSec(0.5))
    TASK:Regist(subEveJump, {
      CH("PARTNER")
    })
    TASK:Sleep(TimeSec(0.5))
    SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
    TASK:Regist(subEveDoubleJump, {
      CH("PARTNER")
    })
  end
  TASK:Regist(taskPartner00)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 477259505, PARTNER_1 = 90789808})
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetManpu()
  CH("PARTNER"):ResetFacialMotion()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("PARTNER"):ResetNeckRot(TimeSec(0.15))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  WINDOW:SwitchTalk({PARTNER_0 = 1244184951, PARTNER_1 = 1395912758})
  WINDOW:KeyWait()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = 2015273973, PARTNER_1 = 1627755188})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -425881989, PARTNER_1 = -7946438})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1.5))
end
function main17_warubiarutosekiban04_end()
end
function groundEnd()
end

