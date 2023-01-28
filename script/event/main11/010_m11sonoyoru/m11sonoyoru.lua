dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main11_m11sonoyoru01_init()
end
function main11_m11sonoyoru01_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main11_m11sonoyoru01_end()
end
function main11_m11sonoyoru02_init()
end
function main11_m11sonoyoru02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_ODAYAKA_02"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-1052177736)
  WINDOW:Monologue(-665699335)
  WINDOW:Monologue(-209754054)
  WINDOW:Monologue(-362522245)
  WINDOW:Monologue(-1524248644)
  WINDOW:Monologue(-1136722179)
  WINDOW:Monologue(-1760318146)
  WINDOW:Monologue(-1912038273)
  WINDOW:Monologue(160465072)
  WINDOW:Monologue(277590513)
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(SymPos("P_WINDOW"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-353742962)
  WINDOW:Monologue(-202277169)
  WINDOW:Monologue(-656659188)
  WINDOW:Monologue(-1043915699)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
end
function main11_m11sonoyoru02_end()
end
function main11_m11sonoyoru03_init()
end
function main11_m11sonoyoru03_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), -1903785334)
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
function main11_m11sonoyoru03_end()
end
function groundEnd()
end

