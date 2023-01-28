dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function groundInit()
end
function groundStart()
end
function main24_darkmatternoshoutai01_init()
end
function main24_darkmatternoshoutai01_start()
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("WALLPAPER_MAIN_CAPTURE_BG01"))
  MAP:SetVisibleBG(true)
  WINDOW:BeginChapter()
  SCREEN_A:FadeOutAll(TimeSec(0), true)
  SCREEN_A:FadeIn(TimeSec(0), true)
  SCREEN_A:FadeInAll(TimeSec(1), false)
  WINDOW:SetWaitMode(TimeSec(2), TimeSec(1))
  WINDOW:Chapter(TimeSec(1.5), TimeSec(1.5), -64722751)
  TASK:Sleep(TimeSec(3))
  SCREEN_A:FadeOutAll(TimeSec(1), true)
  SCREEN_A:FadeOut(TimeSec(0), true)
  WINDOW:EndChapter()
  WINDOW:ForceCloseMessage()
  WINDOW:SetWaitMode(TimeSec(-1), TimeSec(-1))
  SCREEN_A:FadeInAll(TimeSec(0), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main24_darkmatternoshoutai01_end()
end
function main24_darkmatternoshoutai02_init()
end
function main24_darkmatternoshoutai02_start()
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1.5))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -448833152)
  WINDOW:Talk(SymAct("DENRYUU"), -837678525)
  WINDOW:Talk(SymAct("DENRYUU"), -687260926)
  WINDOW:Talk(SymAct("DENRYUU"), -1740067387)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_QUESTION_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_QUESTION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = -2125226876, PARTNER_1 = -1434529977})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -1285161466)
  WINDOW:Talk(SymAct("DENRYUU"), 889053897)
  WINDOW:Talk(SymAct("DENRYUU"), 770102152)
  WINDOW:Talk(SymAct("DENRYUU"), -1213485016)
  WINDOW:Talk(SymAct("DENRYUU"), -1364164247)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -2053254486, PARTNER_1 = -1668881429})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = -741903060, PARTNER_1 = -891534227})
  WINDOW:SwitchTalk({PARTNER_0 = -504293458, PARTNER_1 = -118872337})
  WINDOW:SwitchTalk({PARTNER_0 = 2138192416, PARTNER_1 = 1718160225})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -1524752442)
  WINDOW:Talk(SymAct("DENRYUU"), -1140511097)
  WINDOW:Talk(SymAct("DENRYUU"), -1758954172)
  WINDOW:Talk(SymAct("DENRYUU"), -1909240827)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_01"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("HERO"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("PARTNER")
  })
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1049437502, PARTNER_1 = -664147069})
  WINDOW:KeyWait()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  WINDOW:SwitchTalk({PARTNER_0 = -213600192, PARTNER_1 = -362837759})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 1841796558)
  WINDOW:Talk(SymAct("DENRYUU"), 1960617103)
  WINDOW:Talk(SymAct("DENRYUU"), 497186979)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("PARTNER"):DirTo(CH("SEREBII"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("SEREBII"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SEREBII"), 79251938)
  WINDOW:Talk(SymAct("SEREBII"), 798235169)
  WINDOW:Talk(SymAct("SEREBII"), 915352416)
  WINDOW:Talk(SymAct("SEREBII"), 2043592103)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(324, 88, SymAct("HERO"), FACE_TYPE.SPECIAL02)
  WINDOW:Monologue(1624607974)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SEREBII"), 1274601253)
  WINDOW:CloseMessage()
  CH("SEREBII"):DirTo(CH("HERO"), Speed(200), ROT_TYPE.NEAR)
  CH("SEREBII"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SEREBII"), 1390669412)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SHOCK_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -713297237, PARTNER_1 = -866073622})
  TASK:WaitTask()
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("SEREBII"):DirTo(RotateTarget(-20), Speed(200), ROT_TYPE.NEAR)
  CH("SEREBII"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SEREBII"), -2139799526)
  CH("PARTNER"):DirTo(CH("SEREBII"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:Talk(SymAct("SEREBII"), -1720815269)
  WINDOW:Talk(SymAct("SEREBII"), -1304223080)
  WINDOW:Talk(SymAct("SEREBII"), -1420291111)
  WINDOW:Talk(SymAct("SEREBII"), -468089570)
  WINDOW:Talk(SymAct("SEREBII"), -50154401)
  WINDOW:Talk(SymAct("SEREBII"), -701503588)
  WINDOW:Talk(SymAct("SEREBII"), -818620707)
  WINDOW:Talk(SymAct("SEREBII"), 1219283474)
  WINDOW:Talk(SymAct("SEREBII"), 1371011923)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  TASK:Regist(subEveJumpSurprise, {
    CH("PARTNER")
  })
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 952706943, PARTNER_1 = 567416382})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  TASK:Sleep(TimeSec(0.2))
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.3))
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.3))
  TASK:Sleep(TimeSec(0.1))
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0.3))
  CH("PARTNER"):WaitNeckRot()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main24_darkmatternoshoutai02_end()
end
function main24_darkmatternoshoutai03_init()
end
function main24_darkmatternoshoutai03_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  MAP:SetVisible(false)
  MAP:SetBG(SymImg("IMEV0502"))
  MAP:SetVisibleBG(true)
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = 184501757, PARTNER_1 = 333739196})
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SEREBII"), 1554375291)
  WINDOW:Talk(SymAct("SEREBII"), 1170133818)
  WINDOW:Talk(SymAct("SEREBII"), 1855160569)
  WINDOW:Talk(SymAct("SEREBII"), 2005447096)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  MAP:SetVisible(true)
  MAP:SetVisibleBG(false)
end
function main24_darkmatternoshoutai03_end()
end
function main24_darkmatternoshoutai04_init()
end
function main24_darkmatternoshoutai04_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0))
  CH("PARTNER"):SetNeckRot(RotateTarget(0), RotateTarget(-20), RotateTarget(0), TimeSec(0))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  CH("HERO"):ResetNeckRot(TimeSec(0.3))
  TASK:Sleep(TimeSec(0.2))
  CH("PARTNER"):ResetNeckRot(TimeSec(0.3))
  CH("PARTNER"):WaitNeckRot()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -267342473, PARTNER_1 = -385115082})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SEREBII"):SetManpu("MP_FLY_SWEAT")
  CH("SEREBII"):WaitManpu()
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("PARTNER"):DirTo(CH("SEREBII"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("SEREBII"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  CH("SEREBII"):SetFacialMotion(FACIAL_MOTION.THINK)
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("SEREBII"), 712804497)
  WINDOW:Talk(SymAct("SEREBII"), 862435792)
  WINDOW:Talk(SymAct("SEREBII"), 407562771)
  WINDOW:KeyWait()
  CH("SEREBII"):ResetFacialMotion()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("SEREBII"):SetManpu("MP_FLY_SWEAT")
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.SURPRISE)
  WINDOW:Talk(SymAct("SEREBII"), 22141778)
  WINDOW:KeyWait()
  TASK:Regist(subEveDoubleJump, {
    CH("SEREBII")
  })
  WINDOW:Talk(SymAct("SEREBII"), 1309691285)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_SWEAT"), Volume(256))
  CH("PARTNER"):SetManpu("MP_SWEAT_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.CATCHBREATH)
  WINDOW:SwitchTalk({PARTNER_0 = 1460370644, PARTNER_1 = 2082877207})
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.THINK)
  WINDOW:SwitchTalk({PARTNER_0 = 1698504278, PARTNER_1 = -492502375})
  WINDOW:SwitchTalk({PARTNER_0 = -71420968, PARTNER_1 = -1832849420})
  subEveCloseMsg()
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("PARTNER"):DirTo(CH("JIRAACHI"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("JIRAACHI"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.THINK)
  WINDOW:Talk(SymAct("JIRAACHI"), -1948524875)
  WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("JIRAACHI"), -1594454666)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  CH("NYASUPAA"):DirTo(CH("SEREBII"), Speed(350), ROT_TYPE.NEAR)
  CH("NYASUPAA"):WaitRotate()
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("SEREBII"):DirTo(CH("NYASUPAA"), Speed(200), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("NYASUPAA"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("DENRYUU"):DirTo(CH("NYASUPAA"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), -1175602121)
  WINDOW:Talk(SymAct("NYASUPAA"), -156488976)
  subEveCloseMsg()
  subEveNod(CH("SEREBII"))
  WINDOW:DrawFace(72, 16, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(30, 0)
  WINDOW:Talk(SymAct("SEREBII"), -273212495)
  WINDOW:Talk(SymAct("SEREBII"), -996521870)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("DENRYUU"):DirTo(CH("HERO"), Speed(200), ROT_TYPE.NEAR)
  CH("DENRYUU"):WaitRotate()
  local taskLookAt03 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("SEREBII"):DirTo(CH("HERO"), Speed(200), ROT_TYPE.NEAR)
    CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("HERO"), Speed(200), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("NYASUPAA"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt03)
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -578717389)
  WINDOW:Talk(SymAct("DENRYUU"), 1511613948)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
end
function main24_darkmatternoshoutai04_end()
end
function main24_darkmatternoshoutai05_init()
end
function main24_darkmatternoshoutai05_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(1))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  CAMERA:SetFovy(SymCam("CAMERA_01"))
  EFFECT:CreateRecollectionFilter()
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(20, 88, SymAct("KONOHANA"), FACE_TYPE.SPECIAL02)
  WINDOW:Talk(SymAct("KONOHANA"), 1124226237)
  WINDOW:Talk(SymAct("KONOHANA"), -895221854)
  WINDOW:Talk(SymAct("KONOHANA"), -742863133)
  WINDOW:CloseMessage()
  SCREEN_A:FadeOut(TimeSec(0.5), true)
  EFFECT:DestroyRecollectionFilter()
end
function main24_darkmatternoshoutai05_end()
end
function main24_darkmatternoshoutai06_init()
end
function main24_darkmatternoshoutai06_start()
  SOUND:PlayBgm(SymSnd("BGM_EVE_THEME_DARKMATTER_02"), Volume(256))
  CAMERA:SetSisaAzimuthDifferenceVolume(Volume(2))
  CAMERA:SetSisaRateVolume(Volume(0.5))
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  SCREEN_A:FadeIn(TimeSec(0.5), true)
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -124412640)
  WINDOW:Talk(SymAct("DENRYUU"), -510743455)
  WINDOW:Talk(SymAct("DENRYUU"), -1362150746)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_01"))
  CAMERA:SetTgt(SymCam("CAMERA_01"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_LOW_01"), Volume(256))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):SetManpu("MP_SHOCK_R")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SURPRISE)
  WINDOW:Monologue(-1210840089)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt00 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("PARTNER"):DirTo(CH("SEREBII"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("SEREBII"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(272, 16, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-30, 0)
  WINDOW:Talk(SymAct("SEREBII"), -1661380572)
  WINDOW:Talk(SymAct("SEREBII"), -2048759451)
  WINDOW:Talk(SymAct("SEREBII"), 41579946)
  WINDOW:Talk(SymAct("SEREBII"), 459359467)
  WINDOW:Talk(SymAct("SEREBII"), 1914673351)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_00"))
  CAMERA:SetTgt(SymCam("CAMERA_00"))
  TASK:Sleep(TimeSec(0.2))
  local taskLookAt01 = function()
    TASK:Sleep(TimeSec(0.3))
    CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt01)
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 1795467654)
  WINDOW:Talk(SymAct("DENRYUU"), 1076492869)
  WINDOW:Talk(SymAct("DENRYUU"), 1496500996)
  WINDOW:CloseMessage()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CAMERA:SetEye(SymCam("CAMERA_01_5"))
  CAMERA:SetTgt(SymCam("CAMERA_01_5"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.THINK)
  WINDOW:Monologue(376659395)
  WINDOW:Monologue(258501762)
  WINDOW:CloseMessage()
  CH("HERO"):SetNeckRot(RotateTarget(0), RotateTarget(-30), RotateTarget(0), TimeSec(0.3))
  CH("HERO"):WaitNeckRot()
  WINDOW:DrawFace(20, 88, SymAct("HERO"), FACE_TYPE.SAD)
  WINDOW:Monologue(608517953)
  WINDOW:CloseMessage()
  CH("HERO"):ResetNeckRot(TimeSec(0.2))
  CH("HERO"):WaitNeckRot()
  TASK:Sleep(TimeSec(0.2))
  subEveNo(CH("HERO"))
  TASK:Sleep(TimeSec(0.7))
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Regist(taskLookAt00)
  WINDOW:DrawFace(272, 16, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:DrawFaceOffset(-30, 0)
  WINDOW:Talk(SymAct("SEREBII"), 1029574144)
  WINDOW:Talk(SymAct("SEREBII"), -1161424177)
  WINDOW:Talk(SymAct("SEREBII"), -1545788530)
  WINDOW:Talk(SymAct("SEREBII"), 144936577)
  WINDOW:Talk(SymAct("SEREBII"), 297320384)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_03"))
  CAMERA:SetTgt(SymCam("CAMERA_03"))
  CH("SEREBII"):DirTo(CH("PARTNER"), Speed(60), ROT_TYPE.NEAR)
  CH("SEREBII"):WaitRotate()
  WINDOW:DrawFace(324, 20, SymAct("SEREBII"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("SEREBII"), 982903811)
  WINDOW:Talk(SymAct("SEREBII"), 596565314)
  WINDOW:Talk(SymAct("SEREBII"), 1825524613)
  WINDOW:CloseMessage()
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_NOTICE_HIGH_02"), Volume(256))
  CH("PARTNER"):SetManpu("MP_EXCLAMATION")
  TASK:Sleep(TimeSec(0.1))
  CH("HERO"):SetManpu("MP_EXCLAMATION")
  CH("PARTNER"):WaitManpu()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  TASK:Sleep(TimeSec(0.2))
  CAMERA:SetEye(SymCam("CAMERA_05"))
  CAMERA:SetTgt(SymCam("CAMERA_05"))
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = 1976859332, PARTNER_1 = 1593387271})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  local taskLookAt02 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    CH("HERO"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):DirTo(CH("DENRYUU"), Speed(200), ROT_TYPE.NEAR)
    CH("NYASUPAA"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("SEREBII"):DirTo(CH("DENRYUU"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt02)
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), 1205999686)
  WINDOW:Talk(SymAct("DENRYUU"), -1065745271)
  WINDOW:Talk(SymAct("DENRYUU"), -647940664)
  subEveCloseMsg()
  WINDOW:DrawFace(324, 88, SymAct("NYASUPAA"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("NYASUPAA"), -1340085788)
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_04"))
  CAMERA:SetTgt(SymCam("CAMERA_04"))
  local taskLookAt03 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("JIRAACHI"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("NYASUPAA"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.1))
    CH("SEREBII"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt03)
  SOUND:PlaySe(SymSnd("SE_EVT_SIGN_HURRY"), Volume(256))
  CH("PARTNER"):SetManpu("MP_FLY_SWEAT")
  CH("PARTNER"):WaitManpu()
  TASK:Regist(subEveDoubleJump, {
    CH("PARTNER")
  })
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SURPRISE)
  WINDOW:SwitchTalk({PARTNER_0 = -1459300187, PARTNER_1 = -2111206554})
  WINDOW:SwitchTalk({PARTNER_0 = -1691174361, PARTNER_1 = -730649376})
  WINDOW:CloseMessage()
  CAMERA:SetEye(SymCam("CAMERA_02"))
  CAMERA:SetTgt(SymCam("CAMERA_02"))
  TASK:Sleep(TimeSec(0.2))
  WINDOW:DrawFace(324, 20, SymAct("DENRYUU"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("DENRYUU"), -848814687)
  WINDOW:Talk(SymAct("DENRYUU"), -431665566)
  WINDOW:Talk(SymAct("DENRYUU"), -10584285)
  subEveCloseMsg()
  local taskLookAt04 = function()
    TASK:Sleep(TimeSec(0.2))
    CH("HERO"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
    TASK:Sleep(TimeSec(0.2))
    CH("PARTNER"):DirTo(CH("JIRAACHI"), Speed(350), ROT_TYPE.NEAR)
  end
  TASK:Regist(taskLookAt04)
  WINDOW:DrawFace(20, 20, SymAct("JIRAACHI"), FACE_TYPE.NORMAL)
  WINDOW:Talk(SymAct("JIRAACHI"), 2026267628)
  WINDOW:Talk(SymAct("JIRAACHI"), 1641894573)
  WINDOW:Talk(SymAct("JIRAACHI"), -1565899254)
  WINDOW:CloseMessage()
  SOUND:FadeOutBgm(TimeSec(1.5))
  SCREEN_A:FadeOut(TimeSec(1), true)
end
function main24_darkmatternoshoutai06_end()
end
function groundEnd()
end
