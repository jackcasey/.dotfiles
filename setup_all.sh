pushd $HOME/.dotfiles

echo 'Calling all auto setups:'

for i in `find . -iname 'auto_setup.sh' -maxdepth 2`; do
  echo "  ${i:2}"
  bash $i
done

popd
