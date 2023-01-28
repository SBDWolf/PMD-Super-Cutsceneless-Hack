dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main21_chitenenter01_init()
end
function main21_chitenenter01_start()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("SUIKUN"):SetPosition(SymPos("P00_SUIKUN"))
  CH("ENTEI"):SetPosition(SymPos("P00_ENTEI"))
  CH("RAIKOU"):SetPosition(SymPos("P00_RAIKOU"))
  CH("HERO"):SetPosition(SymPos("P00_HERO"))
  CH("KUCHIITO"):SetPosition(SymPos("P00_KUCHIITO"))
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CH("ENTEI"):SetDir(CH("HERO"))
  CH("SUIKUN"):SetDir(CH("HERO"))
  CH("RAIKOU"):SetDir(CH("HERO"))
  CH("HERO"):SetDir(CH("ENTEI"))
  CH("PARTNER"):SetDir(CH("ENTEI"))
  CH("KUCHIITO"):SetDir(CH("ENTEI"))
  SOUND:PlayBgm(SymSnd("BGM_DUN_20"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CAMERA:MoveToHero(Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()

  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- TASK:Regist(subEveMoveDir, {
  --   CH("SUIKUN"),
  --   SymPos("P00_SUIKUN"),
  --   Speed(1.5),
  --   SymPos("P_ENTER")
  -- })
  -- TASK:Regist(subEveMoveDir, {
  --   CH("ENTEI"),
  --   SymPos("P00_ENTEI"),
  --   Speed(1.5),
  --   SymPos("P_ENTER")
  -- })
  -- TASK:Regist(subEveMoveDir, {
  --   CH("RAIKOU"),
  --   SymPos("P00_RAIKOU"),
  --   Speed(1.5),
  --   SymPos("P_ENTER")
  -- })
  -- TASK:Regist(subEveMoveDir, {
  --   CH("HERO"),
  --   SymPos("P00_HERO"),
  --   Speed(1.5),
  --   SymPos("P_ENTER")
  -- })
  -- TASK:Regist(subEveMoveDir, {
  --   CH("PARTNER"),
  --   SymPos("P00_PARTNER"),
  --   Speed(1.5),
  --   SymPos("P_ENTER")
  -- })
  -- TASK:Regist(subEveMoveDir, {
  --   CH("KUCHIITO"),
  --   SymPos("P00_KUCHIITO"),
  --   Speed(1.5),
  --   SymPos("P_ENTER")
  -- })
  -- SOUND:PlayBgm(SymSnd("BGM_DUN_20"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.7))
  -- CAMERA:MoveFollow(SymCam("CAMERA_01"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CAMERA:WaitMove()
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(20, 88, SymAct("RAIKOU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("RAIKOU"), 494689851)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- CAMERA:ResetSisaAzimuthDifferenceVolume()
  -- CH("ENTEI"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("SUIKUN"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("RAIKOU"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- CH("HERO"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("PARTNER"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("KUCHIITO"):DirTo(CH("ENTEI"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(72, 16, SymAct("ENTEI"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("ENTEI"), 73887610)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_SHOCK_L")
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  -- CH("HERO"):WaitManpu()
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SURPRISE)
  -- WINDOW:Monologue(793394361)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("RAIKOU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("RAIKOU"), 911281656)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(72, 16, SymAct("ENTEI"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("ENTEI"), 2031131455)
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveToHero(Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CAMERA:WaitMove()
end
function main21_chitenenter01_end()
end
function groundEnd()
end

