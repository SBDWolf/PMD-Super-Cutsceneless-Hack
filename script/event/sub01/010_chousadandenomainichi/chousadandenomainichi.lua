dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function sub01_chousadandenomainichi01_init()
end
function sub01_chousadandenomainichi01_start()
  TASK:Sleep(TimeSec(1))
  WINDOW:Explanation(-1001992185)
  WINDOW:Explanation(-581050042)
  WINDOW:Explanation(-160386427)
  WINDOW:Explanation(-278166588)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(1), true)
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(1), true)
end
function sub01_chousadandenomainichi01_end()
end
function sub01_chousadandenomainichi02_init()
end
function sub01_chousadandenomainichi02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_04"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:NarrationBottomFrame(TimeSec(0.5), TimeSec(0.5), -1607854845)
  WINDOW:NarrationBottomFrame(TimeSec(0.5), TimeSec(0.5), -1187961790)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(1), true)
end
function sub01_chousadandenomainichi02_end()
end
function sub01_chousadandenomainichi03_init()
end
function sub01_chousadandenomainichi03_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_04"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):SetMotion(SymMot("EV001_SLEEP01"), LOOP.ON, TimeSec(0))
  SCREEN_A:FadeIn(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):SetMotion(SymMot("EV001_SLEEP02"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:NarrationBottomFrame(TimeSec(0.5), TimeSec(0.5), -1843628159)
  WINDOW:NarrationBottomFrame(TimeSec(0.5), TimeSec(0.5), -1962457408)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(211769871)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow(SymCam("CAMERA_02"), Speed(1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("HERO"):DirTo(RotateTarget(-90), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CAMERA:WaitMove()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(360999758)
  WINDOW:Monologue(-273562820)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:SwitchNaration(TimeSec(0.5), TimeSec(0.5), {PARTNER_0 = -156568963, PARTNER_1 = -578313794})
  WINDOW:SwitchNaration(TimeSec(0.5), TimeSec(0.5), {PARTNER_0 = -996372225, PARTNER_1 = -1948449224})
  WINDOW:CloseMessage()
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(-1832503431)
  WINDOW:Monologue(-1175755590)
  WINDOW:Monologue(-1594862085)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  TASK:Sleep(TimeSec(1.5))
  CH("HERO"):ResetFacialMotion()
  CH("HERO"):DirTo(SymPos("P00_HERO"), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.7))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function sub01_chousadandenomainichi03_end()
end
function groundEnd()
end

