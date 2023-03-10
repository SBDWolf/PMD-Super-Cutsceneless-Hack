dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main17_hanninwokousatsu02_init()
end
function main17_hanninwokousatsu02_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main17_hanninwokousatsu02_end()
end
function main17_hanninwokousatsu03_init()
end
function main17_hanninwokousatsu03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:DrawFaceOffset(25, 0)
  WINDOW:Talk(SymAct("DENRYUU"), -615140016)
  WINDOW:CloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_03"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HORUBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("HORUBII"), -1035041775)
  WINDOW:Talk(SymAct("HORUBII"), -379332654)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("AAKEN"):SetFacialMotion(FACIAL_MOTION.THINK)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("AAKEN"), -260512109)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(0.2))
  CH("AAKEN"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  TASK:Regist(subEveDoubleJump, {
    CH("PEROPPAFU")
  })
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("AAKEN"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("PEROPPAFU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("BUIZERU"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("KUCHIITO"):DirTo(CH("PEROPPAFU"), Speed(200), ROT_TYPE.NEAR)
    CH("HORUBII"):DirTo(CH("PEROPPAFU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(324, 20, SymAct("PEROPPAFU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("PEROPPAFU"), -1086754732)
  WINDOW:Talk(SymAct("PEROPPAFU"), -1507704555)
  WINDOW:Talk(SymAct("PEROPPAFU"), -1928391978)
  WINDOW:KeyWait()
  CH("PEROPPAFU"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(324, 20, SymAct("PEROPPAFU"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("PEROPPAFU"), -1810619497)
  WINDOW:CloseMessage()
  CH("PEROPPAFU"):ResetManpu()
  CH("PEROPPAFU"):SetMotion(SymMot("VICTORY"), LOOP.ON)
  CH("PEROPPAFU"):WaitPlayMotion()
  CH("PEROPPAFU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("PEROPPAFU"):SetManpu("MP_SPREE_LP")
  SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  TASK:Regist(subEveDoubleJump, {
    CH("PEROPPAFU")
  })
  TASK:Sleep(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  TASK:Regist(subEveDoubleJump, {
    CH("PEROPPAFU")
  })
  TASK:Sleep(TimeSec(1))
  CH("PEROPPAFU"):ResetManpu()
  TASK:Sleep(TimeSec(0.5))
  CH("PEROPPAFU"):SetManpu("MP_LAUGH_LP")
  CH("AAKEN"):SetFacialMotion(FACIAL_MOTION.THINK)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("AAKEN"):SetManpu("MP_FLY_SWEAT")
  CH("AAKEN"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("AAKEN"), 327958360)
  WINDOW:CloseMessage()
  CH("AAKEN"):ResetFacialMotion()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("BUIZERU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  CH("BUIZERU"):WaitRotate()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("AAKEN"):DirTo(CH("BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    CH("DENRYUU"):DirTo(CH("BUIZERU"), Speed(60), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("BUIZERU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("KUCHIITO"):DirTo(CH("BUIZERU"), Speed(200), ROT_TYPE.NEAR)
    CH("HORUBII"):DirTo(CH("BUIZERU"), Speed(350), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(CH("BUIZERU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  CH("PEROPPAFU"):ResetManpu()
  WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), 177671705)
  WINDOW:Talk(SymAct("BUIZERU"), 663978603)
  WINDOW:Talk(SymAct("BUIZERU"), 1049146154)
  WINDOW:Talk(SymAct("BUIZERU"), 363192553)
  WINDOW:Talk(SymAct("BUIZERU"), 213832104)
  WINDOW:Talk(SymAct("BUIZERU"), 1140803439)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("AAKEN"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    CH("DENRYUU"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("JIRAACHI"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("BUIZERU"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    CH("JIRAACHI"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("KUCHIITO"):DirTo(CH("JIRAACHI"), Speed(200), ROT_TYPE.NEAR)
    CH("HORUBII"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    CH("DEDENNE"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("JIRAACHI"), 1524921902)
  WINDOW:Talk(SymAct("JIRAACHI"), 1909007853)
  WINDOW:Talk(SymAct("JIRAACHI"), 1758598316)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(272, 16, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("DENRYUU"), -280360861)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  CH("KUCHIITO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  CH("KUCHIITO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KUCHIITO"), -162449118)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("DENRYUU"):SetManpu("MP_NOTICE_L")
  CH("DENRYUU"):WaitManpu()
  CH("DENRYUU"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  CH("HERO"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("AAKEN"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("PEROPPAFU"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("DEDENNE"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("BUIZERU"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("JIRAACHI"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("HORUBII"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.7))
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KUCHIITO"), 891694469)
  WINDOW:Talk(SymAct("KUCHIITO"), 742202564)
  WINDOW:Talk(SymAct("KUCHIITO"), 118509319)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("DENRYUU"), 504069702)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KUCHIITO"), 1363863681)
  WINDOW:Talk(SymAct("KUCHIITO"), 1213323712)
  WINDOW:Talk(SymAct("KUCHIITO"), 1669106179)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("DENRYUU"), 2053618498)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("DENRYUU"):DirTo(RotateTarget(0), Speed(200), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  local taskLookAt03 = function()
    CH("HERO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    CH("AAKEN"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PEROPPAFU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("DEDENNE"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    CH("BUIZERU"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("JIRAACHI"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    CH("HORUBII"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt03)
  WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:DrawFaceOffset(25, 0)
  WINDOW:Talk(SymAct("DENRYUU"), -33577075)
  WINDOW:Talk(SymAct("DENRYUU"), -454781236)
  WINDOW:CloseMessage()
  CH("DENRYUU"):DirTo(CH("AAKEN"), Speed(60), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:DrawFaceOffset(25, 0)
  WINDOW:Talk(SymAct("DENRYUU"), -1919268128)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFaceF(172, 8, SymAct("BUIZERU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("BUIZERU"), -1803453535)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), -1079236510)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  TASK:Sleep(TimeSec(0.2))
  CH("DENRYUU"):DirTo(RotateTarget(0), Speed(60), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:DrawFaceOffset(25, 0)
  WINDOW:Talk(SymAct("DENRYUU"), -1497949917)
  WINDOW:KeyWait()
  CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  WINDOW:Talk(SymAct("DENRYUU"), -369717276)
  WINDOW:CloseMessage()
  CH("DENRYUU"):ResetManpu()
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main17_hanninwokousatsu03_end()
end
function groundEnd()
end

