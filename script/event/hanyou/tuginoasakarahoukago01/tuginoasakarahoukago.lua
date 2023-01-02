dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function hanyou_tuginoasakarahoukago01_init()
end
function hanyou_tuginoasakarahoukago01_start()
  WINDOW:Narration(TimeSec(0.3), TimeSec(0.3), -1636303297)
  WINDOW:Narration(TimeSec(0.3), TimeSec(0.3), -2022912130)
  WINDOW:Narration(TimeSec(0.3), TimeSec(0.3), -1404986179)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  WINDOW:SysMsg(-1252348420)
  SOUND:WaitSe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  WINDOW:ForceCloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("NYASUPAA"):WalkTo(SymPos("P00_NYASUPAA"), Speed(1.5))
  local taskNumeShiki01 = function()
    CH("NUMERA"):SetMotion(SymMot("PULL"), LOOP.ON)
    CH("NUMERA"):SetMotionRaito(Raito(2))
    TASK:Sleep(TimeSec(0.5))
    CH("NUMERA"):SetMotion(SymMot("PULL"), LOOP.ON)
    CH("NUMERA"):SetMotionRaito(Raito(2))
    TASK:Sleep(TimeSec(0.5))
    CH("NUMERA"):SetMotionRaito(Raito(1))
    CH("NUMERA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):WaitRotate()
    TASK:Sleep(TimeSec(0.2))
    subEveNod(CH("SHIKIJIKA_SPRING"))
    CH("NUMERA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.RIGHT)
    CH("NUMERA"):WaitRotate()
  end
  TASK:Regist(Group("grpNumeShiki01"), taskNumeShiki01)
  local taskYanChobo01 = function()
    function TaskL.Loop()
      TASK:Sleep(TimeSec(0.1))
      CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
      TASK:Sleep(TimeSec(1))
      CH("CHOBOMAKI"):ResetManpu()
      TASK:Sleep(TimeSec(0.2))
      CH("YANCHAMU"):SetMotion(SymMot("SPEAK"), LOOP.ON)
      TASK:Sleep(TimeSec(2))
      CH("YANCHAMU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
      TASK:Sleep(TimeSec(0.5))
    end
  end
  TASK:Regist(Group("grpYanChobo01"), taskYanChobo01)
  local taskHero01 = function()
    CH("HERO"):SetMotion(SymMot("EV001_GASAGASA"), LOOP.ON)
    TASK:Sleep(TimeSec(0.7))
    CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
    TASK:Sleep(TimeSec(0.3))
    CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.RIGHT)
    CH("HERO"):WaitRotate()
    CH("HERO"):SetMotion(SymMot("EV001_GASAGASA"), LOOP.ON)
    TASK:Sleep(TimeSec(0.5))
    CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
    TASK:Sleep(TimeSec(0.3))
    CH("HERO"):DirTo(RotateTarget(-125), Speed(500), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
  end
  TASK:Regist(taskHero01)
  local taskPartner01 = function()
    TASK:Sleep(TimeSec(0.5))
    CH("PARTNER"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
    CH("PARTNER"):WaitRotate()
    TASK:Sleep(TimeSec(0.5))
    CH("PARTNER"):DirTo(CH("NUMERA"), Speed(500), ROT_TYPE.NEAR)
    CH("PARTNER"):WaitRotate()
    TASK:Sleep(TimeSec(0.5))
    CH("PARTNER"):DirTo(CH("CHOBOMAKI"), Speed(500), ROT_TYPE.NEAR)
    CH("PARTNER"):WaitRotate()
  end
  TASK:Regist(taskPartner01)
  SOUND:PlayBgm(SymSnd("BGM_EVE_GAKKOU_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:WaitTask(Group("grpNumeShiki01"))
  WINDOW:DrawFace(20, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -98878661)
  CH("HERO"):DirTo(CH("NUMERA"), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):DirTo(CH("NUMERA"), Speed(500), ROT_TYPE.NEAR)
  WINDOW:CloseMessage()
  CH("PARTNER"):WaitRotate()
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P00_SHIKIJIKA_SPRING"), Speed(1.5))
  TASK:Sleep(TimeSec(0.2))
  CH("NUMERA"):WalkTo(SymPos("P00_NUMERA"), Speed(1.5))
  TASK:Sleep(TimeSec(0.4))
  WINDOW:DrawFaceF(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -486536582, PARTNER_1 = -936552007})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -784963336, PARTNER_1 = 1454273591})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  CAMERA:MoveToHero(Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function hanyou_tuginoasakarahoukago01_end()
end
function groundEnd()
end

