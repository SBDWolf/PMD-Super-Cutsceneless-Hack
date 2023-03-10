dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main12_kiritattaclear1st01_init()
end
function main12_kiritattaclear1st01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("PARTNER"):WalkTo(SymPos("P00_PARTNER"), Speed(1.5))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  SOUND:FadeInEnv(SymSnd("SE_ENV_FOREST_NIGHT_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("PARTNER"):WaitMove()
  CH("PARTNER"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  CH("HERO"):WaitMove()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitPlayMotion()
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(172, 8, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = 1919053933, PARTNER_1 = 1803108652})
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 1079251695, PARTNER_1 = 1498358702})
  WINDOW:SwitchTalk({PARTNER_0 = 370062697, PARTNER_1 = 253068328})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:FadeOutEnv(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main12_kiritattaclear1st01_end()
end
function main12_kiritattaclear1st02_init()
end
function main12_kiritattaclear1st02_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV1201"))
  MAP:SetVisibleBG(true)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main12_kiritattaclear1st02_end()
end
function main12_kiritattaclear1st03_init()
end
function main12_kiritattaclear1st03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlaySe(SymSnd("SE_EVT_BONFIRE_LP"), Volume(190))
  EFFECT:Create("effectFire", SymEff("EV_FIRE_LP"))
  EFFECT:SetPosition("effectFire", SymPos("P_EFF_FIRE"))
  EFFECT:Play("effectFire")
  SOUND:FadeInEnv(SymSnd("SE_ENV_FOREST_NIGHT_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 607705067, PARTNER_1 = 1025762986})
  WINDOW:SwitchTalk({PARTNER_0 = -1162085787, PARTNER_1 = -1549743324})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  CH("PARTNER"):SetNeckRot(RotateTarget(30), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1502259747, PARTNER_1 = -1083284324})
  CH("HERO"):SetNeckRot(RotateTarget(-30), RotateTarget(0), RotateTarget(0), TimeSec(0.2))
  WINDOW:SwitchTalk({PARTNER_0 = -1807534241, PARTNER_1 = -1923611106})
  WINDOW:CloseMessage()
  CH("HERO"):SetNeckRot(RotateTarget(-30), RotateTarget(-30), RotateTarget(0), TimeSec(0.2))
  CH("HERO"):WaitNeckRot()
  CH("HERO"):SetNeckRot(RotateTarget(-30), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("HERO"):WaitNeckRot()
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1038511911, PARTNER_1 = -620584552})
  WINDOW:SwitchTalk({PARTNER_0 = -265293221, PARTNER_1 = -382418150})
  WINDOW:SwitchTalk({PARTNER_0 = 1856823253, PARTNER_1 = 2008542868})
  WINDOW:SwitchTalk({PARTNER_0 = -1262421453, PARTNER_1 = -1378104462})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-2030659407)
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetNeckRot(TimeSec(0.15))
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1611814416, PARTNER_1 = -794017993})
  WINDOW:SwitchTalk({PARTNER_0 = -910750090, PARTNER_1 = -493199947})
  WINDOW:SwitchTalk({PARTNER_0 = -75404044, PARTNER_1 = 2082041915})
  WINDOW:CloseMessage()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.35))
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = 1694646650, PARTNER_1 = 209493334})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetFacialMotion()
  CH("PARTNER"):ResetNeckRot(TimeSec(0.1))
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 359115799, PARTNER_1 = 1045102548})
  WINDOW:CloseMessage()
  CH("PARTNER"):SetNeckRot(RotateTarget(30), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("PARTNER"):WaitNeckRot()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  WINDOW:SwitchTalk({PARTNER_0 = 659672725, PARTNER_1 = 1745901650})
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetNeckRot(TimeSec(0.15))
  CH("PARTNER"):WaitNeckRot()
  CH("PARTNER"):SetManpu("MP_LAUGH_LP")
  CH("PARTNER"):SetMotion(SymMot("WAIT00"), LOOP.ON)
  CH("PARTNER"):SetMotionRaito(Raito(2))
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(1896573203)
  CH("PARTNER"):ResetManpu()
  WINDOW:Monologue(1512454864)
  CH("PARTNER"):SetManpu("MP_SPREE_LP")
  WINDOW:Monologue(1128074129)
  WINDOW:Monologue(-995813538)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):ResetFacialMotion()
  CH("PARTNER"):ResetManpu()
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("PARTNER"):SetMotionRaito(Raito(1))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetNeckRot(RotateTarget(30), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 20, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -574740961, PARTNER_1 = -1851021841})
  WINDOW:CloseMessage()
  CH("HERO"):SetNeckRot(RotateTarget(-30), RotateTarget(-30), RotateTarget(0), TimeSec(0.2))
  CH("HERO"):WaitNeckRot()
  CH("HERO"):SetNeckRot(RotateTarget(-30), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("HERO"):WaitNeckRot()
  TASK:Sleep(TimeSec(0.3))
  SOUND:FadeOutSe(SymSnd("SE_EVT_BONFIRE_LP"), TimeSec(1.5))
  SOUND:FadeOutEnv(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
end
function main12_kiritattaclear1st03_end()
end
function main12_kiritattaclear1st04_init()
end
function main12_kiritattaclear1st04_start()
  -- WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), -2001693522)
  -- WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_DUN_12"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1549940883, PARTNER_1 = -1165560276})
  -- WINDOW:SwitchTalk({PARTNER_0 = -171482901, PARTNER_1 = -321105494})
  -- WINDOW:CloseMessage()
  -- subEveNod(CH("HERO"))
  CAMERA:MoveToHero(Speed(6, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function main12_kiritattaclear1st04_end()
end
function groundEnd()
end

