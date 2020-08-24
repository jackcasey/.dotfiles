-- Default keybindings for launching apps in Hyper Mode
--
-- To launch _your_ most commonly-used apps via Hyper Mode, create a copy of
-- this file, save it as `hyper-apps.lua`, and edit the table below to configure
-- your preferred shortcuts.
return {
  { 'b', 'Google Chrome' },     -- "B" for "Browser"
  { 'c', 'Slack' },             -- "C for "Chat"
  { 'e', 'Atom' },              -- "E" for "Editor"
  { 'f', 'Finder' },            -- "F" for "Finder"
  { 'd', 'Dynalist' },
  { 't', 'iTerm2' },            -- "T" for "Terminal"

  { 'w', function() -- Work standalone
    hs.eventtap.keyStroke("cmd shift","m")
    hs.eventtap.keyStrokes("work s")
    hs.timer.doAfter(0.03, function()
      hs.eventtap.keyStrokes("tand")
      hs.timer.doAfter(0.03, function()
        hs.eventtap.keyStrokes("alone")
        hs.eventtap.keyStroke({}, "return")
      end)
    end)
  end },
  { 'p', function() -- Personal standalone
    hs.eventtap.keyStroke("cmd shift","m")
    hs.eventtap.keyStrokes("pers")
    hs.timer.doAfter(0.03, function()
      hs.eventtap.keyStrokes("onal s")
      hs.timer.doAfter(0.03, function()
        hs.eventtap.keyStrokes("tand")
        hs.timer.doAfter(0.03, function()
          hs.eventtap.keyStrokes("alone")
          hs.eventtap.keyStroke({}, "return")
        end)
      end)
    end)
  end },
  { 'd', function() -- Dump (work)
    hs.eventtap.keyStroke("cmd shift","m")
    hs.eventtap.keyStrokes("d")
    hs.timer.doAfter(0.03, function()
      hs.eventtap.keyStrokes("ump")
      hs.timer.doAfter(0.03, function()
        hs.eventtap.keyStroke({}, "return")
      end)
    end)
  end },
  { 's', function() -- Storage (personal)
    hs.eventtap.keyStroke("cmd shift","m")
    hs.eventtap.keyStrokes("work s")
    hs.timer.doAfter(0.03, function()
      hs.eventtap.keyStrokes("tand")
      hs.timer.doAfter(0.03, function()
        hs.eventtap.keyStrokes("alone")
        hs.eventtap.keyStroke({}, "return")
      end)
    end)
  end },
  { 'y', function() hs.eventtap.keyStrokes("👍") end },
  { 't', function() hs.eventtap.keyStrokes("✔") end },
  { 'h', function() hs.eventtap.keyStrokes("💚") end },
  { 'n', function() hs.eventtap.keyStrokes("👎") end },
  { 'x', function() hs.eventtap.keyStrokes("✖") end },
  { 'j', function() hs.eventtap.keyStrokes("💔") end }

}
