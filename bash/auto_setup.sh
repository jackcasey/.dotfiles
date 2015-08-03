source ./functions.sh

echo "    Setting up .ssh config.d"

mkdir -p ~/.ssh/config.d
chmod -R 755 ~/.ssh/config.d

file=`pwd`/bash/ssh_config_defaults
homefile=$HOME/.ssh/config.d/defaults
safelink $file, $homefile

chmod -R 644 ~/.ssh/config.d/*
