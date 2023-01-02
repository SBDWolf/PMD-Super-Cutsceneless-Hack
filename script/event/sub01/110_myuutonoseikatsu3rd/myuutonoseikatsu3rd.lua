dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function sub01_myuutonoseikatsu3rd01_init()
end
function sub01_myuutonoseikatsu3rd01_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function sub01_myuutonoseikatsu3rd01_end()
end
function sub01_myuutonoseikatsu3rd02_init()
end
function sub01_myuutonoseikatsu3rd02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_04"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("MYUU"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("MYUU"):SetManpu("MP_SPREE_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("MYUU")
  })
  WINDOW:DrawFace(20, 88, SymAct("MYUU"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("MYUU"), -597784275)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(-985286548)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CH("MYUU"):ResetManpu()
  CH("MYUU"):ResetFacialMotion()
  CH("MYUU"):DirTo(SymPos("P_MADO"), Speed(350), ROT_TYPE.NEAR)
  CH("MYUU"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("MYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MYUU"), -295113809)
  WINDOW:Talk(SymAct("MYUU"), -143402258)
  WINDOW:Talk(SymAct("MYUU"), -1204663255)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CH("MYUU"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("MYUU"):WaitRotate()
  WINDOW:DrawFace(20, 20, SymAct("MYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MYUU"), -1591116440)
  WINDOW:Talk(SymAct("MYUU"), -1979437397)
  WINDOW:Talk(SymAct("MYUU"), -1826676758)
  WINDOW:Talk(SymAct("MYUU"), 344392485)
  WINDOW:DrawFace(20, 20, SymAct("MYUU"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("MYUU"), 228340324)
  WINDOW:Talk(SymAct("MYUU"), -1838285220)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SAD)
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(-1955148003)
  TASK:WaitTask()
  WINDOW:DrawFace(20, 88, SymAct("MYUU"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("MYUU"), -1604608802)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(2))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):ResetFacialMotion()
  local taskMyuu00 = function()
    CH("MYUU"):SetMotion(SymMot("SB001_YAWN"), LOOP.OFF)
    CH("MYUU"):WaitPlayMotion()
    CH("MYUU"):SetEyeMotion(EYE_MOTION.PAIN)
    CH("MYUU"):SetMouthMotion(MOUTH_MOTION.SURPRISE)
    CH("MYUU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  end
  TASK:Regist(taskMyuu00)
  WINDOW:DrawFace(20, 20, SymAct("MYUU"), FACE_TYPE.SPECIAL01)
  WINDOW:Talk(SymAct("MYUU"), -1186943585)
  TASK:WaitTask()
  WINDOW:KeyWait()
  CH("MYUU"):ResetFacialMotion()
  WINDOW:DrawFace(20, 20, SymAct("MYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MYUU"), -167691432)
  WINDOW:CloseMessage()
  CH("MYUU"):SetMotion(SymMot("SB001_SLEEP00"), LOOP.OFF)
  CH("MYUU"):WaitPlayMotion()
  CH("MYUU"):SetMotion(SymMot("SB001_SLEEP01"), LOOP.ON)
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-283506151)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(1))
  CH("HERO"):DirTo(SymPos("P00_HERO"), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1))
  CH("HERO"):WaitMove()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function sub01_myuutonoseikatsu3rd02_end()
end
function sub01_myuutonoseikatsu3rd03_init()
end
function sub01_myuutonoseikatsu3rd03_start()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV1201"))
  MAP:SetVisibleBG(true)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(-1003005478)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1))
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function sub01_myuutonoseikatsu3rd03_end()
end
function groundEnd()
end

