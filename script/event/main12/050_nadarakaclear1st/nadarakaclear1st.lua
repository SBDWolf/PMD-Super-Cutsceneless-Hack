dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main12_nadarakaclear1st01_init()
end
function main12_nadarakaclear1st01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -1489502516, PARTNER_1 = -1104359539})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1795056562, PARTNER_1 = -1944408817})
  WINDOW:SwitchTalk({PARTNER_0 = -1017431096, PARTNER_1 = -633337207})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("PARTNER"):RunTo(SplinePath(SymPos("P00_PARTNER"), SymPos("P01_PARTNER")), Speed(3))
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):RunTo(SplinePath(SymPos("P00_HERO"), SymPos("P01_HERO")), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("PARTNER"):WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = -244491958, PARTNER_1 = -394893301})
  WINDOW:CloseMessage()
  SOUND:FadeOutEnv(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main12_nadarakaclear1st01_end()
end
function main12_nadarakaclear1st02_init()
end
function main12_nadarakaclear1st02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  CAMERA:MoveFollow2(SymCam("CAMERA_00_5"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:PlayBgm(SymSnd("BGM_EVE_SCENERY"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = 1877898436, PARTNER_1 = 1995785605})
  WINDOW:SwitchTalk({PARTNER_0 = 459907847, PARTNER_1 = 41062982})
  WINDOW:CloseMessage()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CH("PARTNER"):DirTo(SymPos("P00_HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(SymPos("P00_HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):RunTo(SplinePath(SymPos("P00_HERO"), SymPos("P01_HERO"), SymPos("P02_HERO")), Speed(3))
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):RunTo(SplinePath(SymPos("P00_HERO"), SymPos("P01_HERO"), SymPos("P02_HERO")), Speed(3))
  TASK:Sleep(TimeSec(2.5))
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main12_nadarakaclear1st02_end()
end
function groundEnd()
end

