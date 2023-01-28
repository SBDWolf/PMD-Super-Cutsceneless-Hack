dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main20_shizukanaiwabachuukeiyarare01_init()
end
function main20_shizukanaiwabachuukeiyarare01_start()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = -1062601918, PARTNER_1 = -642594301})
  WINDOW:KeyWait()
  SCREEN_A:FadeOutAll(TimeSec(0.5), true)
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("SE_ENV_FOREST_NIGHT_LP"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("AAKEN"):SetManpu("MP_FLY_SWEAT")
  CH("AAKEN"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("AAKEN"), -224421440)
  subEveCloseMsg()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = -343627647, PARTNER_1 = -1530577338})
  subEveCloseMsg()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(324, 20, SymAct("DEDENNE"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("DEDENNE"), -1109520633)
  WINDOW:CloseMessage()
  WINDOW:DrawFace(20, 88, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KUCHIITO"), -1762435900)
  subEveCloseMsg()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun01 = function()
    subEveNod(CH("PARTNER"))
  end
  local taskUnun02 = function()
    subEveNod(CH("DEDENNE"))
  end
  local taskUnun03 = function()
    subEveNod(CH("KUCHIITO"))
  end
  local taskUnun04 = function()
    subEveNod(CH("BUIZERU"))
  end
  local taskUnun05 = function()
    subEveNod(CH("AAKEN"))
  end
  local taskUnun06 = function()
    subEveNod(CH("HORUBII"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun01)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Regist(taskUnun04)
  TASK:Regist(taskUnun05)
  TASK:Regist(taskUnun06)
  TASK:Sleep(TimeSec(0.7))
  CAMERA:MoveToHero(Speed(7, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function main20_shizukanaiwabachuukeiyarare01_end()
end
function groundEnd()
end

