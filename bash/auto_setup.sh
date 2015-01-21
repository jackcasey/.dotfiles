echo "    Setting up .ssh config.d"

mkdir -p ~/.ssh/config.d
chmod -R 755 ~/.ssh/config.d

file=`pwd`/bash/ssh_config_defaults
homefile=$HOME/.ssh/config.d/defaults
if [ ! -L $homefile ]; then
  echo "• $file -> $homefile"
  ln -s -i $file $homefile
else
  echo "• $homefile is already a symlink"
fi

chmod -R 644 ~/.ssh/config.d/*

