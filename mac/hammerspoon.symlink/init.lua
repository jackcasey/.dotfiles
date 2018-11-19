hs.window.animationDuration = 0

fullscreen = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()
  f.y = screen.y
  f.x = screen.x
  f.w = screen.w
  f.h = screen.h
  win:setFrame(f)
end

cycleLeft = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()

  -- Full height
  f.y = screen.y
  f.h = screen.h

  -- Cycle through 1/2, 1/3 and 2/3
  if math.abs(f.w - screen.w / 2) < 10 and isLeft() then
    f.x = screen.x
    f.w = screen.w / 3
  elseif math.abs(f.w - screen.w / 3) < 10 and isLeft() then
    f.x = screen.x
    f.w = 2 * screen.w / 3
  else
    f.x = screen.x
    f.w = screen.w / 2
  end

  win:setFrame(f)
end

cycleRight = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()

  -- Full height
  f.y = screen.y
  f.h = screen.h

  -- Cycle through 1/2, 1/3 and 2/3
  if math.abs(f.w - screen.w / 2) < 10 and not isLeft() then
    f.x = screen.x + (2 * screen.w / 3)
    f.w = screen.w / 3
  elseif math.abs(f.w - screen.w / 3) < 10 and not isLeft() then
    f.x = screen.x + (screen.w / 3)
    f.w = 2 * screen.w / 3
  else
    f.x = screen.x + (screen.w / 2)
    f.w = screen.w / 2
  end

  win:setFrame(f)
end

nextMonitor = function()
  local win = hs.window.focusedWindow()
  local nextScreen = win:screen():next()
  win:moveToScreen(nextScreen)
end

isLeft = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()
  return f.x < 10
end


-- Full screen
hs.hotkey.bind({"cmd", "alt"}, "P", fullscreen)
hs.hotkey.bind({"cmd", "alt"}, "Q", fullscreen)

-- Cycle Left
hs.hotkey.bind({"cmd", "alt"}, "[", cycleLeft)
hs.hotkey.bind({"cmd", "alt"}, "A", cycleLeft)

-- Cycle Right
hs.hotkey.bind({"cmd", "alt"}, "]", cycleRight)
hs.hotkey.bind({"cmd", "alt"}, "D", cycleRight)

-- Next Monitor
hs.hotkey.bind({"cmd", "alt"}, "O", nextMonitor)
hs.hotkey.bind({"cmd", "alt"}, "E", nextMonitor)


-- reload config
hs.hotkey.bind({"cmd", "alt"}, "R", function()
  hs.reload()
end)
--
-- jeo = require 'jeospoon'
-- print("Tap")
-- jeoEventTap = hs.eventtap.new(jeo.KEY_EVENTS, jeo.handleKeyEvent)
-- print(jeoEventTap)
-- ret = jeoEventTap:start()
-- print(ret)
require('keyboard') -- Load Hammerspoon bits from https://github.com/jasonrudolph/keyboard
