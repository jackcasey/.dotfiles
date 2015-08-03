safelink() {
  if [ ! -L $2 ]; then
    echo "• $1 -> $2"
    if [[ -d $2 && -d $1 ]]; then
      echo "Directory $2 exists so cannot be changed to a symlink."
      echo "Please remove and re-run setup if you want to use the .dotfiles version."
      read -rsp $'Press any key to continue...\n' -n1 key
    else
      ln -s -i $1 $2
    fi
  else
    echo "• $2 is already a symlink"
  fi
}
export -f safelink
