dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function sub01_taoretamyuu01_init()
end
function sub01_taoretamyuu01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):RunTo(SymPos("P00_HERO"), Speed(3))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("HERO"):WaitMove()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  TASK:Sleep(TimeSec(0.3))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-807443490)
  WINDOW:CloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_02"), Volume(256))
  CH("HERO"):DirTo(RotateTarget(0), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("HERO"):SetManpu("MP_FLY_SWEAT")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-691776865)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  TASK:Sleep(TimeSec(0.1))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
end
function sub01_taoretamyuu01_end()
end
function sub01_taoretamyuu02_init()
end
function sub01_taoretamyuu02_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("MYUU"):SetMotion(SymMot("SB001_SLEEP03"), LOOP.ON, TimeSec(0))
  CH("NEITYIO"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0))
  EFFECT:CreateRecollectionFilter()
  SCREEN_A:FadeIn(TimeSec(0.1), true)
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("DENRYUU"), -35061412)
  WINDOW:Talk(SymAct("DENRYUU"), -453890019)
  WINDOW:Talk(SymAct("DENRYUU"), -1414289702)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 20, SymAct("NEITYIO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NEITYIO"), -1297573989)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("AAKEN"):SetManpu("MP_SHOCK_L")
  CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HORUBII"):SetManpu("MP_SHOCK_L")
  CH("KUCHIITO"):SetManpu("MP_SHOCK_L")
  TASK:Sleep(TimeSec(0.1))
  CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):SetManpu("MP_SHOCK_L")
  TASK:Regist(subEveJumpSurprise, {
    CH("PEROPPAFU")
  })
  CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):SetManpu("MP_EXCLAMATION")
  CH("DEDENNE"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("DEDENNE"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("DEDENNE"), -1719286696)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("NEITYIO"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NEITYIO"), -2137066215)
  WINDOW:Talk(SymAct("NEITYIO"), 117893590)
  WINDOW:CloseMessage()
  SYSTEM:SetForceSyncStop(true)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:SysMsg(505272471)
  WINDOW:SysMsg(-316451643)
  WINDOW:SysMsg(-197630588)
  WINDOW:SysMsg(-552257977)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  TASK:Sleep(TimeSec(0.1))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
  SYSTEM:SetForceSyncStop(false)
  EFFECT:DestroyRecollectionFilter()
end
function sub01_taoretamyuu02_end()
end
function sub01_taoretamyuu03_init()
end
function sub01_taoretamyuu03_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  EFFECT:CreateRecollectionFilter()
  SCREEN_A:FadeIn(TimeSec(0.1), true)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("MYUU"):SetManpu("MP_QUESTION")
  CH("MYUU"):WaitManpu()
  local taskMyuu00 = function()
    CH("MYUU"):SetManpu("MP_SPREE_LP")
    CH("MYUU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
    function TaskL.Loop()
      TASK:Regist(subEveDoubleJump, {
        CH("MYUU")
      })
      TASK:Sleep(TimeSec(0.5))
      TASK:Regist(subEveDoubleJump, {
        CH("MYUU")
      })
      TASK:Sleep(TimeSec(2))
    end
    function TaskL.Finish()
      return
    end
  end
  WINDOW:DrawFace(20, 88, SymAct("MYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("MYUU"), -972159226)
  WINDOW:KeyWait()
  TASK:Regist(taskMyuu00)
  WINDOW:DrawFace(20, 88, SymAct("MYUU"), FACE_TYPE.GLADNESS)
  WINDOW:Talk(SymAct("MYUU"), -1991274047)
  subEveCloseMsg()
  SYSTEM:SetForceSyncStop(true)
  TASK:Sleep(TimeSec(0.3))
  WINDOW:SysMsg(-1873502080)
  WINDOW:SysMsg(-1149635773)
  WINDOW:SysMsg(-1570586110)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  TASK:Sleep(TimeSec(0.1))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
  SYSTEM:SetForceSyncStop(false)
  EFFECT:DestroyRecollectionFilter()
end
function sub01_taoretamyuu03_end()
end
function sub01_taoretamyuu04_init()
end
function sub01_taoretamyuu04_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  EFFECT:CreateRecollectionFilter()
  SCREEN_A:FadeIn(TimeSec(0.1), true)
  local taskMyuu00 = function()
    CH("MYUU"):SetManpu("MP_SPREE_LP")
    CH("MYUU"):SetFacialMotion(FACIAL_MOTION.GLADNESS)
    function TaskL.Loop()
      TASK:Regist(subEveDoubleJump, {
        CH("MYUU")
      })
      TASK:Sleep(TimeSec(0.5))
      TASK:Regist(subEveDoubleJump, {
        CH("MYUU")
      })
      TASK:Sleep(TimeSec(2))
    end
    function TaskL.Finish()
      return
    end
  end
  TASK:Regist(taskMyuu00)
  WINDOW:DrawFace(20, 88, SymAct("MYUU"), FACE_TYPE.EMOTION)
  WINDOW:Talk(SymAct("MYUU"), 637198029)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  TASK:Sleep(TimeSec(0.1))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
  EFFECT:DestroyRecollectionFilter()
end
function sub01_taoretamyuu04_end()
end
function sub01_taoretamyuu05_init()
end
function sub01_taoretamyuu05_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  EFFECT:CreateRecollectionFilter()
  SCREEN_A:FadeIn(TimeSec(0.1), true)
  TASK:Sleep(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(-90), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.5))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):SetMotion(SymMot("EV001_CONFIRMS"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(1021439884)
  subEveCloseMsg()
  WINDOW:SysMsg(-6882517)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  TASK:Sleep(TimeSec(0.1))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
  EFFECT:DestroyRecollectionFilter()
  TASK:Sleep(TimeSec(0.5))
  SOUND:PlaySe(SymSnd("SE_EVT_DOGA"), Volume(256))
  TASK:Sleep(TimeSec(0.3))
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SHOUT)
  WINDOW:Monologue(-426915222)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_FLUSH"), Volume(256))
  SCREEN_A:WhiteChange(Level(0), Level(1), TimeSec(0.02), true)
  TASK:Sleep(TimeSec(0.1))
  SCREEN_A:FadeOut(TimeSec(0), true)
  TASK:Sleep(TimeSec(0.1))
end
function sub01_taoretamyuu05_end()
end
function sub01_taoretamyuu06_init()
end
function sub01_taoretamyuu06_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_NAZO_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.1), true)
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(-845112919)
  WINDOW:Monologue(-725899032)
  WINDOW:Monologue(-1678098897)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CH("HERO"):DirTo(RotateTarget(-135), Speed(500), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-2099179666)
  subEveCloseMsg()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.2))
    SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_02"), Volume(256))
    CH("HERO"):SetManpu("MP_EXCLAMATION")
    CH("HERO"):WaitManpu()
  end
  TASK:Regist(taskLookAt00)
  WINDOW:Talk(SymAct("KUCHIITO"), -1446224723)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(RotateTarget(0), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-1328058900)
  WINDOW:CloseMessage()
  CH("HERO"):WalkTo(SymPos("P00_HERO"), Speed(2))
  CH("HERO"):WaitMove()
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KUCHIITO"), 927953187)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("DENRYUU"), 777273442)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("HERO"):SetManpu("MP_FLY_SWEAT")
  CH("HERO"):WaitManpu()
  CH("HERO"):SetMotion(SymMot("SPEAK"), LOOP.OFF)
  CH("HERO"):WaitPlayMotion()
  CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("KUCHIITO"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("DENRYUU"):SetManpu("MP_EXCLAMATION")
  CH("DENRYUU"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("KUCHIITO"), 1193974862)
  WINDOW:CloseMessage()
  SOUND:PlayBgm(SymSnd("BGM_EVE_TENSION_02"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("DENRYUU"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  CH("KUCHIITO"):SetNeckRot(RotateTarget(0), RotateTarget(20), RotateTarget(0), TimeSec(0.15))
  CH("KUCHIITO"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("DENRYUU"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.15))
  CH("DENRYUU"):DirTo(CH("KUCHIITO"), Speed(350), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  TASK:Sleep(TimeSec(1))
  CH("KUCHIITO"):ResetNeckRot(TimeSec(0.15))
  CH("KUCHIITO"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("DENRYUU"):ResetNeckRot(TimeSec(0.15))
  CH("DENRYUU"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  CH("HERO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("DENRYUU"), 1580313871)
  subEveCloseMsg()
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:DrawFaceOffset(-35, 0)
  WINDOW:Monologue(1964834508)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("HERO"):WalkTo(SymPos("P01_HERO"), Speed(1.5))
  CH("KUCHIITO"):DirTo(SymPos("P01_HERO"), Speed(200), ROT_TYPE.NEAR)
  CH("DENRYUU"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0.2))
  CH("HERO"):WaitMove()
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.2))
  CH("HERO"):WaitNeckRot()
  WINDOW:SysMsg(1812451213)
  subEveCloseMsg()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:Monologue(591812938)
  WINDOW:Monologue(979200011)
  WINDOW:Monologue(292568008)
  WINDOW:Monologue(141232777)
  WINDOW:Monologue(-1879894458)
  WINDOW:CloseMessage()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.SURPRISE)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("HERO"):WaitManpu()
  CH("HERO"):ResetNeckRot(TimeSec(0.15))
  CH("HERO"):WaitNeckRot()
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-1763170553)
  subEveCloseMsg()
  local pokemonIndexHero = SymAct("HERO"):GetIndex()
  if pokemonIndexHero == 595 then
    CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1), LINK_DIR.OFF)
    CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(15), RotateTarget(0), TimeSec(0.2))
  elseif pokemonIndexHero == 1 then
    CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1), LINK_DIR.OFF)
    CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(15), RotateTarget(0), TimeSec(0.2))
  elseif pokemonIndexHero == 329 then
    CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1), LINK_DIR.OFF)
    CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(15), RotateTarget(0), TimeSec(0.2))
  elseif pokemonIndexHero == 479 then
    CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1), LINK_DIR.OFF)
    CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(15), RotateTarget(0), TimeSec(0.2))
  else
    CH("HERO"):WalkTo(SymPos("P02_HERO"), Speed(1), LINK_DIR.OFF)
  end
  CH("DENRYUU"):ResetNeckRot(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("DENRYUU"), -620911369)
  WINDOW:Talk(SymAct("DENRYUU"), -1008298570)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("HERO"):SetManpu("MP_SHOCK_L")
  CH("HERO"):WaitManpu()
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-389298571)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("KUCHIITO"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(324, 88, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KUCHIITO"), -237963468)
  WINDOW:Talk(SymAct("KUCHIITO"), -1097768461)
  subEveCloseMsg()
  WINDOW:DrawFace(72, 16, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:Monologue(-1484107598)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("DENRYUU"), -1935211663)
  WINDOW:Talk(SymAct("DENRYUU"), -1782828496)
  WINDOW:Talk(SymAct("DENRYUU"), 304361215)
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("DENRYUU"), 188686270)
  subEveCloseMsg()
  CH("HERO"):SetFacialMotion(FACIAL_MOTION.DECIDE)
  WINDOW:DrawFace(272, 16, SymAct("HERO"), FACE_TYPE.DECIDE)
  WINDOW:Monologue(1648477074)
  subEveCloseMsg()
  WINDOW:DrawFace(20, 88, SymAct("DENRYUU"), FACE_TYPE.DECIDE)
  WINDOW:Talk(SymAct("DENRYUU"), 2069557971)
  WINDOW:Talk(SymAct("DENRYUU"), 1350017296)
  WINDOW:Talk(SymAct("DENRYUU"), 1231851601)
  WINDOW:CloseMessage()
  subEveNod(CH("HERO"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:FadeOutBgm(TimeSec(1))
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.5))
end
function sub01_taoretamyuu06_end()
end
function groundEnd()
end

