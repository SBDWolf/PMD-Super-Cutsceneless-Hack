dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main04_kirarayamaclear1st01_init()
end
function main04_kirarayamaclear1st01_start()
  TASK:Sleep(TimeSec(1))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(1301166956)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1419053613)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), 2142788078)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHUKEI"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(0.3), true)
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("NYASUPAA"):RunTo(SymPos("P00_NYASUPAA"), Speed(3))
  CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  CH("SHIKIJIKA_SPRING"):RunTo(SymPos("P00_SHIKIJIKA"), Speed(3))
  SCREEN_A:FadeIn(TimeSec(0.3), true)
  CH("SHIKIJIKA_SPRING"):WaitMove()
  local taskLookAroundShikijika00 = function()
    subEveLookAround02(CH("SHIKIJIKA_SPRING"), Speed(350))
  end
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_02"), Volume(256))
  TASK:Regist(taskLookAroundShikijika00)
  CH("HERO"):WaitMove()
  local taskLookAroundHero00 = function()
    CH("HERO"):DirTo(RotateTarget(135), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):WaitRotate()
    TASK:Sleep(TimeSec(0.2))
    subEveLookAround(CH("HERO"), Speed(400))
  end
  TASK:Regist(Group("grpHero"), taskLookAroundHero00)
  TASK:WaitTask(Group("grpHero"))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(1721985199)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 702742120)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("NYASUPAA"):WalkTo(SymPos("P01_NYASUPAA"), Speed(1.5))
  CH("NYASUPAA"):WaitMove()
  WINDOW:DrawFaceF(172, 8, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(20, 0)
  WINDOW:Talk(SymAct("NYASUPAA"), 821677865)
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("SHIKIJIKA_SPRING"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_NOTICE_L")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 466918634)
  WINDOW:CloseMessage()
  CH("NYASUPAA"):RunTo(SymPos("P02_NYASUPAA"), Speed(3))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):RunTo(SymPos("P01_HERO"), Speed(3))
  TASK:Sleep(TimeSec(0.1))
  CH("SHIKIJIKA_SPRING"):RunTo(SymPos("P01_SHIKIJIKA"), Speed(3))
  TASK:Sleep(TimeSec(1))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  CH("SHIKIJIKA_SPRING"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_EXCLAMATION")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 47164843)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -2057850524)
  subEveCloseMsg()
  WINDOW:DrawFace(172, 8, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-50, 0)
  WINDOW:Talk(SymAct("NYASUPAA"), -1672708059)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("NYASUPAA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  CH("SHIKIJIKA_SPRING"):SetFacialMotion(FACIAL_MOTION.HAPPY)
  WINDOW:DrawFace(20, 88, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.HAPPY)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1583399784)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):ResetFacialMotion()
  local taskUnun00 = function()
    subEveNod(CH("HERO"))
  end
  local taskUnun05 = function()
    subEveNod(CH("NYASUPAA"))
  end
  TASK:Regist(taskUnun00)
  TASK:Regist(taskUnun05)
  TASK:Sleep(TimeSec(0.7))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(2))
end
function main04_kirarayamaclear1st01_end()
end
function main04_kirarayamaclear1st02_init()
end
function main04_kirarayamaclear1st02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHILDREN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  CH("MIRUHOGGU"):SetManpu("MP_SPREE_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("MIRUHOGGU")
  })
  WINDOW:DrawFace(72, 16, SymAct("MIRUHOGGU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 1199305257)
  WINDOW:CloseMessage()
  CH("MIRUHOGGU"):ResetManpu()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  local taskMiruhogguZS = function()
    CH("MIRUHOGGU"):SetMotion(SymMot("ROUND"), LOOP.OFF)
    CH("MIRUHOGGU"):WaitPlayMotion()
    CH("MIRUHOGGU"):SetMotion(SymMot("CHARGE"), LOOP.OFF)
    CH("MIRUHOGGU"):WaitPlayMotion()
    CH("MIRUHOGGU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  end
  TASK:Regist(taskMiruhogguZS)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 1817616874)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("MIRUHOGGU"):SetManpu("MP_QUESTION")
  CH("MIRUHOGGU"):WaitManpu()
  TASK:Sleep(TimeSec(0.2))
  local taskMiruhogguX = function()
    CH("MIRUHOGGU"):SetMotion(SymMot("ATTACK_ROUND"), LOOP.OFF)
    CH("MIRUHOGGU"):WaitPlayMotion()
    CH("MIRUHOGGU"):SetMotion(SymMot("CHARGE"), LOOP.OFF)
    CH("MIRUHOGGU"):WaitPlayMotion()
    CH("MIRUHOGGU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  end
  TASK:Regist(taskMiruhogguX)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 1968017579)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("MIRUHOGGU"):SetManpu("MP_FLY_SWEAT")
  CH("MIRUHOGGU"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("MIRUHOGGU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 973866604)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 588724013)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  CH("PARTNER"):SetFacialMotion(FACIAL_MOTION.ANGRY)
  CH("NUMERA"):SetFacialMotion(FACIAL_MOTION.SAD)
  CH("PARTNER"):SetManpu("MP_ANGRY_LP")
  local taskNumera00 = function()
    function TaskL.Loop()
      CH("NUMERA"):DirTo(CH("YANCHAMU"), Speed(500), ROT_TYPE.NEAR)
      CH("NUMERA"):WaitRotate()
      TASK:Sleep(TimeSec(0.3))
      CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
      CH("NUMERA"):WaitManpu()
      TASK:Sleep(TimeSec(0.5))
      CH("NUMERA"):DirTo(CH("PARTNER"), Speed(600), ROT_TYPE.NEAR)
      CH("NUMERA"):WaitRotate()
      TASK:Sleep(TimeSec(1.5))
      CH("NUMERA"):SetManpu("MP_FLY_SWEAT")
      CH("NUMERA"):WaitManpu()
    end
    function TaskL.Finish()
      return
    end
  end
  TASK:Regist(taskNumera00)
  CAMERA:MoveFollow2(SymCam("CAMERA_02"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("MIRUHOGGU"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("CHOBOMAKI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):DirTo(CH("PARTNER"), Speed(200), ROT_TYPE.NEAR)
  CAMERA:WaitMove()
  SOUND:PlayBgm(SymSnd("BGM_EVE_ZANNEN_01"), Volume(256))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.ANGRY)
  WINDOW:SwitchTalk({PARTNER_0 = 138044654, PARTNER_1 = 287397295})
  subEveCloseMsg()
  CH("PARTNER"):ResetManpu()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_ANGRY_LP")
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("YANCHAMU"), -1766241952)
  WINDOW:Talk(SymAct("YANCHAMU"), -1885177823)
  WINDOW:Talk(SymAct("YANCHAMU"), 1289055366)
  subEveCloseMsg()
  CH("YANCHAMU"):ResetManpu()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_ANGRY_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.ANGRY)
  WINDOW:SwitchTalk({PARTNER_0 = 1439587783, PARTNER_1 = 2128809476})
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_ANGRY_02"), Volume(256))
  CH("YANCHAMU"):SetManpu("MP_ANGRY_LP")
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  WINDOW:DrawFace(324, 88, SymAct("YANCHAMU"), FACE_TYPE.ANGRY)
  WINDOW:Talk(SymAct("YANCHAMU"), 1744322373)
  WINDOW:CloseMessage()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  TASK:Sleep(TimeSec(0.5))
  TASK:Regist(subEveDoubleJump, {
    CH("YANCHAMU")
  })
  TASK:Sleep(TimeSec(0.5))
  CAMERA:MoveFollow2(SymCam("CAMERA_00"), Speed(4, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CAMERA:WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("MIRUHOGGU"):SetManpu("MP_FLY_SWEAT")
  CH("MIRUHOGGU"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("MIRUHOGGU"), FACE_TYPE.SAD)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 683256194)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 832739523)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 445631232)
  WINDOW:CloseMessage()
  CH("MIRUHOGGU"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("MIRUHOGGU"):WaitRotate()
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("CHOBOMAKI"):DirTo(CH("MIRUHOGGU"), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):DirTo(CH("MIRUHOGGU"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(72, 16, SymAct("MIRUHOGGU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MIRUHOGGU"), 60095041)
  WINDOW:Talk(SymAct("MIRUHOGGU"), -2079529330)
  WINDOW:Talk(SymAct("MIRUHOGGU"), -1659381809)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main04_kirarayamaclear1st02_end()
end
function main04_kirarayamaclear1st03_init()
end
function main04_kirarayamaclear1st03_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  WINDOW:Narration(TimeSec(0.5), TimeSec(0.5), -194442269)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("NYASUPAA"):WalkTo(SymPos("P00_NYASUPAA"), Speed(1.5))
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P00_SHIKIJIKA"), Speed(1.5))
  CH("NUMERA"):WalkTo(SymPos("P00_NUMERA"), Speed(1.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_KONOHANANOIE"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("NYASUPAA"):WaitMove()
  CH("NYASUPAA"):DirTo(CH("TABUNNE"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):WaitRotate()
  CH("TABUNNE"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), -311280990)
  CH("TABUNNE"):WaitRotate()
  subEveCloseMsg()
  CH("NYASUPAA"):WalkTo(SymPos("P01_NYASUPAA"), Speed(1.5))
  CH("TABUNNE"):DirTo(RotateTarget(0), Speed(200), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("TABUNNE"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("TABUNNE"), -966825631)
  WINDOW:CloseMessage()
  TASK:Regist(Group("grpChobo"), subEveRunDir, {
    CH("CHOBOMAKI"),
    SymPos("P00_CHOBOMAKI"),
    Speed(4),
    CH("TABUNNE")
  })
  TASK:Regist(subEveRunDir, {
    CH("YANCHAMU"),
    SymPos("P00_YANCHAMU"),
    Speed(4),
    CH("TABUNNE")
  })
  TASK:WaitTask(Group("grpChobo"))
  TASK:Regist(subEveDoubleJump, {
    CH("CHOBOMAKI")
  })
  CH("TABUNNE"):DirTo(CH("CHOBOMAKI"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(324, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -549169120)
  subEveCloseMsg()
  TASK:Regist(subEveJump, {
    CH("TABUNNE")
  })
  WINDOW:DrawFace(20, 88, SymAct("TABUNNE"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("TABUNNE"), -1878667545)
  WINDOW:Talk(SymAct("TABUNNE"), -1994457178)
  subEveCloseMsg()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("CHOBOMAKI"):SetManpu("MP_SHOCK_L")
  TASK:Regist(subEveJumpSurprise, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(324, 88, SymAct("CHOBOMAKI"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1573671835)
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):DirTo(RotateTarget(-45), Speed(350), ROT_TYPE.NEAR)
  CH("CHOBOMAKI"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("CHOBOMAKI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("CHOBOMAKI"), -1154966236)
  WINDOW:KeyWait()
  SOUND:PlaySe(SymSnd("SE_EVT_PO"))
  TASK:Regist(subEveJump, {
    CH("CHOBOMAKI")
  })
  WINDOW:DrawFace(324, 88, SymAct("CHOBOMAKI"), FACE_TYPE.SPECIAL04)
  WINDOW:Talk(SymAct("CHOBOMAKI"), 1018200555)
  subEveCloseMsg()
  TASK:Regist(subEveDoubleJump, {
    CH("TABUNNE")
  })
  WINDOW:DrawFace(20, 88, SymAct("TABUNNE"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("TABUNNE"), 632008874)
  WINDOW:CloseMessage()
  CH("CHOBOMAKI"):SetManpu("MP_LAUGH_LP")
  CH("CHOBOMAKI"):RunTo(SymPos("P01_CHOBOMAKI"), Speed(4))
  TASK:Sleep(TimeSec(0.2))
  CH("TABUNNE"):DirTo(RotateTarget(0), Speed(200), ROT_TYPE.NEAR)
  CH("YANCHAMU"):SetManpu("MP_LAUGH_LP")
  CH("YANCHAMU"):RunTo(SymPos("P01_YANCHAMU"), Speed(4))
  TASK:Sleep(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  CH("CHOBOMAKI"):ResetManpu()
  CH("YANCHAMU"):ResetManpu()
end
function main04_kirarayamaclear1st03_end()
end
function main04_kirarayamaclear1st04_init()
end
function main04_kirarayamaclear1st04_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  SOUND:PlayBgm(SymSnd("BGM_EVE_KONOHANANOIE"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  GIMMICK:SetupLoopPlaced(SymGA("SCHOOL_ROAD"), 0, -10)
  GIMMICK:MoveLoopPlaced(Speed(0.8))
  GIMMICK:SetLoopPlacedLeftMode()
  CH("HERO"):SetMotion(SymMot("WALK"), LOOP.ON)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1774072666)
  GIMMICK:MoveLoopPlaced(Speed(0))
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("HERO"):SetManpu("MP_NOTICE_L")
  CH("HERO"):WaitManpu()
  CH("HERO"):DirTo(RotateTarget(180), Speed(350), ROT_TYPE.LEFT)
  TASK:Regist(subEveRunDir, {
    CH("SHIKIJIKA_SPRING"),
    SymPos("P00_SHIKIJIKA"),
    Speed(3),
    CH("HERO")
  })
  TASK:Regist(subEveRunDir, {
    CH("NUMERA"),
    SymPos("P00_NUMERA"),
    Speed(3),
    CH("NUMERA")
  })
  WINDOW:CloseMessage()
  TASK:WaitTask()
  WINDOW:DrawFace(272, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1889862171)
  WINDOW:CloseMessage()
  subEveNo(CH("HERO"))
  WINDOW:DrawFace(324, 88, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NUMERA"), 1535660504)
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1116954777)
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.3))
  local taskShikijika00 = function()
    CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P01_SHIKIJIKA"), Speed(1.5))
    CH("SHIKIJIKA_SPRING"):WaitMove()
    CH("SHIKIJIKA_SPRING"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
    CH("SHIKIJIKA_SPRING"):WaitRotate()
    CH("SHIKIJIKA_SPRING"):SetMotion(SymMot("WALK"), LOOP.ON)
  end
  local taskNumera00 = function()
    CH("NUMERA"):WalkTo(SymPos("P01_NUMERA"), Speed(1.5))
    CH("NUMERA"):WaitMove()
    CH("NUMERA"):SetMotion(SymMot("WALK"), LOOP.ON)
  end
  TASK:Regist(taskShikijika00)
  TASK:Regist(taskNumera00)
  TASK:Sleep(TimeSec(0.5))
  CH("HERO"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.RIGHT)
  CH("HERO"):WaitRotate()
  CH("HERO"):SetMotion(SymMot("WALK"), LOOP.ON)
  GIMMICK:MoveLoopPlaced(Speed(0.8))
  TASK:Sleep(TimeSec(0.5))
  WINDOW:DrawFaceF(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 231929438)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 348768031)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 1071944924)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_NOTICE_L")
  CH("SHIKIJIKA_SPRING"):SetNeckRot(RotateTarget(45), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("SHIKIJIKA_SPRING"):WaitNeckRot()
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), 654288285)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NUMERA"), -1587037870)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):ResetNeckRot(TimeSec(0.3))
  CH("SHIKIJIKA_SPRING"):WaitNeckRot()
  WINDOW:DrawFaceF(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1199798253)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -788376513)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -937859714)
  subEveCloseMsg()
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.3))
  WINDOW:DrawFaceF(172, 8, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(-483117379)
  WINDOW:CloseMessage()
  CH("SHIKIJIKA_SPRING"):SetNeckRot(RotateTarget(45), RotateTarget(0), RotateTarget(0), TimeSec(0.15))
  CH("SHIKIJIKA_SPRING"):WaitNeckRot()
  WINDOW:DrawFaceF(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -97581060)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1251045061)
  CH("SHIKIJIKA_SPRING"):ResetNeckRot(TimeSec(0.3))
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1401577350)
  CH("SHIKIJIKA_SPRING"):WaitNeckRot()
  WINDOW:CloseMessage()
  GIMMICK:MoveLoopPlaced(Speed(0))
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CAMERA:MoveFollow(SymCam("CAMERA_01"), Speed(0.8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  CH("SHIKIJIKA_SPRING"):WalkTo(SymPos("P02_SHIKIJIKA"), Speed(1.5))
  CH("NUMERA"):WalkTo(SymPos("P02_NUMERA"), Speed(1.5))
  CH("NUMERA"):WaitMove()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_NOTICE_L")
  CH("SHIKIJIKA_SPRING"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("NUMERA"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.1))
  CH("NUMERA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_QUESTION")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -2024213575)
  WINDOW:CloseMessage()
  CH("HERO"):ResetNeckRot(TimeSec(0.2))
  CH("HERO"):WaitNeckRot()
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(200), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("SHIKIJIKA_SPRING"):SetManpu("MP_NOTICE_R")
  CH("SHIKIJIKA_SPRING"):WaitManpu()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1639726344)
  subEveCloseMsg()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("SHIKIJIKA_SPRING"):DirTo(CH("NUMERA"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(324, 88, SymAct("NUMERA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NUMERA"), 433839671)
  WINDOW:Talk(SymAct("NUMERA"), 12644214)
  WINDOW:DrawFace(324, 88, SymAct("NUMERA"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("NUMERA"), -1011352623)
  WINDOW:Talk(SymAct("NUMERA"), -626210160)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("HERO"):SetManpu("MP_QUESTION")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-243164845)
  subEveCloseMsg()
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NUMERA"):DirTo(CH("SHIKIJIKA_SPRING"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  CH("SHIKIJIKA_SPRING"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("SHIKIJIKA_SPRING"):WaitRotate()
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -392517614)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1478803755)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1094709356)
  WINDOW:DrawFace(72, 16, SymAct("SHIKIJIKA_SPRING"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1779606441)
  WINDOW:Talk(SymAct("SHIKIJIKA_SPRING"), -1930007274)
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(191787481)
  WINDOW:Monologue(309674136)
  WINDOW:Monologue(2064358580)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(1), true)
  TASK:Sleep(TimeSec(0.5))
end
function main04_kirarayamaclear1st04_end()
end
function groundEnd()
end

