function saveCore(message)
  do return end
  WINDOW:SysMsg(1306086359)
  local bResult = false
  bResult = SYSTEM:SaveGame()
  if bResult then
    if message_type == "return_top" then
      WINDOW:ForceCloseMessage()
      TASK:Sleep(TimeSec(5, TIME_TYPE.FRAME))
      WINDOW:SysMsg(1422031510)
    else
      WINDOW:ForceCloseMessage()
      TASK:Sleep(TimeSec(5, TIME_TYPE.FRAME))
      WINDOW:SysMsg(2146380117)
    end
  else
    WINDOW:ForceCloseMessage()
    TASK:Sleep(TimeSec(5, TIME_TYPE.FRAME))
    WINDOW:SysMsg(1727272980)
  end
  WINDOW:CloseMessage()
end
function subComResultClear()
  SCREEN_A:FadeOutAll(TimeSec(0), false)
  local resultMenu = CreateDungeonResultWindow()
  resultMenu:Open()
  SCREEN_A:FadeInAll(TimeSec(0.3), true)
  SOUND:PlaySe(SymSnd("ME_GAMECLEAR"), Volume(256))
  function resultMenu:decideAction()
    resultMenu:ShowDownCursor(false)
    SCREEN_A:FadeOutAll(TimeSec(0.5), true)
    self:Close()
  end
  TASK:Sleep(TimeSec(0.5))
  resultMenu:ShowDownCursor(true)
  NestMenu_OpenAndCloseWait(resultMenu)
  SOUND:FadeOutSe(SymSnd("ME_GAMECLEAR"), TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0), false)
end
function subComResultEscape()
  if FUNC_COMMON:IsAlreadyDispResult() then
    return
  end
  SCREEN_A:FadeOut(TimeSec(0), false)
  SCREEN_A:FadeOutAll(TimeSec(0), false)
  local resultMenu = CreateDungeonResultWindow()
  resultMenu:Open()
  SCREEN_A:FadeInAll(TimeSec(0.3), true)
  SOUND:PlaySe(SymSnd("ME_GAMEOVER"), Volume(256))
  function resultMenu:decideAction()
    resultMenu:ShowDownCursor(false)
    SCREEN_A:FadeOutAll(TimeSec(0), false)
    self:Close()
  end
  TASK:Sleep(TimeSec(0.5))
  resultMenu:ShowDownCursor(true)
  NestMenu_OpenAndCloseWait(resultMenu)
  SOUND:FadeOutSe(SymSnd("ME_GAMEOVER"), TimeSec(0.5))
  SCREEN_A:FadeInAll(TimeSec(0.3), true)
  FUNC_COMMON:SetAlreadyDispResult()
end
function subTowerUpdate()
  if SYSTEM:IsChousadanRankUpStatus() == true or SYSTEM:IsUpdateCompletePokemonAtlas() == true then
    SOUND:PlayMe(SymSnd("ME_INFORMATION"), Volume(256))
    WINDOW:SysMsg(699764435)
    WINDOW:SysMsg(816758674)
    WINDOW:CloseMessage()
  end
end

