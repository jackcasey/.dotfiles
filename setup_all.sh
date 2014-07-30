pushd $HOME/.dotfiles

echo 'Linking all symlinks into homedir:'
for i in `find \`pwd\` -iname '*.symlink'`; do
  file=$(basename $i)
  file=.${file%%.symlink}
  echo "$i -> $HOME/$file"
  ln -s -i $i $HOME/$file
done

echo 'Calling all auto setups:'
for i in `find . -iname 'auto_setup.sh' -maxdepth 2`; do
  echo "  ${i:2}"
  bash $i
done

popd
