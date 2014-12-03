if [[ ! $OS == 'mac' ]]; then
  echo '    System is not mac, skipping.'
  exit
fi

# CAPS-LOCK -> Control
echo "    Setting caps-lock to control for all keyboards "
# From 'indirect'
# https://superuser.com/questions/590526/switch-function-keys-on-os-x-via-via-command-line
keyboard_ids=$(ioreg -n IOHIDKeyboard -r | grep -E 'VendorID"|ProductID' | awk '{ print $4 }' | paste -s -d'-\n' -)
echo $keyboard_ids | xargs -n1 -I{} defaults -currentHost write -g "com.apple.keyboard.modifiermapping.{}-0" -array "<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>"
echo "      You may need to log out to get caps-lock mapping to take effect."
echo "      Or visit System Preferences > Keyboard > Modifier Keys."

# set up karabiner settings if installed
cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner
if [ -f $cli ]; then
  echo -n "    Setting up programmer key mappings with Karabiner "
  # This is the karabiner export file
  bash ./mac/karabiner.sh
else
  echo "Please install Karabiner and re-run setup to enable programmer key mappings"
  echo "https://pqrs.org/osx/karabiner/"
fi

# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

#Set a blazingly fast keyboard repeat rate
defaults write -g InitialKeyRepeat -int 15    # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1            # normal minimum is 2 (30 ms)

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
