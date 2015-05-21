hs.window.animationDuration = 0

-- Full screen
hs.hotkey.bind({"cmd", "alt"}, "/", function()
  local win = hs.window.focusedWindow()
  win:setFrame(win:screen():frame())
end)

-- Cycle Left
hs.hotkey.bind({"cmd", "alt"}, ",", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  -- Full height
  f.y = max.y
  f.h = max.h

  -- Cycle through 1/2, 1/3 and 2/3
  if f.x == max.x and f.w == max.w / 2 then
    f.x = max.x
    f.w = max.w / 3
  elseif f.x == max.x and f.w == max.w / 3 then
    f.x = max.x
    f.w = 2 * max.w / 3
  else
    f.x = max.x
    f.w = max.w / 2
  end

  win:setFrame(f)
end)

-- Cycle Right
hs.hotkey.bind({"cmd", "alt"}, ".", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  -- Full height
  f.y = max.y
  f.h = max.h

  -- Cycle through 1/2, 1/3 and 2/3
  if f.x == max.w / 2 and f.w == max.w / 2 then
    f.x = 2 * max.w / 3
    f.w = max.w / 3
  elseif f.x == 2 * max.w / 3 and f.w == max.w / 3 then
    f.x = max.w / 3
    f.w = 2 * max.w / 3
  else
    f.x = max.w / 2
    f.w = max.w / 2
  end

  win:setFrame(f)
end)

-- Next Monitor
hs.hotkey.bind({"cmd", "alt"}, "M", function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():next()
  win:moveToScreen(nextScreen)
end)
