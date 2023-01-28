dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main14_choureigominatohe01_init()
end
function main14_choureigominatohe01_start()
  CH("PEROPPAFU"):SetPosition(SymPos("P00_PEROPPAFU"))
  CH("BUIZERU"):SetPosition(SymPos("P00_BUIZERU"))
  CH("HORUBII"):SetPosition(SymPos("P00_HORUBII"))
  CH("DENRYUU"):SetPosition(SymPos("P00_DENRYUU"))
  CH("DEDENNE"):SetPosition(SymPos("P00_DEDENNE"))
  CH("KUCHIITO"):SetPosition(SymPos("P01_KUCHIITO"))
  CH("JIRAACHI"):SetPosition(SymPos("P01_JIRAACHI"))
  CH("AAKEN"):SetPosition(SymPos("P00_AAKEN"))
  CH("PARTNER"):SetDir(CH("AAKEN"))
  CH("HERO"):SetDir(CH("AAKEN"))
  CH("AAKEN"):SetDir(CH("PARTNER"))
  CAMERA:MoveToHero(TimeSec(0), ACCEL_TYPE.NONE, DECEL_TYPE.HIGH)
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  subTowerUpdate()

  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(3))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_01"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(272, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(-30, 0)
  -- WINDOW:Talk(SymAct("DENRYUU"), -2122429480)
  -- WINDOW:CloseMessage()
  -- CH("DEDENNE"):SetManpu("MP_SPREE_LP")
  -- CH("AAKEN"):SetManpu("MP_SPREE_LP")
  -- CH("HORUBII"):SetManpu("MP_SPREE_LP")
  -- CH("BUIZERU"):SetManpu("MP_SPREE_LP")
  -- CH("PEROPPAFU"):SetManpu("MP_SPREE_LP")
  -- CH("KUCHIITO"):SetManpu("MP_SPREE_LP")
  -- CH("JIRAACHI"):SetManpu("MP_SPREE_LP")
  -- CH("HERO"):SetManpu("MP_SPREE_LP")
  -- CH("PARTNER"):SetManpu("MP_SPREE_LP")
  -- CH("DEDENNE"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("AAKEN"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("HORUBII"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("BUIZERU"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("PEROPPAFU"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("KUCHIITO"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("JIRAACHI"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("HERO"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- CH("PARTNER"):SetMotion(SymMot("LETSGO"), LOOP.OFF)
  -- WINDOW:SysMsg(-1738179943)
  -- CH("PARTNER"):WaitPlayMotion()
  -- WINDOW:CloseMessage()
  -- CH("DEDENNE"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("AAKEN"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("HORUBII"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("BUIZERU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("PEROPPAFU"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("KUCHIITO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("HERO"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("PARTNER"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("JIRAACHI"):SetMotion(SymMot("WAIT02"), LOOP.ON)
  -- CH("DEDENNE"):ResetManpu()
  -- CH("AAKEN"):ResetManpu()
  -- CH("HORUBII"):ResetManpu()
  -- CH("BUIZERU"):ResetManpu()
  -- CH("PEROPPAFU"):ResetManpu()
  -- CH("KUCHIITO"):ResetManpu()
  -- CH("HERO"):ResetManpu()
  -- CH("PARTNER"):ResetManpu()
  -- CH("JIRAACHI"):ResetManpu()
  -- TASK:Sleep(TimeSec(0.2))
  -- TASK:Regist(subEveMoveDir, {
  --   CH("AAKEN"),
  --   SymPos("P00_AAKEN"),
  --   Speed(2),
  --   RotateTarget(10)
  -- })
  -- TASK:Sleep(TimeSec(0.3))
  -- CH("HORUBII"):DirTo(SymPos("P00_HORUBII"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("PEROPPAFU"):RunTo(SymPos("P00_PEROPPAFU"), Speed(3))
  -- CH("BUIZERU"):RunTo(SymPos("P00_BUIZERU"), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HORUBII"):WalkTo(SymPos("P00_HORUBII"), Speed(3))
  -- CH("DENRYUU"):RunTo(SymPos("P00_DENRYUU"), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("DEDENNE"):RunTo(SymPos("P00_DEDENNE"), Speed(3))
  -- CH("KUCHIITO"):RunTo(SplinePath(SymPos("P00_KUCHIITO"), SymPos("P01_KUCHIITO")), Speed(3))
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("JIRAACHI"):RunTo(SplinePath(SymPos("P00_JIRAACHI"), SymPos("P01_JIRAACHI")), Speed(3))
  -- TASK:Sleep(TimeSec(2.5))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("PARTNER"):DirTo(CH("AAKEN"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.2))
  -- CH("HERO"):DirTo(CH("AAKEN"), Speed(350), ROT_TYPE.NEAR)
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("AAKEN"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  -- CH("AAKEN"):WaitRotate()
  -- WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("AAKEN"), -1287116454)
  -- subEveCloseMsg()
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(72, 16, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = -1437394917, PARTNER_1 = -451768612})
  -- TASK:WaitTask()
  -- WINDOW:CloseMessage()
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  -- CAMERA:MoveToHero(TimeSec(0), ACCEL_TYPE.NONE, DECEL_TYPE.HIGH)
  -- TASK:Sleep(TimeSec(0.5))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.2))
  -- subTowerUpdate()
end
function main14_choureigominatohe01_end()
end
function groundEnd()
end

