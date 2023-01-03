dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main03_moguryutankouboss1st01_init()
end
function main03_moguryutankouboss1st01_start()
  CH("MOGURYUU"):SetVisible(false)
  CH("MOGURYUU2"):SetVisible(false)
  CH("MOGURYUU3"):SetVisible(false)
  CH("HERO"):SetDir(CH("GABAITO"))
  CH("PARTNER"):SetDir(CH("GABAITO"))
  CH("GABAITO"):SetDir(RotateTarget(0))
  CH("GABAITO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  subEveFromProgFadeSet()
  CAMERA:SetFovy(SymCam("CAMERA_03_5"))
  CAMERA:SetEye(SymCam("CAMERA_03_5"))
  CAMERA:SetTgt(SymCam("CAMERA_03_5"))
  CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  CAMERA:SetDefaultGroundFovy()
  SYSTEM:SetNextDungeonBanner(false)
  -- TASK:Sleep(TimeSec(1))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  -- CAMERA:SetSisaRateVolume(Volume(1))
  -- subEveFromProgFadeSet()
  -- CH("MOGURYUU"):SetVisible(false)
  -- CH("MOGURYUU2"):SetVisible(false)
  -- CH("MOGURYUU3"):SetVisible(false)
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = 988895905, PARTNER_1 = 602565600})
  -- subEveCloseMsg()
  -- SOUND:PlaySe(SymSnd("SE_EVT_GURURU"), Volume(256))
  -- WINDOW:SysMsg(147273763)
  -- TASK:Sleep(TimeSec(1))
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.HAPPY)
  -- WINDOW:SwitchTalk({PARTNER_0 = 299632994, PARTNER_1 = 1587388325})
  -- subEveCloseMsg()
  -- SOUND:PlaySe(SymSnd("SE_EVT_GURURU"), Volume(256))
  -- WINDOW:SysMsg(1200008932)
  -- TASK:Sleep(TimeSec(1))
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1823210791, PARTNER_1 = 1974520934})
  -- subEveCloseMsg()
  -- SOUND:PlaySe(SymSnd("SE_EVT_GROWL"), Volume(256))
  -- WINDOW:SysMsg(-232206167)
  -- WINDOW:SysMsg(-348921368)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 444681434, PARTNER_1 = 60456347})
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  -- WINDOW:SwitchTalk({PARTNER_0 = 683093592, PARTNER_1 = 833363737})
  -- subEveCloseMsg()
  -- WINDOW:SysMsg(2129496542)
  -- WINDOW:KeyWait()
  -- SOUND:PlaySe(SymSnd("SE_EVT_GUWAAAA"), Volume(256))
  -- WINDOW:SysMsg(1744222367)
  -- TASK:Sleep(TimeSec(1))
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  -- SCREEN_A:WhiteOutAll(TimeSec(0.02), true)
  -- TASK:Sleep(TimeSec(0.1))
  -- SCREEN_A:WhiteInAll(TimeSec(0.02), true)
  -- TASK:Sleep(TimeSec(0.2))
  -- SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  -- SCREEN_A:WhiteOutAll(TimeSec(0.02), true)
  -- TASK:Sleep(TimeSec(0.1))
  -- SCREEN_A:WhiteInAll(TimeSec(0.02), true)
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetFovy(SymCam("CAMERA_00"))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("HERO"):SetVisible(false)
  -- CH("PARTNER"):SetVisible(false)
  -- EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  -- EFFECT:SetPosition("effectBgConLp", CH("GABAITO"), BODY_POINT.CENTER)
  -- EFFECT:Play("effectBgConLp")
  -- SOUND:PlaySe(SymSnd("SE_EVT_DANGER"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.3), true)
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("PARTNER")
  -- })
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("HERO")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1289481052, PARTNER_1 = 1438702109})
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- CAMERA:WaitMove()
  -- WINDOW:CloseMessage()
  -- EFFECT:Remove("effectBgConLp")
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_FEAR_01"), Volume(256))
  -- CAMERA:SetFovy(SymCam("CAMERA_02"))
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- CAMERA:MoveFollow(SymCam("CAMERA_02_5"), Speed(0.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- WINDOW:Talk(SymAct(""), -765933870)
  -- WINDOW:Talk(SymAct("GABAITO"), -884738157)
  -- WINDOW:Talk(SymAct("GABAITO"), 137683764)
  -- WINDOW:Talk(SymAct("GABAITO"), 288346741)
  -- CAMERA:WaitMove()
  -- subEveCloseMsg()
  -- CH("HERO"):SetVisible(true)
  -- CH("PARTNER"):SetVisible(true)
  -- CAMERA:SetFovy(SymCam("CAMERA_03"))
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_SHOCK_R")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 973242806, PARTNER_1 = 588886263})
  -- subEveCloseMsg()
  -- CAMERA:SetFovy(SymCam("CAMERA_02_5"))
  -- CAMERA:SetEye(SymCam("CAMERA_02_5"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_DOTEKKOTSU"), Volume(256))
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- WINDOW:Talk(SymAct("GABAITO"), 1817716272)
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- WINDOW:CloseMessage()
  -- CH("GABAITO"):SetDir(CH("PARTNER"))
  -- CH("GABAITO"):SetVisible(false)
  -- CAMERA:SetFovy(SymCam("CAMERA_04"))
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(15), RotateTarget(-10), TimeSec(0.2))
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1967331185, PARTNER_1 = 1584284850})
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  -- CH("PARTNER"):ResetFacialMotion()
  -- CH("PARTNER"):ResetNeckRot(TimeSec(0.1))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Regist(subEveJump, {
  --   CH("PARTNER")
  -- })
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1198880243, PARTNER_1 = -1058182852})
  -- WINDOW:KeyWait()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:SwitchTalk({PARTNER_0 = -638166915, PARTNER_1 = -1333230511})
  -- TASK:WaitTask()
  -- WINDOW:CloseMessage()
  -- CH("GABAITO"):SetVisible(true)
  -- CAMERA:SetFovy(SymCam("CAMERA_03"))
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- CH("PARTNER"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("PARTNER"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  -- CH("PARTNER"):WaitPlayMotion()
  -- TASK:Sleep(TimeSec(0.5))
  -- CH("PARTNER"):DirTo(CH("GABAITO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("PARTNER"):WaitRotate()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_QUESTION")
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1449937648, PARTNER_1 = -2101418285})
  -- CH("PARTNER"):WaitManpu()
  -- subEveCloseMsg()
  -- CH("GABAITO"):SetDir(RotateTarget(0))
  -- CH("HERO"):SetDir(CH("GABAITO"))
  -- CH("HERO"):SetVisible(false)
  -- CH("PARTNER"):SetVisible(false)
  -- CAMERA:SetFovy(SymCam("CAMERA_02"))
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:Talk(SymAct("GABAITO"), -1683630190)
  -- WINDOW:KeyWait()
  -- EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  -- EFFECT:SetPosition("effectBgConLp", CH("GABAITO"), BODY_POINT.CENTER)
  -- EFFECT:Play("effectBgConLp")
  -- SOUND:PlaySe(SymSnd("SE_EVT_DOTEKKOTSU"), Volume(256))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(2.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- WINDOW:Talk(SymAct("GABAITO"), -723238571)
  -- CAMERA:WaitMove()
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  -- subEveFlash()
  -- CH("GABAITO"):SetMotion(SymMot("CHARGE"), LOOP.OFF)
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- WINDOW:Talk(SymAct("GABAITO"), -838897644)
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- CH("GABAITO"):WaitPlayMotion()
  -- CH("GABAITO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- WINDOW:CloseMessage()
  -- EFFECT:Remove("effectBgConLp")
  -- CH("HERO"):SetVisible(true)
  -- CH("PARTNER"):SetVisible(true)
  -- CAMERA:SetFovy(SymCam("CAMERA_03_5"))
  -- CAMERA:SetEye(SymCam("CAMERA_03_5"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03_5"))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_SHOCK_R")
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = -422435881, PARTNER_1 = -3599722})
  -- CAMERA:WaitMove()
  -- subEveCloseMsg()
  -- CH("GABAITO"):SetMotion(SymMot("ATTACK"), LOOP.OFF)
  -- WINDOW:DrawFace(272, 16, SymAct("GABAITO"), FACE_TYPE.ANGRY)
  -- WINDOW:Talk(SymAct("GABAITO"), 2018578009)
  -- CH("GABAITO"):WaitPlayMotion()
  -- CH("GABAITO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- subEveCloseMsg()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1632255768, PARTNER_1 = 761249000})
  -- WINDOW:CloseMessage()
  -- CAMERA:SetFovy(SymCam("CAMERA_02_5"))
  -- CAMERA:SetEye(SymCam("CAMERA_02_5"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:Talk(SymAct("GABAITO"), 876907945)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetFovy(SymCam("CAMERA_06"))
  -- CAMERA:SetEye(SymCam("CAMERA_06"))
  -- CAMERA:SetTgt(SymCam("CAMERA_06"))
  -- local taskMoguryuu_Entry = function()
  --   EFFECT:Create("effectSmoke01", SymEff("EV_SMOKE_BROWN"))
  --   EFFECT:SetPosition("effectSmoke01", SymPos("P01_EFF_SMOKE"))
  --   EFFECT:SetScale("effectSmoke01", Scale(2))
  --   EFFECT:Play("effectSmoke01")
  --   CH("MOGURYUU"):SetMotion(SymMot("EV003_APPEAR00"), LOOP.OFF, TimeSec(0))
  --   CH("MOGURYUU"):SetVisible(true)
  --   CH("MOGURYUU"):WaitPlayMotion()
  --   CH("MOGURYUU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- end
  -- local taskMoguryuu2_Entry = function()
  --   EFFECT:Create("effectSmoke02", SymEff("EV_SMOKE_BROWN"))
  --   EFFECT:SetPosition("effectSmoke02", SymPos("P02_EFF_SMOKE"))
  --   EFFECT:SetScale("effectSmoke02", Scale(2))
  --   EFFECT:Play("effectSmoke02")
  --   CH("MOGURYUU2"):SetMotion(SymMot("EV003_APPEAR00"), LOOP.OFF, TimeSec(0))
  --   CH("MOGURYUU2"):SetVisible(true)
  --   CH("MOGURYUU2"):WaitPlayMotion()
  --   CH("MOGURYUU2"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- end
  -- local taskMoguryuu3_Entry = function()
  --   EFFECT:Create("effectSmoke03", SymEff("EV_SMOKE_BROWN"))
  --   EFFECT:SetPosition("effectSmoke03", SymPos("P03_EFF_SMOKE"))
  --   EFFECT:SetScale("effectSmoke03", Scale(2))
  --   EFFECT:Play("effectSmoke03")
  --   CH("MOGURYUU3"):SetMotion(SymMot("EV003_APPEAR00"), LOOP.OFF, TimeSec(0))
  --   CH("MOGURYUU3"):SetVisible(true)
  --   CH("MOGURYUU3"):WaitPlayMotion()
  --   CH("MOGURYUU3"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- end
  -- SOUND:PlaySe(SymSnd("SE_EVT_DORYUUZU_APPEAR"), Volume(256))
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- TASK:Regist(Group("moguryuu_1"), taskMoguryuu_Entry)
  -- TASK:Sleep(TimeSec(0.1))
  -- SOUND:PlaySe(SymSnd("SE_EVT_DORYUUZU_APPEAR"), Volume(256))
  -- TASK:Regist(Group("moguryuu_2"), taskMoguryuu2_Entry)
  -- TASK:Regist(Group("moguryuu_3"), taskMoguryuu3_Entry)
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- WINDOW:DrawFace(272, 16, SymAct("GABAITO"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("GABAITO"), 527031914)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetFovy(SymCam("CAMERA_07"))
  -- CAMERA:SetEye(SymCam("CAMERA_07"))
  -- CAMERA:SetTgt(SymCam("CAMERA_07"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:Talk(SymAct("MOGURYUU3"), 108195627)
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_08"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("MOGURYUU3"):DirTo(CH("GABAITO"), Speed(350), ROT_TYPE.NEAR)
  -- CH("MOGURYUU3"):WaitRotate()
  -- CH("MOGURYUU"):DirTo(CH("GABAITO"), Speed(350), ROT_TYPE.NEAR)
  -- local taskLookAt01 = function()
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("GABAITO"):DirTo(CH("MOGURYUU3"), Speed(350), ROT_TYPE.NEAR)
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("HERO"):DirTo(CH("MOGURYUU3"), Speed(350), ROT_TYPE.NEAR)
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("PARTNER"):DirTo(CH("MOGURYUU3"), Speed(350), ROT_TYPE.NEAR)
  -- end
  -- TASK:Regist(taskLookAt01)
  -- CAMERA:WaitMove()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("MOGURYUU3"):SetManpu("MP_FLY_SWEAT")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("MOGURYUU"):SetManpu("MP_FLY_SWEAT")
  -- CH("MOGURYUU2"):SetManpu("MP_FLY_SWEAT")
  -- WINDOW:DrawFace(324, 88, SymAct("MOGURYUU3"), FACE_TYPE.SPECIAL01)
  -- WINDOW:Talk(SymAct("MOGURYUU3"), 1228110316)
  -- CH("MOGURYUU3"):WaitManpu()
  -- WINDOW:CloseMessage()
  -- CAMERA:MoveFollow2(SymCam("CAMERA_09"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- local taskLookAt02 = function()
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("GABAITO"):DirTo(CH("MOGURYUU"), Speed(350), ROT_TYPE.NEAR)
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("HERO"):DirTo(CH("MOGURYUU"), Speed(350), ROT_TYPE.NEAR)
  --   TASK:Sleep(TimeSec(0.1))
  --   CH("PARTNER"):DirTo(CH("MOGURYUU"), Speed(350), ROT_TYPE.NEAR)
  -- end
  -- TASK:Regist(taskLookAt02)
  -- CAMERA:WaitMove()
  -- WINDOW:DrawFace(20, 88, SymAct("MOGURYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("MOGURYUU"), 1344817325)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetFovy(SymCam("CAMERA_06"))
  -- CAMERA:SetEye(SymCam("CAMERA_06"))
  -- CAMERA:SetTgt(SymCam("CAMERA_06"))
  -- local taskMoguryuu_Out = function()
  --   CH("MOGURYUU"):SetMotion(SymMot("EV003_APPEAR01"), LOOP.OFF)
  --   TASK:Sleep(TimeSec(0.5))
  --   EFFECT:Create("effectSmoke01", SymEff("EV_SMOKE_BROWN"))
  --   EFFECT:SetPosition("effectSmoke01", SymPos("P01_EFF_SMOKE"))
  --   EFFECT:SetScale("effectSmoke01", Scale(2))
  --   EFFECT:Play("effectSmoke01")
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("MOGURYUU"):SetVisible(false)
  -- end
  -- local taskMoguryuu2_Out = function()
  --   CH("MOGURYUU2"):SetMotion(SymMot("EV003_APPEAR01"), LOOP.OFF)
  --   TASK:Sleep(TimeSec(0.5))
  --   EFFECT:Create("effectSmoke02", SymEff("EV_SMOKE_BROWN"))
  --   EFFECT:SetPosition("effectSmoke02", SymPos("P02_EFF_SMOKE"))
  --   EFFECT:SetScale("effectSmoke02", Scale(2))
  --   EFFECT:Play("effectSmoke02")
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("MOGURYUU2"):SetVisible(false)
  -- end
  -- local taskMoguryuu3_Out = function()
  --   CH("MOGURYUU3"):SetMotion(SymMot("EV003_APPEAR01"), LOOP.OFF)
  --   TASK:Sleep(TimeSec(0.5))
  --   EFFECT:Create("effectSmoke03", SymEff("EV_SMOKE_BROWN"))
  --   EFFECT:SetPosition("effectSmoke03", SymPos("P03_EFF_SMOKE"))
  --   EFFECT:SetScale("effectSmoke03", Scale(2))
  --   EFFECT:Play("effectSmoke03")
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("MOGURYUU3"):SetVisible(false)
  -- end
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- TASK:Regist(Group("moguryuu_1"), taskMoguryuu_Out)
  -- TASK:Regist(Group("moguryuu_2"), taskMoguryuu2_Out)
  -- TASK:Regist(Group("moguryuu_3"), taskMoguryuu3_Out)
  -- TASK:Sleep(TimeSec(0.5))
  -- SOUND:PlaySe(SymSnd("SE_EVT_DORYUUZU_APPEAR"), Volume(256))
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- TASK:Sleep(TimeSec(2))
  -- CAMERA:SetFovy(SymCam("CAMERA_10"))
  -- CAMERA:SetEye(SymCam("CAMERA_10"))
  -- CAMERA:SetTgt(SymCam("CAMERA_10"))
  -- TASK:Sleep(TimeSec(2))
  -- WINDOW:DrawFace(272, 16, SymAct("GABAITO"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("GABAITO"), 2063932270)
  -- subEveCloseMsg()
  -- CH("HERO"):SetDir(CH("GABAITO"))
  -- CH("PARTNER"):SetDir(CH("GABAITO"))
  -- CH("GABAITO"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_FEAR_01"), Volume(256))
  -- CAMERA:SetFovy(SymCam("CAMERA_02_5"))
  -- CAMERA:SetEye(SymCam("CAMERA_02_5"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02_5"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_DOTEKKOTSU"), Volume(256))
  -- CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  -- WINDOW:Talk(SymAct("GABAITO"), 1646144047)
  -- CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  -- CH("GABAITO"):WaitRotate()
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  -- subEveFlash()
  -- WINDOW:Talk(SymAct("GABAITO"), -444188960)
  -- WINDOW:Talk(SymAct("GABAITO"), -56817759)
  -- WINDOW:CloseMessage()
  -- subEveFlash2()
  -- CAMERA:SetFovy(SymCam("CAMERA_03_5"))
  -- CAMERA:SetEye(SymCam("CAMERA_03_5"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03_5"))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_03"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- CH("GABAITO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON)
  -- WINDOW:Talk(SymAct("GABAITO"), -1780229235)
  -- CAMERA:WaitMove()
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutBgm(TimeSec(0.5))
  -- SOUND:PlaySe(SymSnd("SE_EVT_BOSS_WIPE"), Volume(256))
  -- EFFECT:BossWipe(TimeSec(60, TIME_TYPE.FRAME), true)
  -- CAMERA:SetDefaultGroundFovy()
  -- SYSTEM:SetNextDungeonBanner(false)
end
function main03_moguryutankouboss1st01_end()
end
function groundEnd()
end

