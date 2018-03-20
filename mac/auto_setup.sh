source ./functions.sh

if [[ ! $OS == 'mac' ]]; then
  echo '    System is not mac, skipping.'
  exit
fi

# CAPS-LOCK -> Control
echo "    Setting caps-lock to control for all keyboards "
# From 'indirect'
# https://superuser.com/questions/590526/switch-function-keys-on-os-x-via-via-command-line
keyboard_ids=$(ioreg -n IOHIDKeyboard -r | grep -E 'VendorID"|ProductID' | awk '{ print $4 }' | paste -s -d'-\n' - | grep ^1452)
echo $keyboard_ids | xargs -n1 -I{} defaults -currentHost write -g "com.apple.keyboard.modifiermapping.{}-0" -array "<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>"
echo "      You may need to log out to get caps-lock mapping to take effect."
echo "      Or visit System Preferences > Keyboard > Modifier Keys."

safelink $PWD/mac/karabiner-elements/complex_modifications.manuallink ~/.config/karabiner/assets/complex_modifications

bash ./mac/macos_settings.sh
