source ./functions.sh

mkdir -p $HOME/.atom

safelink `pwd`/atom/config.cson $HOME/.atom/config.cson
safelink `pwd`/atom/init.coffee $HOME/.atom/init.coffee
safelink `pwd`/atom/keymap.cson $HOME/.atom/keymap.cson
safelink `pwd`/atom/snippets.cson $HOME/.atom/snippets.cson
safelink `pwd`/atom/styles.less $HOME/.atom/styles.less
