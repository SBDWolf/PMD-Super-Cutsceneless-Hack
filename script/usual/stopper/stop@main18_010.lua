dofile("script/include/inc_all.lua")
dofile("script/include/inc_event.lua")
function TR_TW01_DISTRICT_C_FRONT()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("AAKEN"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -490758955, PARTNER_1 = -73093740})
  WINDOW:CloseMessage()
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:DrawFace(20, 88, SymAct("PARTNER"), FACE_TYPE.SPECIAL02)
  WINDOW:SwitchTalk({PARTNER_0 = -796262825, PARTNER_1 = -913125610})
  WINDOW:CloseMessage()
end
function MV_FM_TW01_CAFE()
  TR_TW01_DISTRICT_C_FRONT()
end
function TR_TW01_DIST_A_DGFRONT02()
  CH("PARTNER"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("PARTNER"):WaitRotate()
  CH("AAKEN"):DirTo(CH("HERO"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):DirTo(CH("PARTNER"), Speed(350), ROT_TYPE.NEAR)
  CH("HERO"):WaitRotate()
  WINDOW:CloseMessage()
  WINDOW:SysMsg(601182179)
  WINDOW:SelectStart()
  WINDOW:SelectChain(986611362, 1)
  WINDOW:SelectChain(300100961, 0)
  WINDOW:DefaultCursor(0)
  local id = WINDOW:SelectEnd(MENU_SELECT_MODE.DISABLE_CANCEL)
  if id == 1 then
    return "next"
  else
  end
end

