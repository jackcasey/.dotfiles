hs.window.animationDuration = 0

-- Full screen
hs.hotkey.bind({"cmd", "alt"}, "P", function()
  local win = hs.window.focusedWindow()
  win:setFrame(win:screen():frame())
end)

-- Cycle Left
hs.hotkey.bind({"cmd", "alt"}, "[", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()

  -- Full height
  f.y = 0
  f.h = screen.h

  -- Cycle through 1/2, 1/3 and 2/3
  if math.abs(f.w - screen.w / 2) < 10 then
    f.x = screen.x
    f.w = screen.w / 3
  elseif math.abs(f.w - screen.w / 3) < 10 then
    f.x = screen.x
    f.w = 2 * screen.w / 3
  else
    f.x = screen.x
    f.w = screen.w / 2
  end

  win:setFrame(f)
end)

-- Cycle Right
hs.hotkey.bind({"cmd", "alt"}, "]", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()

  -- Full height
  f.y = 0
  f.h = screen.h

  -- Cycle through 1/2, 1/3 and 2/3
  if math.abs(f.w - screen.w / 2) < 10 then
    f.x = screen.x + (2 * screen.w / 3)
    f.w = screen.w / 3
  elseif math.abs(f.w - screen.w / 3) < 10 then
    f.x = screen.x + (screen.w / 3)
    f.w = 2 * screen.w / 3
  else
    f.x = screen.x + (screen.w / 2)
    f.w = screen.w / 2
  end

  win:setFrame(f)
end)

-- Next Monitor
hs.hotkey.bind({"cmd", "alt"}, "O", function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():next()
  win:moveToScreen(nextScreen)
end)


-- reload config
hs.hotkey.bind({"cmd", "alt"}, "R", function()
  hs.reload()
end)
