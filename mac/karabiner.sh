# set up karabiner settings if installed
cli=/Appplications/Karabiner.app/Contents/Library/bin/karabiner
if [ ! -f $cli ]; then
  echo "Please install Karabiner and re-run setup to enable programmer key mappings"
  echo "https://pqrs.org/osx/karabiner/"
  exit 0
fi

echo -n "    Setting up programmer key mappings with Karabiner "
# This is the karabiner export file
bash ./mac/karabiner_export.sh


