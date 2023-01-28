dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main10_partnernokawarini01_init()
end
function main10_partnernokawarini01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  local taskHero00 = function()
    CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(1.5))
    CH("HERO"):WaitMove()
    CH("HERO"):SetManpu("MP_EXCLAMATION")
    CH("HERO"):DirTo(SymPos("P00_ABAHOME"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
  end
  TASK:Regist(taskHero00)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
  local taskShake00 = function()
    SOUND:PlaySe(SymSnd("SE_EVT_DOTEKKOTSU"), Volume(256))
    CAMERA:SetShake(Vector2(0.02, 0.02), TimeSec(1, TIME_TYPE.FRAME))
    TASK:Sleep(TimeSec(0.3))
    CAMERA:SetShake(Vector2(0, 0), TimeSec(0))
  end
  TASK:Regist(taskShake00)
  WINDOW:Talk(SymAct("ABAGOORA"), -1321978057)
  WINDOW:CloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_02"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  WINDOW:SwitchTalk({PARTNER_0 = -1473313162, PARTNER_1 = -2096998987})
  subEveCloseMsg()
  CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  TASK:Regist(taskShake00)
  WINDOW:DrawFace(324, 88, SymAct("ABAGOORA"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("ABAGOORA"), -1709611788)
  WINDOW:Talk(SymAct("ABAGOORA"), -715591117)
  WINDOW:Talk(SymAct("ABAGOORA"), -867974286)
  subEveCloseMsg()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SHOUT)
  WINDOW:SwitchTalk({PARTNER_0 = -412184399, PARTNER_1 = -25845264})
  subEveCloseMsg()
  TASK:Regist(taskShake00)
  WINDOW:DrawFace(324, 88, SymAct("ABAGOORA"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("ABAGOORA"), 2045623615)
  WINDOW:Talk(SymAct("ABAGOORA"), 1626770558)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 244971366, PARTNER_1 = 394446375})
  CH("HERO"):WaitMove()
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("HERO"):SetManpu("MP_FLY_SWEAT")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(1018140132)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(0.3))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("HERO"):SetManpu("MP_NOTICE_L")
  CH("HERO"):WaitManpu()
  CH("HERO"):DirTo(GM("EXTRA_PAPER"), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1.5))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("HERO"):WaitMove()
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.2))
  CH("HERO"):WaitNeckRot()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("HERO"):SetManpu("MP_QUESTION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(632595621)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(1794454114)
  WINDOW:Monologue(1944978211)
  subEveCloseMsg()
  WINDOW:SysMsg(1489195232)
  subEveCloseMsg()
  WINDOW:SysMsg(1104699809)
  WINDOW:SysMsg(-968852114)
  WINDOW:SysMsg(-547664849)
  WINDOW:SysMsg(472668296)
  WINDOW:SysMsg(87517641)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("HERO"):ResetNeckRot(TimeSec(0.15))
  CH("HERO"):WaitNeckRot()
  CH("HERO"):DirTo(SymPos("P00_ABAHOME"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(773470730)
  WINDOW:Monologue(922815307)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("HERO"):DirTo(SymPos("P03_HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(2017500556)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1.5))
  CH("HERO"):WalkTo(SymPos("P03_HERO"), Speed(1.5))
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_partnernokawarini01_end()
end
function main10_partnernokawarini02_init()
end
function main10_partnernokawarini02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.ON)
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.3))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("NYASUPAA"):SetManpu("MP_EXCLAMATION")
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("CHOBOMAKI")
  })
  TASK:Sleep(TimeSec(0.1))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_EXCLAMATION")
  CH("NUMERA"):SetManpu("MP_SHOCK_R")
  CH("YANCHAMU"):SetManpu("MP_EXCLAMATION")
  TASK:Regist(subEveJumpSurprise, {
    CH("NUMERA")
  })
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1633397965)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_SHOCK_L")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1249312526)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  CH("CHOBOMAKI"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("NUMERA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  CH("SHIKIJIKA_SPRING"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_FLY_SWEAT")
  CH("NYASUPAA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):WaitRotate()
  CH("YANCHAMU"):SetManpu("MP_FLY_SWEAT")
  WINDOW:DrawFace(172, 8, SymAct("NUMERA"), FACE_TYPE.SAD)
  WINDOW:DrawFaceOffset(-60, 0)
  WINDOW:Talk(SymAct("NUMERA"), 1399705167)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -722087296)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("NYASUPAA"), -839982143)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("NUMERA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("NYASUPAA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1534050323)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1114960212)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1767482001)
  subEveCloseMsg()
  WINDOW:DrawFace(172, 8, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-60, 0)
  WINDOW:Talk(SymAct("NUMERA"), -1883411410)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), -1057162519)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_FLY_SWEAT")
  CH("YANCHAMU"):WaitManpu()
  local taskHero00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("YANCHAMU"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskHero00)
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("YANCHAMU"), -639120472)
  WINDOW:Talk(SymAct("YANCHAMU"), -221603733)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  CH("CHOBOMAKI"):WaitManpu()
  local taskHero01 = function()
    CH("HERO"):DirTo(CH("CHOBOMAKI"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskHero01)
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -338581206)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  local taskHero02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("NUMERA"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskHero02)
  CH("NUMERA"):SetFacialMotion(FACIAL_MOTION.SAD)
  WINDOW:DrawFace(172, 8, SymAct("NUMERA"), FACE_TYPE.SAD)
  WINDOW:DrawFaceOffset(-60, 0)
  WINDOW:Talk(SymAct("NUMERA"), 1816770021)
  WINDOW:KeyWait()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
  WINDOW:DrawFace(172, 8, SymAct("NUMERA"), FACE_TYPE.TEARS)
  WINDOW:DrawFaceOffset(-60, 0)
  WINDOW:Talk(SymAct("NUMERA"), 1968342180)
  subEveCloseMsg()
  CH("NUMERA"):ResetFacialMotion()
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.SAD)
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 960956244)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 542914069)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  local taskHero03 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("NYASUPAA"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskHero03)
  WINDOW:DrawFace(324, 20, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 191981014)
  WINDOW:Talk(SymAct("NYASUPAA"), 308958359)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1563148880)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(1144058641)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 1864212690)
  subEveCloseMsg()
  TASK:Regist(taskHero00)
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(20, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 1980141971)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -241267364)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_PARTY_02"))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_LAUGH_LP")
  TASK:Sleep(TimeSec(0.1))
  CH("NYASUPAA"):SetManpu("MP_SPREE_LP")
  CH("YANCHAMU"):SetManpu("MP_LAUGH_LP")
  TASK:Sleep(TimeSec(0.2))
  CH("NUMERA"):SetManpu("MP_SPREE_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("NUMERA")
  })
  CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_LAUGH_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  TASK:Sleep(TimeSec(3))
  SOUND:FadeOutSe(SymSnd("SE_EVT_PARTY_02"), TimeSec(0.5))
  CH("SHIKIJIKA_SPRING"):ResetManpu()
  CH("NYASUPAA"):ResetManpu()
  TASK:Sleep(TimeSec(0.2))
  CH("YANCHAMU"):ResetManpu()
  CH("NUMERA"):ResetManpu()
  TASK:Sleep(TimeSec(0.2))
  CH("CHOBOMAKI"):ResetManpu()
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):ResetManpu()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -393888739)
  WINDOW:Talk(SymAct("YANCHAMU"), -2114232271)
  WINDOW:CloseMessage()
  TASK:Sleep(TimeSec(0.2))
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.2))
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Regist(taskHero03)
  CH("NYASUPAA"):SetManpu("MP_LAUGH_LP")
  CH("NYASUPAA"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFace(324, 20, SymAct("NYASUPAA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("NYASUPAA"), -1730129552)
  WINDOW:Talk(SymAct("NYASUPAA"), -1278410061)
  subEveCloseMsg()
  CH("NYASUPAA"):ResetManpu()
  CH("NYASUPAA"):ResetFacialMotion()
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  TASK:Sleep(TimeSec(0.2))
  TASK:Regist(taskHero00)
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -1428802574)
  WINDOW:Talk(SymAct("YANCHAMU"), -443046603)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -57895820)
  subEveCloseMsg()
  TASK:Regist(taskHero02)
  WINDOW:DrawFace(324, 20, SymAct("NUMERA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("NUMERA"), -677263433)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -826607882)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1227024953)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
  WINDOW:Monologue(1345969016)
  WINDOW:CloseMessage()
end
function main10_partnernokawarini02_end()
end
function main10_partnernokawariniselect_init()
end
function main10_partnernokawariniselect_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:SysMsg(-1823551521)
  WINDOW:SelectStart()
  WINDOW:SelectChain(-1974075746, 1)
  WINDOW:SelectChain(-1585926819, 2)
  WINDOW:SelectChain(-1201431524, 3)
  WINDOW:SelectChain(-148763941, 4)
  WINDOW:SelectChain(-298239078, 5)
  WINDOW:DefaultCursor(1)
  local id = WINDOW:SelectEnd(MENU_SELECT_MODE.DISABLE_CANCEL)
  if id == 1 then
    return "SEL_SHIKIJIKA"
  elseif id == 2 then
    return "SEL_NUMERA"
  elseif id == 3 then
    return "SEL_NYASUPAA"
  elseif id == 4 then
    return "SEL_YANCHAMU"
  else
    return "SEL_CHOBOMAKI"
  end
end
function main10_partnernokawariniselect_end()
end
function main10_partnernokawarini03_init()
end
function main10_partnernokawarini03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("P00_SHIKIJIKA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NUMERA"):DirTo(SymPos("P00_SHIKIJIKA"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("P00_SHIKIJIKA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("P00_SHIKIJIKA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P00_SHIKIJIKA"), Speed(1.5))
  CH("SHIKIJIKA_SPRING"):WaitMove()
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -988518311)
  WINDOW:KeyWait()
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -602973928)
  subEveCloseMsg()
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
  CH("SHIKIJIKA_SPRING"):ResetManpu()
  TASK:Sleep(TimeSec(0.3))
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NUMERA"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(20, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 1536640471)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun02 = function()
    subEveNod(CH("YANCHAMU"))
  end
  local taskUnun03 = function()
    subEveNod(CH("SHIKIJIKA_SPRING"))
  end
  local taskUnun04 = function()
    subEveNod(CH("NUMERA"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  local taskUnun06 = function()
    subEveNod(CH("CHOBOMAKI"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Regist(taskUnun04)
  TASK:Regist(taskUnun05)
  TASK:Regist(taskUnun06)
  TASK:Sleep(TimeSec(1))
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  TASK:Regist(subEveDoubleJump, {
    CH("NYASUPAA")
  })
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 1116501142)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_partnernokawarini03_end()
end
function main10_partnernokawarini04_init()
end
function main10_partnernokawarini04_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("P00_NUMERA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("P00_NUMERA"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("P00_NUMERA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("P00_NUMERA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  CH("NUMERA"):WalkTo(SymPos("P00_NUMERA"), Speed(1.5))
  CH("NUMERA"):WaitMove()
  TASK:Regist(subEveDoubleJump, {
    CH("NUMERA")
  })
  WINDOW:DrawFace(172, 8, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-60, 0)
  WINDOW:Talk(SymAct("NUMERA"), 737323194)
  WINDOW:KeyWait()
  CH("NUMERA"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("NUMERA"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(172, 8, SymAct("NUMERA"), FACE_TYPE.HAPPY)
  WINDOW:DrawFaceOffset(-60, 0)
  WINDOW:Talk(SymAct("NUMERA"), 854170107)
  subEveCloseMsg()
  CH("NUMERA"):ResetFacialMotion()
  CH("NUMERA"):ResetManpu()
  TASK:Sleep(TimeSec(0.3))
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NUMERA"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(20, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 432327224)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun02 = function()
    subEveNod(CH("YANCHAMU"))
  end
  local taskUnun03 = function()
    subEveNod(CH("SHIKIJIKA_SPRING"))
  end
  local taskUnun04 = function()
    subEveNod(CH("NUMERA"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  local taskUnun06 = function()
    subEveNod(CH("CHOBOMAKI"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Regist(taskUnun04)
  TASK:Regist(taskUnun05)
  TASK:Regist(taskUnun06)
  TASK:Sleep(TimeSec(1))
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  TASK:Regist(subEveDoubleJump, {
    CH("NYASUPAA")
  })
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 14678905)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_partnernokawarini04_end()
end
function main10_partnernokawarini05_init()
end
function main10_partnernokawarini05_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("HERO"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("P00_NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NUMERA"):DirTo(SymPos("P00_NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("P00_NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("P00_NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  CH("NYASUPAA"):WalkTo(SymPos("P00_NYASUPAA"), Speed(1.5))
  CH("NYASUPAA"):WaitMove()
  TASK:Regist(subEveDoubleJump, {
    CH("NYASUPAA")
  })
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 1335782846)
  WINDOW:KeyWait()
  CH("NYASUPAA"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  CH("NYASUPAA"):SetManpu("MP_LAUGH_LP")
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("NYASUPAA"), 1451580671)
  subEveCloseMsg()
  CH("NYASUPAA"):ResetFacialMotion()
  CH("NYASUPAA"):ResetManpu()
  TASK:Sleep(TimeSec(0.3))
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NUMERA"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(SymPos("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(20, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 2108165948)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun02 = function()
    subEveNod(CH("YANCHAMU"))
  end
  local taskUnun03 = function()
    subEveNod(CH("SHIKIJIKA_SPRING"))
  end
  local taskUnun04 = function()
    subEveNod(CH("NUMERA"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  local taskUnun06 = function()
    subEveNod(CH("CHOBOMAKI"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Regist(taskUnun04)
  TASK:Regist(taskUnun05)
  TASK:Regist(taskUnun06)
  TASK:Sleep(TimeSec(1))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(172, 8, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1689468541)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_partnernokawarini05_end()
end
function main10_partnernokawarini06_init()
end
function main10_partnernokawarini06_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("HERO"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("P00_YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NUMERA"):DirTo(SymPos("P00_YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("P00_YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("P00_YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_EXCLAMATION")
  CH("YANCHAMU"):WaitManpu()
  CH("YANCHAMU"):WalkTo(SymPos("P00_YANCHAMU"), Speed(1.5))
  CH("YANCHAMU"):WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -483712334)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:Talk(SymAct("YANCHAMU"), -97512461)
  TASK:WaitTask()
  subEveCloseMsg()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("YANCHAMU"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 1938929900)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun02 = function()
    subEveNod(CH("YANCHAMU"))
  end
  local taskUnun03 = function()
    subEveNod(CH("SHIKIJIKA_SPRING"))
  end
  local taskUnun04 = function()
    subEveNod(CH("NUMERA"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  local taskUnun06 = function()
    subEveNod(CH("CHOBOMAKI"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Regist(taskUnun04)
  TASK:Regist(taskUnun05)
  TASK:Regist(taskUnun06)
  TASK:Sleep(TimeSec(1))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1787464109)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_partnernokawarini06_end()
end
function main10_partnernokawarini07_init()
end
function main10_partnernokawarini07_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("HERO"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("P00_CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NUMERA"):DirTo(SymPos("P00_CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("P00_CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("YANCHAMU"):DirTo(SymPos("P00_CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("CHOBOMAKI")
  })
  CH("CHOBOMAKI"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1101519470)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):WalkTo(SymPos("P00_CHOBOMAKI"), Speed(1.5))
  CH("CHOBOMAKI"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  CH("CHOBOMAKI"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1488775983)
  subEveCloseMsg()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("YANCHAMU"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("CHOBOMAKI"):DirTo(SymPos("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 402488808)
  WINDOW:CloseMessage()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun02 = function()
    subEveNod(CH("YANCHAMU"))
  end
  local taskUnun03 = function()
    subEveNod(CH("SHIKIJIKA_SPRING"))
  end
  local taskUnun04 = function()
    subEveNod(CH("NUMERA"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  local taskUnun06 = function()
    subEveNod(CH("CHOBOMAKI"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun02)
  TASK:Regist(taskUnun03)
  TASK:Regist(taskUnun04)
  TASK:Regist(taskUnun05)
  TASK:Regist(taskUnun06)
  TASK:Sleep(TimeSec(1))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("YANCHAMU"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    CH("NUMERA"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(SymPos("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(324, 20, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 249973929)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main10_partnernokawarini07_end()
end
function groundEnd()
end
