dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main02_kowasounamoritry1st01_init()
end
function main02_kowasounamoritry1st01_start()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_11"))
  CAMERA:SetTgt(SymCam("CAMERA_11"))
  CH("HERO"):SetVisible(false)
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_03"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_SHOCK_L")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -297655845)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  subEveNod(CH("YANCHAMU"))
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct(""), -145157990)
  WINDOW:Talk(SymAct(""), -596360359)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 20, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -982552040)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1976638241)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct(""), -1825188450)
  WINDOW:Talk(SymAct(""), -1206352291)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 20, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1593592036)
  subEveCloseMsg()
  CH("YANCHAMU"):SetManpu("MP_LAUGH_LP")
  CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  CH("YANCHAMU"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct(""), 647736275)
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_01"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_ANGRY_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1065392786)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 143040929)
  subEveCloseMsg()
  CH("SHIKIJIKA_SPRING"):ResetManpu()
  CH("YANCHAMU"):ResetFacialMotion()
  CH("YANCHAMU"):ResetManpu()
  CH("CHOBOMAKI"):ResetManpu()
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-20, 0)
  WINDOW:Talk(SymAct("YANCHAMU"), 295538912)
  WINDOW:Talk(SymAct("YANCHAMU"), 984662819)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 598471266)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1827300517)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  TASK:Sleep(TimeSec(0.2))
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(1.5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P00_SHIKIJIKA"), Speed(1.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_EXCLAMATION")
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_R")
  TASK:Sleep(TimeSec(0.1))
  CH("YANCHAMU"):WalkTo(SymPos("P00_YANCHAMU"), Speed(1.5))
  CH("CHOBOMAKI"):WalkTo(SymPos("P00_CHOBOMAKI"), Speed(1.5))
  CH("CHOBOMAKI"):WaitMove()
  CH("CHOBOMAKI"):SetManpu("MP_FLY_SWEAT")
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:DrawFaceOffset(-20, 0)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1978750436)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_FLY_SWEAT")
  TASK:Regist(subEveNoNoNo, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.SURPRISE)
  WINDOW:DrawFaceOffset(20, 0)
  WINDOW:Talk(SymAct("YANCHAMU"), 1591477799)
  WINDOW:Talk(SymAct("YANCHAMU"), 1204238182)
  subEveCloseMsg()
  CAMERA:MoveFollow2(SymCam("CAMERA_00"), Speed(1, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P01_SHIKIJIKA"), Speed(1.5), LINK_DIR.OFF)
  CH("SHIKIJIKA_SPRING"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  TASK:Regist(subEveDoubleJump, {
    CH("SHIKIJIKA_SPRING")
  })
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1067504727)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -649848088)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_SWEAT_L")
  CH("YANCHAMU"):WaitManpu()
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.CATCHBREATH)
  WINDOW:Talk(SymAct("YANCHAMU"), 439553615)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("YANCHAMU"):DirTo(SymPos("P00_MORI"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("CHOBOMAKI"):DirTo(SymPos("P00_MORI"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.CATCHBREATH)
  WINDOW:Talk(SymAct("YANCHAMU"), 52969230)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("YANCHAMU"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("CHOBOMAKI"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 671444173)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_FLY_SWEAT")
  CH("YANCHAMU"):WaitManpu()
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("YANCHAMU"), 824073612)
  WINDOW:KeyWait()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_FLY_SWEAT")
  WINDOW:Talk(SymAct("YANCHAMU"), 2120207179)
  TASK:Regist(subEveJump, {
    CH("YANCHAMU")
  })
  subEveCloseMsg()
  CH("HERO"):SetVisible(true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_NOTICE_L")
  CH("CHOBOMAKI"):WaitManpu()
  CH("CHOBOMAKI"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):WaitRotate()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("YANCHAMU"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(20, 20, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1732573706)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_05"), Speed(5, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1281993161)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_06"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:Regist(subEveMoveDir, {
    CH("HERO"),
    SymPos("P00_HERO"),
    Speed(1.5),
    CH("YANCHAMU")
  })
  TASK:Sleep(TimeSec(1))
  CH("YANCHAMU"):DirTo(SymPos("P00_HERO"), Speed(60), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):DirTo(SymPos("P00_HERO"), Speed(60), ROT_TYPE.NEAR)
  CH("HERO"):WaitMove()
  CAMERA:WaitMove()
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 1433573512)
  WINDOW:Talk(SymAct("YANCHAMU"), -756382649)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -873351930)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(-1567659734)
  WINDOW:Monologue(-1147905941)
  WINDOW:Monologue(-1866921048)
  subEveCloseMsg()
  while true do
    WINDOW:SysMsg(-1985856791)
    WINDOW:SelectStart()
    WINDOW:SelectChain(-958157778, 1)
    WINDOW:SelectChain(-537354897, 0)
    WINDOW:DefaultCursor(0)
    local id = WINDOW:SelectEnd(MENU_SELECT_MODE.DISABLE_CANCEL)
    if id == 0 then
      subEveCloseMsg()
      WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.THINK)
      WINDOW:Monologue(-187314516)
      WINDOW:Monologue(-305201171)
      subEveCloseMsg()
    else
      subEveCloseMsg()
      WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.NORMAL)
      WINDOW:Monologue(1784079138)
      WINDOW:Monologue(1934479971)
      WINDOW:CloseMessage()
      break
    end
  end
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_SHOCK_L")
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_EXCLAMATION")
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("CHOBOMAKI")
  })
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  CAMERA:SetEye(SymCam("CAMERA_07"))
  CAMERA:SetTgt(SymCam("CAMERA_07"))
  CAMERA:MoveFollow2(SymCam("CAMERA_07_5"), Speed(9, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  WINDOW:DrawFace(272, 16, SymAct("YANCHAMU"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("YANCHAMU"), 1062752659)
  CAMERA:WaitMove()
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_08"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  CH("HERO"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 20, SymAct("CHOBOMAKI"), FACE_TYPE.CATCHBREATH)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 641949906)
  CH("HERO"):WaitRotate()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  TASK:Sleep(TimeSec(0.2))
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 225325841)
  WINDOW:Talk(SymAct("YANCHAMU"), 343212624)
  subEveCloseMsg()
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1530172567)
  WINDOW:CloseMessage()
  CH("HERO"):WaitRotate()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.5))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  CH("YANCHAMU"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("CHOBOMAKI"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1110418902)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), 1761801749)
  WINDOW:Talk(SymAct("YANCHAMU"), 1880737620)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_QUESTION")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -142484581)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_09"))
  CAMERA:SetTgt(SymCam("CAMERA_09"))
  CH("CHOBOMAKI"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):WaitRotate()
  local taskLookAt03 = function()
    TASK:Sleep(TimeSec(0.4))
    CH("YANCHAMU"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("HERO"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt03)
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -291837222)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -2015086858)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1627453513)
  WINDOW:KeyWait()
  CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  SOUND:PlaySe(SymSnd("SE_EVT_JUMP_02"), Volume(256))
  CH("CHOBOMAKI"):SetEyeMotion(EYE_MOTION.HAPPY)
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(72, 16, SymAct("CHOBOMAKI"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1244507020)
  CH("YANCHAMU"):SetFacialMotion(FACIAL_MOTION.ANGRY)
  CH("YANCHAMU"):SetManpu("MP_ANGRY_LP")
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1396087499)
  WINDOW:CloseMessage()
  CAMERA:MoveFollow2(SymCam("CAMERA_10"), Speed(2, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_01"), Volume(256))
  CAMERA:WaitMove()
  CH("CHOBOMAKI"):ResetManpu()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_NOTICE_L")
  CH("CHOBOMAKI"):WaitManpu()
  CH("CHOBOMAKI"):ResetFacialMotion()
  CH("CHOBOMAKI"):DirTo(CH("YANCHAMU"), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_R")
  CH("CHOBOMAKI"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  TASK:Regist(subEveJumpSurprise, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(20, 88, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -477563918)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_12"))
  CAMERA:SetTgt(SymCam("CAMERA_12"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -90979661)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -776040080)
  WINDOW:CloseMessage()
  CH("YANCHAMU"):ResetFacialMotion()
  CH("CHOBOMAKI"):ResetFacialMotion()
  CH("YANCHAMU"):ResetManpu()
  CH("YANCHAMU"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("YANCHAMU"):WaitRotate()
  CH("CHOBOMAKI"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(72, 16, SymAct("YANCHAMU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("YANCHAMU"), -928669647)
  WINDOW:Talk(SymAct("YANCHAMU"), 1329446142)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_06"))
  CAMERA:SetTgt(SymCam("CAMERA_06"))
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.SAD)
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.PAIN)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1445367231)
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):WalkTo(SplinePath(SymPos("P01_HERO"), SymPos("P02_HERO")), Speed(2))
  TASK:Sleep(TimeSec(0.2))
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
  CH("SHIKIJIKA_SPRING"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.RIGHT)
  CH("CHOBOMAKI"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.RIGHT)
  TASK:Sleep(TimeSec(0.3))
  CH("YANCHAMU"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.RIGHT)
  TASK:Sleep(TimeSec(1))
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1789814504)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(0.5))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main02_kowasounamoritry1st01_end()
end
function groundEnd()
end

