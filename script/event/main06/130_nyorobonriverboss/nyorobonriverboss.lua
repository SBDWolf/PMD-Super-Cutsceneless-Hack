dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main06_nyorobonriverboss01_init()
end
function main06_nyorobonriverboss01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  CH("HERO"):SetPosition(SymPos("P00_HERO"))
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CH("NYOROMO"):SetPosition(SymPos("P00_NYOROMO"))
  CH("NYOROBON"):SetPosition(SymPos("P00_NYOROBON"))
  CH("NYOROBON2"):SetPosition(SymPos("P01_NYOROBON2"))
  CH("NYOROBON3"):SetPosition(SymPos("P01_NYOROBON3"))
  CH("NYOROMO"):MoveHeightTo(Height(0), Speed(300))
  CH("NYOROBON"):MoveHeightTo(Height(0), Speed(300))
  CH("NYOROBON2"):MoveHeightTo(Height(0), Speed(300))
  CH("NYOROBON3"):MoveHeightTo(Height(0), Speed(300))
  CH("PARTNER"):SetDir(RotateTarget(180))
  CH("HERO"):SetDir(RotateTarget(180))
  CH("NYOROBON"):SetDir(RotateTarget(0))
  CH("NYOROBON2"):SetDir(RotateTarget(0))
  CH("NYOROBON3"):SetDir(RotateTarget(0))
  CH("NYOROBON"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("NYOROBON2"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("NYOROBON3"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("NYOROMO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("NYOROBON"):WaitMoveHeight()
  CH("NYOROBON2"):WaitMoveHeight()
  CH("NYOROBON3"):WaitMoveHeight()
  CH("NYOROMO"):WaitMoveHeight()
  SCREEN_A:FadeIn(TimeSec(0.5), true)


  -- TASK:Sleep(TimeSec(1))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CH("NYOROBON"):SetVisible(false)
  -- CH("NYOROBON2"):SetVisible(false)
  -- CH("NYOROBON3"):SetVisible(false)
  -- CH("NYOROMO"):SetVisible(false)
  -- CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  -- CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  -- SOUND:PlayEnv(SymSnd("SE_ENV_BREEZE_LP"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.2))
  -- CAMERA:MoveFollow(SymCam("CAMERA_01"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("HERO"):WaitMove()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1616390644, PARTNER_1 = -2034440371})
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1382959986, PARTNER_1 = -1265990193})
  -- WINDOW:SwitchTalk({PARTNER_0 = -70577400, PARTNER_1 = -489676215})
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -906137206, PARTNER_1 = -790216501})
  -- WINDOW:CloseMessage()
  -- subEveNod(CH("HERO"))
  -- TASK:Sleep(TimeSec(0.2))
  -- CAMERA:MoveFollow(SymCam("CAMERA_02"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):RunTo(SymPos("P01_PARTNER"), Speed(3))
  -- CH("HERO"):WaitMove()
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- SOUND:FadeOutEnv(TimeSec(0.5))
  -- SOUND:PlaySe(SymSnd("SE_EVT_BOON"))
  -- WINDOW:SysMsg(1467898884)
  -- TASK:Sleep(TimeSec(1))
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- local taskLookAroundHero00 = function()
  --   CH("HERO"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  --   CH("HERO"):WaitRotate()
  --   subEveLookAround(CH("HERO"), Speed(400))
  -- end
  -- local taskLookAroundPartner00 = function()
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("PARTNER"):DirTo(RotateTarget(-135), Speed(350), ROT_TYPE.NEAR)
  --   CH("PARTNER"):WaitRotate()
  --   subEveLookAround02(CH("PARTNER"), Speed(350))
  -- end
  -- TASK:Regist(taskLookAroundPartner00)
  -- TASK:Regist(Group("grpHero"), taskLookAroundHero00)
  -- SOUND:PlaySe(SymSnd("SE_EVT_BOBOON"))
  -- WINDOW:SysMsg(1315269957)
  -- TASK:WaitTask(Group("grpHero"))
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:SysMsg(-450436061)
  -- local taskNyorobon00 = function()
  --   SOUND:PlaySe(SymSnd("SE_EVT_NUOO_RISE"), Volume(256))
  --   EFFECT:Create("effectWater", SymEff("EV_WATER_SPRAY"))
  --   EFFECT:SetPosition("effectWater", SymPos("P01_EFF_WATER"))
  --   EFFECT:SetScale("effectWater", Scale(2, 2, 2))
  --   EFFECT:Play("effectWater")
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("NYOROBON"):SetVisible(true)
  --   CH("NYOROBON"):SetMotion(SymMot("JUMP"), LOOP.OFF)
  --   CH("NYOROBON"):MoveHeightTo(Height(3), Speed(8, ACCEL_TYPE.HIGH, DECEL_TYPE.HIGH))
  --   CH("NYOROBON"):MoveTo(SymPos("P00_NYOROBON"), Speed(4))
  --   CH("NYOROBON"):WaitMoveHeight()
  --   CH("NYOROBON"):SetMotion(SymMot("LANDING"), LOOP.OFF)
  --   CH("NYOROBON"):MoveHeightTo(Height(0), Speed(8))
  --   CH("NYOROBON"):WaitMoveHeight()
  --   CH("NYOROBON"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- end
  -- local taskNyorobon02 = function()
  --   EFFECT:Create("effectWater02", SymEff("EV_WATER_SPRAY"))
  --   EFFECT:SetPosition("effectWater02", SymPos("P02_EFF_WATER"))
  --   EFFECT:SetScale("effectWater02", Scale(2, 2, 2))
  --   EFFECT:Play("effectWater02")
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("NYOROBON2"):SetVisible(true)
  --   CH("NYOROBON2"):SetMotion(SymMot("JUMP"), LOOP.OFF)
  --   CH("NYOROBON2"):MoveHeightTo(Height(3), Speed(8, ACCEL_TYPE.HIGH, DECEL_TYPE.HIGH))
  --   CH("NYOROBON2"):MoveTo(SymPos("P00_NYOROBON2"), Speed(4))
  --   CH("NYOROBON2"):WaitMoveHeight()
  --   CH("NYOROBON2"):SetMotion(SymMot("LANDING"), LOOP.OFF)
  --   CH("NYOROBON2"):MoveHeightTo(Height(0), Speed(8))
  --   CH("NYOROBON2"):WaitMoveHeight()
  --   CH("NYOROBON2"):WaitMove()
  --   CH("NYOROBON2"):DirTo(RotateTarget(45), Speed(350), ROT_TYPE.NEAR)
  --   CH("NYOROBON2"):WaitRotate()
  -- end
  -- local taskNyorobon03 = function()
  --   EFFECT:Create("effectWater03", SymEff("EV_WATER_SPRAY"))
  --   EFFECT:SetPosition("effectWater03", SymPos("P03_EFF_WATER"))
  --   EFFECT:SetScale("effectWater03", Scale(2, 2, 2))
  --   EFFECT:Play("effectWater03")
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("NYOROBON3"):SetVisible(true)
  --   CH("NYOROBON3"):SetMotion(SymMot("JUMP"), LOOP.OFF)
  --   CH("NYOROBON3"):MoveHeightTo(Height(3), Speed(8, ACCEL_TYPE.HIGH, DECEL_TYPE.HIGH))
  --   CH("NYOROBON3"):MoveTo(SymPos("P00_NYOROBON3"), Speed(4))
  --   CH("NYOROBON3"):WaitMoveHeight()
  --   CH("NYOROBON3"):SetMotion(SymMot("LANDING"), LOOP.OFF)
  --   CH("NYOROBON3"):MoveHeightTo(Height(0), Speed(8))
  --   CH("NYOROBON3"):WaitMoveHeight()
  --   CH("NYOROBON3"):WaitMove()
  --   CH("NYOROBON3"):DirTo(RotateTarget(-45), Speed(350), ROT_TYPE.NEAR)
  --   CH("NYOROBON3"):WaitRotate()
  -- end
  -- TASK:Regist(taskNyorobon00)
  -- TASK:Regist(taskNyorobon02)
  -- TASK:Regist(taskNyorobon03)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):DirTo(RotateTarget(180), Speed(500), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(500), ROT_TYPE.NEAR)
  -- WINDOW:ForceCloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_05"), Speed(10, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_SHOCK_L")
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("HERO"):SetMotion(SymMot("EV000_SURPRISE"), LOOP.OFF)
  -- CH("PARTNER"):SetMotion(SymMot("EV000_SURPRISE"), LOOP.OFF)
  -- CH("HERO"):MoveTo(SymPos("P00_HERO"), Speed(5), LINK_DIR.OFF)
  -- CH("PARTNER"):MoveTo(SymPos("P00_PARTNER"), Speed(5), LINK_DIR.OFF)
  -- CH("HERO"):WaitMove()
  -- CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -63056542, PARTNER_1 = -686782815})
  -- CAMERA:WaitMove()
  -- subEveCloseMsg()
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_02"), Volume(256))
  -- CH("NYOROBON2"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(20, 88, SymAct("NYOROBON2"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(-15, -15)
  -- WINDOW:Talk(SymAct(""), -838092832)
  -- subEveCloseMsg()
  -- CH("NYOROBON2"):ResetManpu()
  -- CH("NYOROBON3"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(324, 88, SymAct("NYOROBON3"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(15, 10)
  -- WINDOW:Talk(SymAct(""), -2125848281)
  -- subEveCloseMsg()
  -- CH("NYOROBON3"):ResetManpu()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1739517850, PARTNER_1 = -1283701851})
  -- WINDOW:CloseMessage()
  -- EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  -- EFFECT:SetPosition("effectBgConLp", CH("HERO"), BODY_POINT.CENTER)
  -- EFFECT:Play("effectBgConLp")
  -- CAMERA:SetEye(SymCam("CAMERA_06"))
  -- CAMERA:SetTgt(SymCam("CAMERA_06"))
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  -- WINDOW:Talk(SymAct(""), -1436060956)
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- WINDOW:CloseMessage()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("NYOROBON")
  -- })
  -- WINDOW:Talk(SymAct(""), 771714603)
  -- WINDOW:Talk(SymAct("NYOROBON"), 887381866)
  -- WINDOW:CloseMessage()
  -- EFFECT:Remove("effectBgConLp")
  -- CAMERA:SetEye(SymCam("CAMERA_07"))
  -- CAMERA:SetTgt(SymCam("CAMERA_07"))
  -- CH("NYOROBON2"):DirTo(CH("NYOROBON"), Speed(350), ROT_TYPE.NEAR)
  -- CH("NYOROBON2"):WaitRotate()
  -- CH("NYOROBON3"):DirTo(CH("NYOROBON2"), Speed(350), ROT_TYPE.NEAR)
  -- CAMERA:WaitMove()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("NYOROBON2")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("NYOROBON2"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON2"), -141341747)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  -- CH("NYOROBON"):SetManpu("MP_NOTICE_L")
  -- CH("NYOROBON"):DirTo(CH("NYOROBON2"), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):DirTo(CH("NYOROBON2"), Speed(350), ROT_TYPE.NEAR)
  -- WINDOW:Talk(SymAct("NYOROBON2"), -293045620)
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_08"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("PARTNER"):DirTo(CH("NYOROBON3"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):DirTo(CH("NYOROBON3"), Speed(350), ROT_TYPE.NEAR)
  -- CAMERA:WaitMove()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("NYOROBON3")
  -- })
  -- CH("NYOROBON"):DirTo(CH("NYOROBON3"), Speed(350), ROT_TYPE.NEAR)
  -- CH("NYOROBON2"):DirTo(CH("NYOROBON3"), Speed(350), ROT_TYPE.NEAR)
  -- WINDOW:DrawFace(324, 88, SymAct("NYOROBON3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON3"), -979031729)
  -- WINDOW:Talk(SymAct("NYOROBON3"), -591521778)
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_09"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- CAMERA:WaitMove()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("NYOROBON"):SetManpu("MP_FLY_SWEAT")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("NYOROBON2"):SetManpu("MP_FLY_SWEAT")
  -- CH("NYOROBON3"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("NYOROBON")
  -- })
  -- WINDOW:DrawFace(72, 16, SymAct("NYOROBON"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(30, 0)
  -- WINDOW:Talk(SymAct("NYOROBON"), -1811968311)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  -- CH("NYOROBON2"):SetManpu("MP_ANGRY_LP")
  -- CH("NYOROBON2"):WalkTo(SymPos("P01_NYOROBON2"), Speed(1.5))
  -- CH("NYOROBON2"):WaitMove()
  -- WINDOW:DrawFace(20, 88, SymAct("NYOROBON2"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON2"), -1964720248)
  -- WINDOW:CloseMessage()
  -- CH("NYOROBON3"):WalkTo(SymPos("P01_NYOROBON3"), Speed(1.5))
  -- CH("NYOROBON3"):WaitMove()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  -- CH("NYOROBON3"):SetManpu("MP_ANGRY_LP")
  -- WINDOW:DrawFace(324, 88, SymAct("NYOROBON3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON3"), -1580602293)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_15"))
  -- CAMERA:SetTgt(SymCam("CAMERA_15"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  -- CH("HERO"):SetManpu("MP_SWEAT_L_AL")
  -- CH("PARTNER"):SetManpu("MP_SWEAT_L")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.CATCHBREATH)
  -- WINDOW:DrawFaceOffset(10, 10)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1194140406, PARTNER_1 = 1061863877})
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_09"))
  -- CAMERA:SetTgt(SymCam("CAMERA_09"))
  -- CH("NYOROBON2"):ResetManpu()
  -- CH("NYOROBON"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("NYOROBON2"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  -- CH("NYOROBON3"):ResetManpu()
  -- CH("NYOROBON3"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  -- CH("NYOROBON"):WaitRotate()
  -- CAMERA:WaitMove()
  -- CH("NYOROBON"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- WINDOW:DrawFaceF(172, 8, SymAct("NYOROBON"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON"), 642904196)
  -- subEveCloseMsg()
  -- CH("NYOROBON2"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- WINDOW:DrawFace(20, 20, SymAct("NYOROBON2"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON2"), 1328491688)
  -- subEveCloseMsg()
  -- CH("NYOROBON3"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- WINDOW:DrawFace(324, 20, SymAct("NYOROBON3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON3"), 1446256105)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  -- subEveFlash()
  -- CAMERA:SetEye(SymCam("CAMERA_15"))
  -- CAMERA:SetTgt(SymCam("CAMERA_15"))
  -- CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.DECIDE)
  -- WINDOW:DrawFaceOffset(10, 10)
  -- WINDOW:SwitchTalk({PARTNER_0 = 2098810410, PARTNER_1 = 1677885291})
  -- WINDOW:SwitchTalk({PARTNER_0 = 725871020, PARTNER_1 = 844683501})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_13"))
  -- CAMERA:SetTgt(SymCam("CAMERA_13"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:Talk(SymAct("NYOROBON"), 427133742)
  -- WINDOW:Talk(SymAct("NYOROBON"), 7256687)
  -- WINDOW:CloseMessage()
  -- SOUND:FadeInEnv(SymSnd("SE_EVT_EARTHQUAKE_L_LP"), TimeSec(0.5), Volume(256))
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_FEAR_01"), Volume(256))
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- CH("PARTNER"):WaitManpu()
  -- TASK:Regist(Group("grpPartner"), taskLookAroundPartner00)
  -- TASK:Regist(Group("grpHero"), taskLookAroundHero00)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -2013878624, PARTNER_1 = -1628596255})
  -- TASK:WaitTask(Group("grpPartner"))
  -- WINDOW:CloseMessage()
  -- CH("PARTNER"):DirTo(RotateTarget(-135), Speed(350), ROT_TYPE.NEAR)
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  -- CAMERA:SetEye(SymCam("CAMERA_11"))
  -- CAMERA:SetTgt(SymCam("CAMERA_11"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:SysMsg(-755493871)
  -- TASK:Sleep(TimeSec(0.5))
  -- SOUND:FadeOutEnv(TimeSec(0.5))
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- local taskNyoromo00 = function()
  --   SOUND:PlaySe(SymSnd("SE_EVT_CHAPA"), Volume(256))
  --   EFFECT:Create("effectWater04", SymEff("EV_WATER_SPRAY"))
  --   EFFECT:SetPosition("effectWater04", SymPos("P04_EFF_WATER"))
  --   EFFECT:Play("effectWater04")
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("NYOROMO"):SetVisible(true)
  --   CH("NYOROMO"):SetMotion(SymMot("JUMP"), LOOP.OFF)
  --   CH("NYOROMO"):MoveHeightTo(Height(2), Speed(6, ACCEL_TYPE.HIGH, DECEL_TYPE.HIGH))
  --   CH("NYOROMO"):MoveTo(SymPos("P00_NYOROMO"), Speed(3))
  --   CH("NYOROMO"):WaitMoveHeight()
  --   CH("NYOROMO"):SetMotion(SymMot("LANDING"), LOOP.OFF)
  --   CH("NYOROMO"):MoveHeightTo(Height(0), Speed(6))
  --   CH("NYOROMO"):WaitMoveHeight()
  --   CH("NYOROMO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- end
  -- TASK:Regist(taskNyoromo00)
  -- WINDOW:ForceCloseMessage()
  -- TASK:Sleep(TimeSec(0.3))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_12"), Speed(3, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):DirTo(SymPos("P00_NYOROMO"), Speed(500), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):DirTo(SymPos("P00_NYOROMO"), Speed(500), ROT_TYPE.NEAR)
  -- CAMERA:WaitMove()
  -- TASK:WaitTask()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("NYOROMO"):SetManpu("MP_SPREE_LP")
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("NYOROMO")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("NYOROMO"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROMO"), -874306224)
  -- WINDOW:CloseMessage()
  -- CH("NYOROMO"):ResetManpu()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_14"), Speed(3.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CAMERA:WaitMove()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_SWEAT_L")
  -- CH("HERO"):SetManpu("MP_SWEAT_L")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.CATCHBREATH)
  -- WINDOW:Monologue(-523340141)
  -- subEveCloseMsg()
  -- WINDOW:DrawFaceF(172, 8, SymAct("PARTNER"), FACE_TYPE.CATCHBREATH)
  -- WINDOW:DrawFaceOffset(30, 0)
  -- WINDOW:SwitchTalk({PARTNER_0 = -103462958, PARTNER_1 = -1231761131})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetEye(SymCam("CAMERA_09"))
  -- CAMERA:SetTgt(SymCam("CAMERA_09"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("NYOROBON"):SetManpu("MP_FLY_SWEAT")
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("NYOROBON2"):SetManpu("MP_FLY_SWEAT")
  -- CH("NYOROBON3"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- CH("PARTNER"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  -- WINDOW:DrawFaceF(172, 8, SymAct("NYOROBON"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON"), -1349525420)
  -- subEveCloseMsg()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("NYOROBON2")
  -- })
  -- WINDOW:DrawFace(20, 20, SymAct("NYOROBON2"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON2"), -2069711977)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(324, 20, SymAct("NYOROBON3"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("NYOROBON3"), -1648786730)
  -- WINDOW:CloseMessage()
  -- CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- subEveFlash2()
  SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  CAMERA:SetDefaultGroundFovy()
  SYSTEM:SetNextDungeonBanner(false)
end
function main06_nyorobonriverboss01_end()
end
function groundEnd()
end

