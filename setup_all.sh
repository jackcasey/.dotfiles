#!/bin/bash
pushd $HOME/.dotfiles

source ./functions.sh
source ./check_os.sh
echo System is $OS

echo 'Checking requirements...'
command -v curl >/dev/null 2>&1 || { echo >&2 "  Please install curl to run this script."; exit 1; }
command -v vim >/dev/null 2>&1 || { echo >&2 "  Please install vim to run this script."; exit 1; }
command -v git >/dev/null 2>&1 || { echo >&2 "  Please install git to run this script."; exit 1; }
echo '  OK'

echo 'Linking all symlinks into homedir:'
for i in `find \`pwd\` -iname '*.symlink'`; do
  file=$(basename $i)
  file=.${file%%.symlink}
  homefile=$HOME/$file
  safelink $file $homefile
done

echo 'Calling all auto setups:'
for i in `find . -maxdepth 2 -iname 'auto_setup.sh'`; do
  echo
  echo "• ${i:2}"
  bash $i
done

popd
