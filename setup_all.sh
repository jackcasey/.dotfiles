pushd $HOME/.dotfiles

echo 'Linking all symlinks into homedir:'
echo "  NB: I'll skip over any that are already symlinks"
for i in `find \`pwd\` -iname '*.symlink'`; do
  file=$(basename $i)
  file=.${file%%.symlink}
  homefile=$HOME/$file
  if [ ! -L $homefile ]; then
    echo "$i -> $homefile"
    ln -s -i $i $homefile
  fi
done

echo 'Calling all auto setups:'
for i in `find . -iname 'auto_setup.sh' -maxdepth 2`; do
  echo "  ${i:2}"
  bash $i
done

popd
