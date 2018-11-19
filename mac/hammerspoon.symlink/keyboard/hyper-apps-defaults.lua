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
  { 't', 'iTerm2' },            -- "T" for "Terminal"

  { 's', function() hs.eventtap.keyStrokes("⭐") end },            -- "S" for "Star"
  { 'y', function() hs.eventtap.keyStrokes("✔") end },            -- "Y" for "Yes"
  { 'n', function() hs.eventtap.keyStrokes("✖") end },            -- "N" for "No"
}
