dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main07_tuginoasakarahoukago1st01_init()
end
function main07_tuginoasakarahoukago1st01_start()
  CH("NYASUPAA"):SetPosition(SymPos("P00_NYASUPAA"))
  CH("SHIKIJIKA_SPRING"):SetPosition(SymPos("P00_SHIKIJIKA"))
  CH("NUMERA"):SetPosition(SymPos("P00_NUMERA"))
  CH("PARTNER"):SetDir(CH("HERO"))
  CH("HERO"):SetDir(CH("PARTNER"))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)

  -- WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), 1006154466)
  -- WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), 585335715)
  -- WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), 164548704)
  -- WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), 282452257)
  -- WINDOW:CloseMessage()
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  -- WINDOW:SysMsg(1603565542)
  -- SOUND:WaitSe(SymSnd("SE_EVT_SCHOOL_CHIME"))
  -- WINDOW:ForceCloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("NYASUPAA"):WalkTo(SymPos("P00_NYASUPAA"), Speed(1.5))
  -- local taskNumeShiki01 = function()
  --   CH("NUMERA"):SetMotion(SymMot("PULL"), LOOP.ON)
  --   CH("NUMERA"):SetMotionRaito(Raito(2))
  --   TASK:Sleep(TimeSec(0.5))
  --   CH("NUMERA"):SetMotion(SymMot("PULL"), LOOP.ON)
  --   CH("NUMERA"):SetMotionRaito(Raito(2))
  --   TASK:Sleep(TimeSec(0.5))
  --   CH("NUMERA"):SetMotionRaito(Raito(1))
  --   CH("NUMERA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  --   CH("NUMERA"):WaitRotate()
  --   TASK:Sleep(TimeSec(0.2))
  --   subEveNod(CH("SHIKIJIKA_SPRING"))
  --   CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P00_SHIKIJIKA"), Speed(1.5))
  --   TASK:Sleep(TimeSec(0.2))
  --   CH("NUMERA"):WalkTo(SymPos("P00_NUMERA"), Speed(1.5))
  -- end
  -- TASK:Regist(Group("grpNumeShiki01"), taskNumeShiki01)
  -- local taskYanChobo01 = function()
  --   function TaskL.Loop()
  --     TASK:Sleep(TimeSec(0.1))
  --     CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  --     TASK:Sleep(TimeSec(1))
  --     CH("CHOBOMAKI"):ResetManpu()
  --     TASK:Sleep(TimeSec(0.2))
  --     CH("YANCHAMU"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  --     TASK:Sleep(TimeSec(2))
  --     CH("YANCHAMU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  --     TASK:Sleep(TimeSec(0.5))
  --   end
  -- end
  -- TASK:Regist(Group("grpYanChobo01"), taskYanChobo01)
  -- local taskHero01 = function()
  --   CH("HERO"):SetMotion(SymMot("EV001_GASAGASA"), LOOP.ON)
  --   TASK:Sleep(TimeSec(0.7))
  --   CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.RIGHT)
  --   CH("HERO"):WaitRotate()
  --   CH("HERO"):SetMotion(SymMot("EV001_GASAGASA"), LOOP.ON)
  --   TASK:Sleep(TimeSec(0.5))
  --   CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("HERO"):DirTo(RotateTarget(-125), Speed(500), ROT_TYPE.NEAR)
  --   CH("HERO"):WaitRotate()
  -- end
  -- TASK:Regist(taskHero01)
  -- local taskPartner01 = function()
  --   TASK:Sleep(TimeSec(0.5))
  --   CH("PARTNER"):DirTo(CH("HERO"), Speed(500), ROT_TYPE.NEAR)
  --   CH("PARTNER"):WaitRotate()
  --   TASK:Sleep(TimeSec(0.5))
  --   CH("PARTNER"):DirTo(CH("NUMERA"), Speed(500), ROT_TYPE.NEAR)
  --   CH("PARTNER"):WaitRotate()
  --   TASK:Sleep(TimeSec(0.5))
  --   CH("PARTNER"):DirTo(CH("CHOBOMAKI"), Speed(500), ROT_TYPE.NEAR)
  --   CH("PARTNER"):WaitRotate()
  -- end
  -- TASK:Regist(Group("grpPartner01"), taskPartner01)
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_GAKKOU_01"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:WaitTask(Group("grpPartner01"))
  -- TASK:Regist(subEveJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1183794855, PARTNER_1 = 1839338852})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1958290469, PARTNER_1 = -215926550})
  -- WINDOW:CloseMessage()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  -- WINDOW:SwitchTalk({PARTNER_0 = -365295189, PARTNER_1 = 1862548319})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):ResetManpu()
  -- subEveNod(CH("HERO"))
  CAMERA:MoveToHero(Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
end
function main07_tuginoasakarahoukago1st01_end()
end
function groundEnd()
end

