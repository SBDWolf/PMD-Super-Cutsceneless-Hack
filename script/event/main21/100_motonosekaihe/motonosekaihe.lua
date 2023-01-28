dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main21_motonosekaihe01_init()
end
function main21_motonosekaihe01_start()
  TASK:Sleep(TimeSec(2))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(789088578)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  CH("PARTNER"):SetMotion(SymMot("EV001_DOWN01"), LOOP.ON, TimeSec(0))
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.PAIN)
  WINDOW:Monologue(907261955)
  CH("HERO"):ResetShake()
  WINDOW:CloseMessage()
  CH("HERO"):SetMotionRaito(Raito(0.7))
  CH("HERO"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotionRaito(Raito(1))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(490662848)
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(RotateTarget(90), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  CH("HERO"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(69589633)
  WINDOW:CloseMessage()
  CH("PARTNER"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  CH("HERO"):DirTo(RotateTarget(45), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1264864326)
  WINDOW:CloseMessage()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  CH("HERO"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CAMERA:MoveFollow2(SymCam("CAMERA_02_5"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1384086791)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  GM("STONE_SUIKUN"):SetVisible(false)
  CH("HERO"):ResetFacialMotion()
  CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  CH("HERO"):WaitMove()
  local taskPartner00 = function()
    CH("PARTNER"):SetShake(Vector(0.005, 0, 0), TimeSec(0.2, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.5))
    CH("PARTNER"):ResetShake()
  end
  TASK:Regist(taskPartner00)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 2035429060, PARTNER_1 = 1615404933})
  WINDOW:CloseMessage()
  CH("PARTNER"):SetMotionRaito(Raito(0.7))
  CH("PARTNER"):SetMotion(SymMot("EV001_DOWN02"), LOOP.OFF)
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(1), LINK_DIR.OFF)
  CH("PARTNER"):WaitPlayMotion()
  CH("PARTNER"):SetMotionRaito(Raito(1))
  CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_NOTICE_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -405732534, PARTNER_1 = -20303349})
  WINDOW:SwitchTalk({PARTNER_0 = 1879603810, PARTNER_1 = 1762872099})
  WINDOW:CloseMessage()
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_NOTICE_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = 1111365856, PARTNER_1 = 1529162145})
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 342146918, PARTNER_1 = 226463271})
  WINDOW:SwitchTalk({PARTNER_0 = 642964964, PARTNER_1 = 1061809317})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1194200982, PARTNER_1 = -1580547797})
  WINDOW:CloseMessage()
  GM("STONE_SUIKUN"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_03_5"))
  CAMERA:SetTgt(SymCam("CAMERA_03_5"))
  CAMERA:SetFovy(SymCam("CAMERA_03_5"))
  CH("PARTNER"):DirTo(SymPos("P00_RAIKOU_SUIKUN"), Speed(500), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1656608140, PARTNER_1 = 2074535117})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1351333646)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):RunTo(SymPos("P02_HERO"), Speed(2.5))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(2.5))
  TASK:Sleep(TimeSec(0.8))
  CAMERA:SetEye(SymCam("CAMERA_04_5"))
  CAMERA:SetTgt(SymCam("CAMERA_04_5"))
  CAMERA:SetFovy(SymCam("CAMERA_04_5"))
  CH("PARTNER"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1234208335, PARTNER_1 = 114364552})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(533340617)
  WINDOW:Monologue(887583242)
  WINDOW:Monologue(771507019)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:SetFovy(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.SAD)
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -1436262524, PARTNER_1 = -1283494203})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CAMERA:SetFovy(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.5))
  TASK:Regist(subEveMoveDir2, {
    CH("PARTNER"),
    SymPos("P01_PARTNER"),
    Speed(1.5),
    SymPos("P01_PARTNER")
  })
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(SymPos("P03_HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):WalkTo(SymPos("P03_HERO"), Speed(1.5))
  SOUND:FadeOutEnv(TimeSec(2))
  TASK:Sleep(TimeSec(2.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_SAD"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  CAMERA:SetFovy(SymCam("CAMERA_07"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -637422871, PARTNER_1 = -1021672536})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_08"))
  CAMERA:SetTgt(SymCam("CAMERA_08"))
  CAMERA:SetFovy(SymCam("CAMERA_08"))
  CH("PARTNER"):DirTo(GM("STONE_SUIKUN"), Speed(200), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -398995349, PARTNER_1 = -248717014})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  CAMERA:SetFovy(SymCam("CAMERA_09"))
  CH("PARTNER"):DirTo(GM("STONE_AAKEN"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("HERO"):DirTo(GM("STONE_AAKEN"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -1100122131, PARTNER_1 = -1485420884})
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.TEARS)
  WINDOW:SwitchTalk({PARTNER_0 = -1940187793, PARTNER_1 = -1790958546})
  WINDOW:SwitchTalk({PARTNER_0 = 316160225, PARTNER_1 = 197331360})
  WINDOW:CloseMessage()
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0.3))
  CH("PARTNER"):WaitNeckRot()
  TASK:Sleep(TimeSec(0.5))
  GM("STONE_SUIKUN"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_10"))
  CAMERA:SetTgt(SymCam("CAMERA_10"))
  CAMERA:SetFovy(SymCam("CAMERA_10"))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SAD)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(1205242448)
  WINDOW:Monologue(1590541073)
  WINDOW:Monologue(1977673938)
  WINDOW:Monologue(1828444563)
  WINDOW:Monologue(599412564)
  WINDOW:Monologue(983662101)
  WINDOW:Monologue(294399446)
  WINDOW:Monologue(144120983)
  WINDOW:KeyWait()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:Monologue(-1894842280)
  WINDOW:CloseMessage()
  GM("STONE_SUIKUN"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  CAMERA:SetFovy(SymCam("CAMERA_11"))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(20, 20, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:Monologue(-1777061607)
  WINDOW:CloseMessage()
  CH("PARTNER"):ResetNeckRot(TimeSec(0.3))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(200), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("HERO"):ResetFacialMotion()
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SAD)
  WINDOW:SwitchTalk({PARTNER_0 = -9769675, PARTNER_1 = -428745612})
  WINDOW:SwitchTalk({PARTNER_0 = -849571913, PARTNER_1 = -733495562})
  WINDOW:SwitchTalk({PARTNER_0 = -1694095311, PARTNER_1 = -2112022160})
  WINDOW:SwitchTalk({PARTNER_0 = -1456452941, PARTNER_1 = -1339327502})
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):ResetFacialMotion()
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 934504253, PARTNER_1 = 782784124})
  WINDOW:SwitchTalk({PARTNER_0 = -304135461, PARTNER_1 = -188451942})
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -538369959, PARTNER_1 = -957214440})
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(SymPos("P_SEKIHI"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CAMERA:SetEye(SymCam("CAMERA_13"))
  CAMERA:SetTgt(SymCam("CAMERA_13"))
  CAMERA:SetFovy(SymCam("CAMERA_13"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -1984722977, PARTNER_1 = -1867991394})
  WINDOW:SwitchTalk({PARTNER_0 = -1148852899, PARTNER_1 = -1566649316})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 621201619, PARTNER_1 = 1008597394})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(1432561086)
  WINDOW:Monologue(1282938111)
  WINDOW:Monologue(1733642044)
  WINDOW:CloseMessage()
  GM("STONE_SUIKUN"):SetVisible(false)
  CAMERA:SetEye(SymCam("CAMERA_14"))
  CAMERA:SetTgt(SymCam("CAMERA_14"))
  CAMERA:SetFovy(SymCam("CAMERA_14"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(2119071357)
  WINDOW:CloseMessage()
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0.3))
  CH("HERO"):WaitNeckRot()
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV0502"))
  MAP:SetVisibleBG(true)
  CH("HERO"):SetVisible(false)
  CH("PARTNER"):SetVisible(false)
  GM("STONE_AAKEN"):SetVisible(false)
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(823124154)
  WINDOW:Monologue(672453115)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
  CH("HERO"):SetVisible(true)
  CH("PARTNER"):SetVisible(true)
  GM("STONE_AAKEN"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  CAMERA:SetFovy(SymCam("CAMERA_12"))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 54100536, PARTNER_1 = 438481785})
  CH("HERO"):ResetNeckRot(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:SwitchTalk({PARTNER_0 = -1648709706, PARTNER_1 = -2069782793})
  WINDOW:SwitchTalk({PARTNER_0 = 218117608, PARTNER_1 = 337314985})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = 1060525930, PARTNER_1 = 640509483})
  WINDOW:SwitchTalk({PARTNER_0 = 1768747244, PARTNER_1 = 1886896557})
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main21_motonosekaihe01_end()
end
function main21_motonosekaihe02_init()
end
function main21_motonosekaihe02_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_SAD"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  EFFECT:CreateRecollectionFilter()
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  CAMERA:SetFovy(SymCam("CAMERA_11"))
  CH("SHADOW_OF_NIHIL4"):SetMotion(SymMot("EV020_AT01"), LOOP.ON, TimeSec(0))
  CH("SHADOW_OF_NIHIL7"):SetMotion(SymMot("EV020_AT01"), LOOP.ON, TimeSec(0))
  CH("HERO"):SetMotion(SymMot("EV000_CSWAIT"), LOOP.ON, TimeSec(0))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  CH("KUCHIITO"):SetNeckRot(RotateTarget(-50), RotateTarget(0), RotateTarget(0), TimeSec(0.2))
  CH("KUCHIITO"):WaitNeckRot()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_L")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1532662382, PARTNER_1 = 1111597871})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_13"))
  CAMERA:SetTgt(SymCam("CAMERA_13"))
  CAMERA:SetFovy(SymCam("CAMERA_13"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("DEDENNE"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("DEDENNE"), -975585312)
  WINDOW:Talk(SymAct("DEDENNE"), -591229279)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  EFFECT:DestroyRecollectionFilter()
end
function main21_motonosekaihe02_end()
end
function main21_motonosekaihe03_init()
end
function main21_motonosekaihe03_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_SAD"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  CAMERA:SetFovy(SymCam("CAMERA_12"))
  GM("STONE_SUIKUN"):SetVisible(false)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -1245949299, PARTNER_1 = -1398316084})
  WINDOW:SwitchTalk({PARTNER_0 = -2020986865, PARTNER_1 = -1634664114})
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main21_motonosekaihe03_end()
end
function main21_motonosekaihe04_init()
end
function main21_motonosekaihe04_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_SAD"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  EFFECT:CreateRecollectionFilter()
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("PARTNER"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("KUCHIITO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.THINK)
  WINDOW:DrawFace(272, 16, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:DrawFaceOffset(-20, 0)
  WINDOW:SwitchTalk({PARTNER_0 = -774858871, PARTNER_1 = -926177592})
  WINDOW:SwitchTalk({PARTNER_0 = -471403253, PARTNER_1 = -84032438})
  subEveCloseMsg()
  CH("PARTNER"):ResetFacialMotion()
  WINDOW:DrawFace(20, 88, SymAct("KUCHIITO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("KUCHIITO"), 2103826565)
  WINDOW:Talk(SymAct("KUCHIITO"), 1686038980)
  WINDOW:KeyWait()
  CH("KUCHIITO"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(20, 88, SymAct("KUCHIITO"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("KUCHIITO"), 2038744323)
  subEveCloseMsg()
  CH("KUCHIITO"):ResetManpu()
  SYSTEM:SetForceSyncStop(true)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:SysMsg(1621095490)
  WINDOW:SysMsg(1269999489)
  WINDOW:SysMsg(1386845888)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  SYSTEM:SetForceSyncStop(false)
  EFFECT:DestroyRecollectionFilter()
end
function main21_motonosekaihe04_end()
end
function main21_motonosekaihe05_init()
end
function main21_motonosekaihe05_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_SAD"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CAMERA:SetFovy(SymCam("CAMERA_00"))
  GM("STONE_SUIKUN"):SetVisible(false)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = 501743623, PARTNER_1 = 83046726})
  WINDOW:SwitchTalk({PARTNER_0 = 803103365, PARTNER_1 = 918901700})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-1319284981)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1471775158, PARTNER_1 = -1053253018})
  WINDOW:SwitchTalk({PARTNER_0 = -668757209, PARTNER_1 = -217136924})
  WINDOW:SwitchTalk({PARTNER_0 = -367660635, PARTNER_1 = -1521195166})
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:SwitchTalk({PARTNER_0 = -1135651293, PARTNER_1 = -1755183648})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.EMOTION)
  WINDOW:Monologue(-1904659295)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = 165750894, PARTNER_1 = 284825903})
  WINDOW:SwitchTalk({PARTNER_0 = -745730680, PARTNER_1 = -896123703})
  subEveCloseMsg()
  subEveNod(CH("HERO"))
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(-507810038)
  WINDOW:Monologue(-123707829)
  WINDOW:Monologue(-1209939828)
  WINDOW:Monologue(-1359283763)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -2049463794, PARTNER_1 = -1664312497})
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(2.5))
  GM("STONE_SUIKUN"):SetVisible(true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):RunTo(SplinePath(SymPos("P00_HERO"), SymPos("P01_HERO")), Speed(3))
  TASK:Sleep(TimeSec(2))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(1.5))
end
function main21_motonosekaihe05_end()
end
function main21_motonosekaihe06_init()
end
function main21_motonosekaihe06_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local taskHero00 = function()
    CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
    CH("HERO"):WaitMove()
    CH("HERO"):DirTo(RotateTarget(-90), Speed(200), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
    CH("HERO"):SetManpu("MP_EXCLAMATION")
  end
  TASK:Regist(taskHero00)
  local taskPartner00 = function()
    CH("PARTNER"):RunTo(SymPos("P00_PARTNER"), Speed(3))
    CH("PARTNER"):WaitMove()
    CH("PARTNER"):DirTo(RotateTarget(-90), Speed(200), ROT_TYPE.NEAR)
    CH("PARTNER"):WaitRotate()
    CH("PARTNER"):SetManpu("MP_SHOCK_L")
  end
  TASK:Regist(taskPartner00)
  SOUND:FadeInEnv(SymSnd("SE_ENV_BREEZE_LP"), TimeSec(0.5), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:WaitTask()
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 458524544, PARTNER_1 = 38778561})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1798400749)
  WINDOW:CloseMessage()
  CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  TASK:Sleep(TimeSec(0.7))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CAMERA:SetFovy(SymCam("CAMERA_02"))
  CH("HERO"):WaitMove()
  CH("HERO"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CAMERA:SetFovy(SymCam("CAMERA_03"))
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("HERO"):SetManpu("MP_FLY_SWEAT")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1915378604)
  WINDOW:Monologue(1493633135)
  WINDOW:Monologue(1075591470)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CAMERA:SetFovy(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):SetPosition(SymPos("P01_PARTNER"))
  CH("PARTNER"):SetDir(RotateTarget(135))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.PAIN)
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0))
  CH("PARTNER"):SetShake(Vector(0.005, 0, 0), TimeSec(1, TIME_TYPE.FRAME))
  WINDOW:SwitchTalk({PARTNER_0 = 257798121, PARTNER_1 = 373726888})
  CH("HERO"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1030475115)
  subEveCloseMsg()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(2))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CAMERA:MoveFollow2(SymCam("CAMERA_05_5"), Speed(0.2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 611384362, PARTNER_1 = -1545019163})
  WINDOW:SwitchTalk({PARTNER_0 = -1158426204, PARTNER_1 = -152677804})
  WINDOW:SwitchTalk({PARTNER_0 = -268606699, PARTNER_1 = -992988970})
  WINDOW:SwitchTalk({PARTNER_0 = -573898345, PARTNER_1 = -1836411056})
  WINDOW:SwitchTalk({PARTNER_0 = -1953389039, PARTNER_1 = -1598229038})
  WINDOW:SwitchTalk({PARTNER_0 = -1180187501, PARTNER_1 = 1044371548})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(656730397)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05_5"))
  CAMERA:SetTgt(SymCam("CAMERA_05_5"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.PAIN)
  WINDOW:SwitchTalk({PARTNER_0 = 1314534705, PARTNER_1 = 1463878768})
  WINDOW:SwitchTalk({PARTNER_0 = 2087475123, PARTNER_1 = 1702323954})
  WINDOW:SwitchTalk({PARTNER_0 = 708243509, PARTNER_1 = 858636660})
  WINDOW:SwitchTalk({PARTNER_0 = 402690743, PARTNER_1 = 18588662})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(-2038186183)
  WINDOW:CloseMessage()
  SOUND:FadeOutEnv(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
  CH("PARTNER"):ResetShake()
  WINDOW:Narration(TimeSec(0.3), TimeSec(0.3), -1617392008)
  WINDOW:Narration(TimeSec(0.3), TimeSec(0.3), 1559206623)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(1))
end
function main21_motonosekaihe06_end()
end
function groundEnd()
end

