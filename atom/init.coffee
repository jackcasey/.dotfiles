# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

console.log 'fixing keybindings'

atom.keymaps.keyBindings.forEach (x) ->
  if x.keystrokes == 'g ^'
    x.keystrokes = 'g shift-6'
    x.keystrokeArray = ['g', 'shift-6']
