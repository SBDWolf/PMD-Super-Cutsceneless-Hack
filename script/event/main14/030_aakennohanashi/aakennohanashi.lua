dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main14_aakennohanashi01_init()
end
function main14_aakennohanashi01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(4))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
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
  SOUND:FadeInEnv(SymSnd("SE_EVT_GATSUGATSU_02_LP"), TimeSec(0), Volume(64))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:SysMsg(-453473933)
  WINDOW:ForceCloseMessage()
  WINDOW:SysMsg(-35407822)
  WINDOW:ForceCloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_03"), Volume(256))
  SOUND:VolumeEnv(Volume(32), TimeSec(0.5))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("AAKEN"):SetMotionRaito(Raito(1))
  CH("AAKEN"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("AAKEN"):ResetManpu()
  TASK:Sleep(TimeSec(0.3))
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):ResetManpu()
    CH("HERO"):ResetFacialMotion()
    TASK:Sleep(TimeSec(0.1))
    CH("PARTNER"):ResetManpu()
    CH("PARTNER"):ResetFacialMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
    CH("HERO"):SetManpu("MP_NOTICE_L")
    CH("HERO"):SetMotionRaito(Raito(1))
    CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
    CH("HERO"):DirTo(CH("AAKEN"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):SetManpu("MP_NOTICE_L")
    CH("PARTNER"):SetMotionRaito(Raito(1))
    CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  end
  WINDOW:DrawFace(20, 20, SymAct("AAKEN"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("AAKEN"), -691082255)
  WINDOW:Talk(SymAct("AAKEN"), -808068432)
  TASK:Regist(taskLookAt00)
  WINDOW:Talk(SymAct("AAKEN"), -2137764745)
  subEveCloseMsg()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = -1718649546, PARTNER_1 = -1297993995})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_NOTICE_L")
  CH("PARTNER"):WaitManpu()
  CH("AAKEN"):ResetFacialMotion()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1413931084, PARTNER_1 = 740361083})
  WINDOW:SwitchTalk({PARTNER_0 = 893006394, PARTNER_1 = -1235896800})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 20, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), -1353808031)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -2073832286, PARTNER_1 = -1653021213})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), -767986908)
  WINDOW:Talk(SymAct("AAKEN"), -886947227)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -535883354, PARTNER_1 = -116121369})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), 2123119656)
  WINDOW:Talk(SymAct("AAKEN"), 1737952617)
  WINDOW:Talk(SymAct("AAKEN"), -1528817202)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = -1107613553, PARTNER_1 = -1764328628})
  subEveCloseMsg()
  WINDOW:DrawFace(20, 20, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), -1882371571)
  WINDOW:Talk(SymAct("AAKEN"), -1064510262)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = -644354677, PARTNER_1 = -222642616})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("PARTNER"):DirTo(CH("AAKEN"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("AAKEN"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = -341733623, PARTNER_1 = 1815712710})
  subEveCloseMsg()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(20, 20, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("AAKEN"), 1965204103)
  WINDOW:Talk(SymAct("AAKEN"), 475823787)
  WINDOW:CloseMessage()
  CH("AAKEN"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
  CH("AAKEN"):SetManpu("EV_EAT_LP")
  CH("AAKEN"):SetMotionRaito(Raito(2))
  CH("AAKEN"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  TASK:Sleep(TimeSec(0.3))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = 88559594, PARTNER_1 = 778705961})
  WINDOW:CloseMessage()
  SOUND:VolumeEnv(Volume(64), TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CH("PARTNER"):SetManpu("EV_EAT_LP")
  CH("PARTNER"):SetMotionRaito(Raito(2))
  CH("PARTNER"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CH("HERO"):SetManpu("EV_EAT_LP")
  CH("HERO"):SetMotionRaito(Raito(2))
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  TASK:Sleep(TimeSec(1.5))
  SOUND:FadeOutEnv(TimeSec(1.5))
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main14_aakennohanashi01_end()
end
function main14_aakennohanashi02_init()
end
function main14_aakennohanashi02_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), 930164072)
  TASK:Sleep(TimeSec(3))
  SCREEN_A:FadeOutAll(TimeSec(1), true)
  SCREEN_A:FadeOut(TimeSec(0), true)
  WINDOW:EndChapter()
  WINDOW:ForceCloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main14_aakennohanashi02_end()
end
function groundEnd()
end

