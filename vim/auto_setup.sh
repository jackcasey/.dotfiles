command -v ag >/dev/null 2>&1 || { echo >&2 "    Please install ag to enable unite searching."; exit 1; }

# NeoBundle
if [ ! -d "$HOME/.vim/bundle/neobundle.vim" ]; then
  curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi
