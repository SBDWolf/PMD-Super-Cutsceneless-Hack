dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main06_nyorobonriverbosswin01_init()
end
function main06_nyorobonriverbosswin01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("BATTLE"), LOOP.ON, TimeSec(0))
  CH("NYOROBON"):SetMotion(SymMot("CONFUSE"), LOOP.ON, TimeSec(0))
  CH("NYOROBON2"):SetMotion(SymMot("ENDURE"), LOOP.ON, TimeSec(0))
  CH("NYOROBON3"):SetMotion(SymMot("ENDURE"), LOOP.ON, TimeSec(0))
  CH("NYOROMO"):SetMotion(SymMot("CONFUSE"), LOOP.ON, TimeSec(0))
  CH("DENRYUU"):SetVisible(false)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1))
  local taskNyorobon01 = function()
    CH("NYOROBON"):SetManpu("MP_SHOCK_R")
    CH("NYOROBON"):SetMotion(SymMot("FALL"), LOOP.OFF)
    CH("NYOROBON"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KOMATANA_DOWN"), Volume(190))
    CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.5))
    CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  end
  local taskNyorobon02 = function()
    CH("NYOROBON2"):SetManpu("MP_SHOCK_R")
    CH("NYOROBON2"):SetMotion(SymMot("FALL"), LOOP.OFF)
    CH("NYOROBON2"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KOMATANA_DOWN"), Volume(190))
    CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.5))
    CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  end
  local taskNyorobon03 = function()
    CH("NYOROBON3"):SetManpu("MP_SHOCK_R")
    CH("NYOROBON3"):SetMotion(SymMot("FALL"), LOOP.OFF)
    CH("NYOROBON3"):WaitPlayMotion()
    SOUND:PlaySe(SymSnd("SE_EVT_KOMATANA_DOWN"), Volume(190))
    CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.5))
    CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  end
  TASK:Regist(taskNyorobon01)
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(taskNyorobon02)
  TASK:Sleep(TimeSec(0.1))
  TASK:Regist(taskNyorobon03)
  TASK:Sleep(TimeSec(1))
  CH("HERO"):SetVisible(false)
  CH("PARTNER"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  CH("NYOROMO"):SetManpu("MP_SHOCK_R")
  CH("NYOROMO"):SetMotion(SymMot("FALL"), LOOP.OFF)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_POTE"), Volume(256))
  TASK:Sleep(TimeSec(0.8))
  CH("HERO"):SetVisible(true)
  CH("PARTNER"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(10, 10)
  WINDOW:SwitchTalk({PARTNER_0 = -361348896, PARTNER_1 = -210931295})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -666885534, PARTNER_1 = -1050995933})
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):WalkTo(SymPos("P00_PARTNER"), Speed(2))
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(1.2))
  SOUND:PlaySe(SymSnd("SE_EVT_GABA"), Volume(256))
  CH("NYOROBON2"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.25))
  TASK:Sleep(TimeSec(0.25))
  CH("NYOROBON2"):DirTo(RotateTarget(-45), Speed(500), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):SetVisible(false)
  CH("PARTNER"):SetPosition(SymPos("P00_PARTNER"))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CH("PARTNER"):SetManpu("MP_NOTICE_L")
  CH("PARTNER"):DirTo(RotateTarget(60), Speed(500), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1910864412, PARTNER_1 = -1761495899})
  WINDOW:CloseMessage()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(0.5))
  CH("HERO"):SetVisible(true)
  CH("HERO"):SetPosition(SymPos("P01_HERO"))
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):DirTo(RotateTarget(120), Speed(500), ROT_TYPE.NEAR)
  EFFECT:StartMotionBlur(0, 0, 0)
  EFFECT:ChangeMotionBlurLevel(0.02, TimeSec(0.05))
  EFFECT:ChangeMotionBlurAlpha(0.8, TimeSec(0.05))
  CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  CH("NYOROBON2"):SetManpu("MP_SHOCK_L")
  CH("NYOROBON2"):SetMotion(SymMot("JUMP"), LOOP.OFF)
  SOUND:PlaySe(SymSnd("SE_EVT_SHANDERA_THREAT"), Volume(256))
  WINDOW:Talk(SymAct("NYOROBON2"), -1137907866)
  CH("NYOROBON2"):WaitPlayMotion()
  CH("NYOROBON2"):SetMotion(SymMot("JUMPLOOP"), LOOP.ON)
  CH("HERO"):WaitRotate()
  CH("HERO"):SetManpu("MP_SHOCK_R")
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.DAMAGE)
  CH("HERO"):SetMotion(SymMot("EV018_LIES00LOOP"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:ForceCloseMessage()
  TASK:Sleep(TimeSec(0.1))
  WINDOW:Monologue(-1523067353)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:ForceCloseMessage()
  SCREEN_A:WhiteOut(TimeSec(0.1), true)
  CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  EFFECT:EndMotionBlur()
  SOUND:PlaySe(SymSnd("SE_EVT_DOSHU"), Volume(256))
  WINDOW:SysMsg(581946088)
  TASK:Sleep(TimeSec(0.7))
  WINDOW:ForceCloseMessage()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CH("DENRYUU"):SetVisible(true)
  SCREEN_A:WhiteIn(TimeSec(0.1), true)
  SOUND:PlaySe(SymSnd("SE_EVT_BOON"), Volume(128))
  CH("NYOROBON2"):SetMotion(SymMot("FALL"), LOOP.OFF)
  WINDOW:Talk(SymAct("NYOROBON"), 1001716649)
  CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
  TASK:Sleep(TimeSec(0.2))
  CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  WINDOW:CloseMessage()
  CH("HERO"):ResetFacialMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.3))
  TASK:Sleep(TimeSec(0.5))
  CAMERA:MoveFollow2(SymCam("CAMERA_07"), Speed(2.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  EFFECT:Create("effectBgConLp", SymEff("BG_CONCENTRATION_LP"))
  EFFECT:SetPosition("effectBgConLp", CH("DENRYUU"), BODY_POINT.CENTER)
  EFFECT:Play("effectBgConLp")
  SOUND:PlaySe(SymSnd("SE_EVT_STYLISH"))
  CH("DENRYUU"):SetMotion(SymMot("EV006_POSE00"), LOOP.OFF)
  CH("DENRYUU"):WaitPlayMotion()
  CH("DENRYUU"):SetMotion(SymMot("EV006_POSE01"), LOOP.ON)
  CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  WINDOW:DrawFace(324, 88, SymAct("DENRYUU"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("DENRYUU"), 243342179)
  WINDOW:Talk(SymAct("DENRYUU"), 395979298)
  WINDOW:CloseMessage()
  CH("DENRYUU"):ResetManpu()
  subEveFlash2()
  TASK:WaitTask()
  TASK:Sleep(TimeSec(0.3))
  EFFECT:Remove("effectBgConLp")
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_03"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = 1018657249, PARTNER_1 = 632047776})
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetFacialMotion()
  CH("PARTNER"):WalkTo(SymPos("P01_PARTNER"), Speed(1.5))
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1.5))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("DENRYUU"), 1793973863)
  WINDOW:Talk(SymAct("DENRYUU"), 1945562918)
  WINDOW:CloseMessage()
  CH("PARTNER"):WaitMove()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.EMOTION)
  WINDOW:SwitchTalk({PARTNER_0 = 1490795749, PARTNER_1 = 1103138212})
  WINDOW:SwitchTalk({PARTNER_0 = -967274133, PARTNER_1 = -549216214})
  WINDOW:CloseMessage()
  CH("DENRYUU"):SetMotion(SymMot("WAIT02"), LOOP.ON, TimeSec(0.3))
  TASK:Sleep(TimeSec(0.3))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("DENRYUU"):SetManpu("MP_QUESTION")
  CH("DENRYUU"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 473216141)
  WINDOW:Talk(SymAct("DENRYUU"), 87000524)
  WINDOW:Talk(SymAct("DENRYUU"), 771937807)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  CH("DENRYUU"):DirTo(RotateTarget(180), Speed(200), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("DENRYUU"):SetManpu("MP_QUESTION")
  CH("DENRYUU"):WaitManpu()
  TASK:Sleep(TimeSec(0.5))
  CH("DENRYUU"):DirTo(RotateTarget(-60), Speed(350), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 924444494)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 2019062153, PARTNER_1 = 1631797448})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("DENRYUU"):SetManpu("MP_FLY_SWEAT")
  CH("DENRYUU"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("DENRYUU"), 1248727819)
  WINDOW:Talk(SymAct("DENRYUU"), 1400185418)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  CH("HERO"):SetManpu("MP_SWEAT_L")
  CH("PARTNER"):SetManpu("MP_SWEAT_R")
  CH("PARTNER"):WaitManpu()
  TASK:Sleep(TimeSec(0.5))
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main06_nyorobonriverbosswin01_end()
end
function groundEnd()
end

