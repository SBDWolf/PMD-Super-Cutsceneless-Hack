dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main03_moguryutankouboss2nd01_init()
end
function main03_moguryutankouboss2nd01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  CAMERA:SetSisaRateVolume(Volume(1))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SOUND:PlayBgm(SymSnd("BGM_EVE_FEAR_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  CAMERA:WaitMove()
  WINDOW:DrawFace(272, 16, SymAct("GABAITO"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("GABAITO"), 1946776406)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1829913111, PARTNER_1 = 1178538452})
  WINDOW:CloseMessage()
  EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  EFFECT:SetPosition("effectBgConLp", CH("GABAITO"), BODY_POINT.CENTER)
  EFFECT:Play("effectBgConLp")
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:Talk(SymAct("GABAITO"), 1596203157)
  WINDOW:CloseMessage()
  EFFECT:Remove("effectBgConLp")
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("GABAITO"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("GABAITO"):WaitRotate()
  WINDOW:SysMsg(275101266)
  WINDOW:Talk(SymAct("GABAITO"), 159287059)
  WINDOW:CloseMessage()
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("GABAITO"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("GABAITO"):WaitRotate()
  WINDOW:Talk(SymAct("GABAITO"), 575919312)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  subEveFlash()
  CH("GABAITO"):SetMotion(SymMot("CHARGE"), LOOP.OFF)
  WINDOW:Talk(SymAct("GABAITO"), 994633105)
  CH("GABAITO"):WaitPlayMotion()
  CH("GABAITO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  WINDOW:CloseMessage()
  subEveFlash2()
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:MoveFollow2(SymCam("CAMERA_04_5"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("GABAITO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  WINDOW:Talk(SymAct("GABAITO"), -1127155362)
  CAMERA:WaitMove()
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  CAMERA:SetDefaultGroundFovy()
  SYSTEM:SetNextDungeonBanner(false)
end
function main03_moguryutankouboss2nd01_end()
end
function groundEnd()
end

