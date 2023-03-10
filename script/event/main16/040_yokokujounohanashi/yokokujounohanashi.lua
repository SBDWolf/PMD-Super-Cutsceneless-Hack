dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main16_yokokujounohanashi01_init()
end
function main16_yokokujounohanashi01_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CH("AAKEN"):SetVisible(false)
  CH("HORUBII"):SetVisible(false)
  CH("PEROPPAFU"):SetVisible(false)
  CH("BUIZERU"):SetVisible(false)
  CH("DENRYUU"):SetVisible(false)
  CH("DEDENNE"):SetVisible(false)
  CH("KUCHIITO"):SetVisible(false)
  CH("JIRAACHI"):SetVisible(false)
  CAMERA:MoveToHero(TimeSec(0), ACCEL_TYPE.NONE, DECEL_TYPE.HIGH)
  SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_01"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  subTowerUpdate()

  -- CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  -- CAMERA:SetSisaRateVolume(Volume(0.5))
  -- TASK:Sleep(TimeSec(1))
  -- CAMERA:SetEye(SymCam("CAMERA_00"))
  -- CAMERA:SetTgt(SymCam("CAMERA_00"))
  -- CAMERA:MoveFollow2(SymCam("CAMERA_01"), Speed(8, ACCEL_TYPE.NONE, DECEL_TYPE.HIGH))
  -- SCREEN_A:FadeIn(TimeSec(0.3), false)
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("PARTNER")
  -- })
  -- CH("JIRAACHI"):SetManpu("MP_EXCLAMATION")
  -- CH("HORUBII"):SetManpu("MP_EXCLAMATION")
  -- CH("AAKEN"):SetManpu("MP_EXCLAMATION")
  -- TASK:Sleep(TimeSec(0.1))
  -- CH("HERO"):SetManpu("MP_EXCLAMATION")
  -- CH("BUIZERU"):SetManpu("MP_EXCLAMATION")
  -- CH("PEROPPAFU"):SetManpu("MP_EXCLAMATION")
  -- TASK:Regist(subEveJumpSurprise, {
  --   CH("PEROPPAFU")
  -- })
  -- WINDOW:SysMsg(1356106900)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  -- CH("BUIZERU"):SetManpu("MP_SHOCK_L")
  -- CH("BUIZERU"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("BUIZERU"), 1238351317)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), 1659039254)
  -- WINDOW:Talk(SymAct("DENRYUU"), 2079973207)
  -- WINDOW:Talk(SymAct("DENRYUU"), 884492688)
  -- WINDOW:CloseMessage()
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_OKUSOKO_01"), Volume(256))
  -- CAMERA:SetEye(SymCam("CAMERA_04"))
  -- CAMERA:SetTgt(SymCam("CAMERA_04"))
  -- CH("DENRYUU"):DirTo(CH("AAKEN"), Speed(200), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(20, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), 765688017)
  -- WINDOW:Talk(SymAct("DENRYUU"), 109980434)
  -- WINDOW:Talk(SymAct("DENRYUU"), 529865299)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  -- CH("AAKEN"):SetManpu("MP_EXCLAMATION")
  -- CH("AAKEN"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("AAKEN"), FACE_TYPE.SURPRISE)
  -- WINDOW:Talk(SymAct("AAKEN"), -1743976804)
  -- WINDOW:Talk(SymAct("AAKEN"), -2129250339)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -687828056)
  -- WINDOW:Talk(SymAct("DENRYUU"), -837049623)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("DENRYUU"):DirTo(RotateTarget(0), Speed(60), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(272, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(-30, 0)
  -- WINDOW:Talk(SymAct("DENRYUU"), -449384150)
  -- WINDOW:Talk(SymAct("DENRYUU"), -64110485)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_05"))
  -- CAMERA:SetTgt(SymCam("CAMERA_05"))
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  -- CH("HORUBII"):SetManpu("MP_QUESTION")
  -- CH("HORUBII"):WaitManpu()
  -- WINDOW:DrawFace(324, 88, SymAct("HORUBII"), FACE_TYPE.THINK)
  -- WINDOW:Talk(SymAct("HORUBII"), -1284745556)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_03"))
  -- CAMERA:SetTgt(SymCam("CAMERA_03"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1435015187)
  -- WINDOW:Talk(SymAct("DENRYUU"), -2124794834)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1740569233)
  -- WINDOW:Talk(SymAct("DENRYUU"), 534321568)
  -- WINDOW:Talk(SymAct("DENRYUU"), 113387745)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_02"))
  -- CAMERA:SetTgt(SymCam("CAMERA_02"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 88, SymAct("BUIZERU"), FACE_TYPE.THINK)
  -- WINDOW:Talk(SymAct("BUIZERU"), -977978298)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_06"))
  -- CAMERA:SetTgt(SymCam("CAMERA_06"))
  -- CH("DENRYUU"):DirTo(CH("HERO"), Speed(200), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -592573177)
  -- WINDOW:Talk(SymAct("DENRYUU"), -142385468)
  -- WINDOW:Talk(SymAct("DENRYUU"), -291999867)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1579550398)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1195194365)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1813013568)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1963677055)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("DENRYUU"):DirTo(RotateTarget(0), Speed(60), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(30, 0)
  -- WINDOW:Talk(SymAct("DENRYUU"), 225228366)
  -- WINDOW:Talk(SymAct("DENRYUU"), 343377679)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):DirTo(CH("HORUBII"), Speed(200), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(72, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(30, 0)
  -- WINDOW:Talk(SymAct("DENRYUU"), 2097765155)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_05"))
  -- CAMERA:SetTgt(SymCam("CAMERA_05"))
  -- TASK:Sleep(TimeSec(0.2))
  -- WINDOW:DrawFace(324, 88, SymAct("HORUBII"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("HORUBII"), 1678928482)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(324, 20, SymAct("KUCHIITO"), FACE_TYPE.SPECIAL02)
  -- WINDOW:Talk(SymAct("KUCHIITO"), 1329543585)
  -- WINDOW:CloseMessage()
  -- CAMERA:SetEye(SymCam("CAMERA_06"))
  -- CAMERA:SetTgt(SymCam("CAMERA_06"))
  -- TASK:Sleep(TimeSec(0.2))
  -- local taskLookAt00 = function()
  --   TASK:Sleep(TimeSec(0.3))
  --   CH("DENRYUU"):DirTo(CH("PARTNER"), Speed(200), ROT_TYPE.NEAR)
  --   CH("DENRYUU"):WaitRotate()
  -- end
  -- TASK:Regist(taskLookAt00)
  -- TASK:Regist(subEveDoubleJump, {
  --   CH("PARTNER")
  -- })
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.NORMAL)
  -- WINDOW:SwitchTalk({PARTNER_0 = 1445202144, PARTNER_1 = 426090023})
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), 8302438)
  -- WINDOW:CloseMessage()
  -- SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  -- CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  -- CH("PARTNER"):WaitManpu()
  -- WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  -- WINDOW:SwitchTalk({PARTNER_0 = 726924453, PARTNER_1 = 843632100})
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1244606165)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1395924886)
  -- WINDOW:Talk(SymAct("DENRYUU"), -522296422)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("JIRAACHI"), -104508709)
  -- WINDOW:Talk(SymAct("JIRAACHI"), -756547304)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):DirTo(CH("JIRAACHI"), Speed(200), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("DENRYUU"), -873254823)
  -- WINDOW:Talk(SymAct("DENRYUU"), -2068666722)
  -- subEveCloseMsg()
  -- WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  -- WINDOW:Talk(SymAct("JIRAACHI"), -1649829921)
  -- WINDOW:CloseMessage()
  -- SOUND:FadeOutBgm(TimeSec(1))
  -- CAMERA:SetEye(SymCam("CAMERA_01"))
  -- CAMERA:SetTgt(SymCam("CAMERA_01"))
  -- CH("DENRYUU"):DirTo(RotateTarget(0), Speed(200), ROT_TYPE.NEAR)
  -- CH("DENRYUU"):WaitRotate()
  -- CH("DENRYUU"):SetManpu("MP_SPREE_LP")
  -- WINDOW:DrawFace(272, 16, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  -- WINDOW:DrawFaceOffset(-30, 0)
  -- WINDOW:Talk(SymAct("DENRYUU"), -1232813028)
  -- WINDOW:CloseMessage()
  -- CH("DENRYUU"):ResetManpu()
  -- TASK:Sleep(TimeSec(0.2))
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
  -- WINDOW:SysMsg(-1348471459)
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
  -- CH("AAKEN"):RunTo(SymPos("P00_AAKEN"), Speed(3))
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
  -- SCREEN_A:FadeOut(TimeSec(0.5), true)
  -- CH("AAKEN"):SetVisible(false)
  -- CH("HORUBII"):SetVisible(false)
  -- CH("PEROPPAFU"):SetVisible(false)
  -- CH("BUIZERU"):SetVisible(false)
  -- CH("DENRYUU"):SetVisible(false)
  -- CH("DEDENNE"):SetVisible(false)
  -- CH("KUCHIITO"):SetVisible(false)
  -- CH("JIRAACHI"):SetVisible(false)
  -- TASK:Sleep(TimeSec(0.5))
  -- CAMERA:MoveToHero(TimeSec(0), ACCEL_TYPE.NONE, DECEL_TYPE.HIGH)
  -- SOUND:PlayBgm(SymSnd("BGM_EVE_CHOUSADAN_01"), Volume(256))
  -- SCREEN_A:FadeIn(TimeSec(0.5), true)
  -- TASK:Sleep(TimeSec(0.2))
  -- subTowerUpdate()
end
function main16_yokokujounohanashi01_end()
end
function groundEnd()
end

