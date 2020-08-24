# use neovim
alias v='nvim'
alias vim='nvim'

# go to dotfiles directory
alias gdf='cd $HOME/.dotfiles'
# go to notes
alias gn='cd $HOME/notes'

# Ruby bundler
alias be='bundle exec'

# Rails
alias ready_test='devau; dropdb agworld_test; DISABLE_DATABASE_ENVIRONMENT_CHECK=1 RAILS_ENV=test be rake db:setup --trace'
alias ready_dev='devus; dropdb us_master; dropdb agworld_test; be rake db:setup --trace'
alias sub='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Git
alias gs="git status"
alias gh="git hist"
alias gd="git diff"
alias gds="git diff --staged"
alias gitwhite='git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero'
function gss() {
  git show stash@{$1}
}

alias gitpushup='git push --set-upstream origin `git symbolic-ref HEAD --short`'
# alias clean_branches='git br --merged | grep -v ^* | cut -c3- | xargs git br -d'
alias gitrecent='for ref in $(git for-each-ref --sort=-committerdate --format="%(refname)" refs/heads/ refs/remotes ); do git log -n1 $ref --pretty=format:"%Cgreen%cr%Creset %C(yellow)%d%Creset %C(bold blue)<%an>%Creset%n" | cat ; done | awk '\''! a[$0]++'\'''

# Misc
alias diffmerge='/Users/jack/Applications/DiffMerge.app/Contents/MacOS/DiffMerge'
alias ow='cd ~/dev/org-web'
alias e='nvim'

# Combined SSH configs
alias sshlist="cat ~/.ssh/config | grep ^Host | cut -c6-"

# switching rails website env
alias devus="export AGW_region=us"
alias devau="export AGW_region=au"

alias cuc="TEST_ASSETS=true NO_COVERAGE=true RAILS_ENV=test ./bin/cucumber"
alias cucchrome="TEST_ASSETS=true RAILS_ENV=test JS_DRIVER=chrome ./bin/cucumber --tags @focus"
alias rsp="TEST_ASSETS=true NO_COVERAGE=true RAILS_ENV=test ./bin/rspec -cfd"
alias grd="TEST_ASSETS=true RAILS_ENV=test be guard"

alias policeme="git status --porcelain | grep -v \"^ D\" | cut -c4- | grep '\.rb' | xargs bundle exec rubocop"
alias fixme="git status --porcelain | grep -v \"^ D\" | cut -c4- | grep '\.rb' | xargs bundle exec rubocop -a"

alias ll='ls -lahrt'

# alias update_keyboard='cd ~/projects/controller/Keyboards && ./whitefox.bash && sleep 2 && dfu-util -D WhiteFox.gcc/kiibohd.dfu.bin'
alias idobo='cd ~/projects/qmk_firmware && make idobo:jack:dfu && cd -'

alias myip="ifconfig | grep inet | grep broadcast | cut -d' ' -f2"

function gitrename() {
  git grep -lz $1 | xargs -0 sed -i "" -e "s/$1/$2/g"
}

alias ws='cd ~/dev/website && RAILS_ENV=development source ~/dev/website/config/settings/boot.sh ~/dev/website'

alias t='tmux a || tmux'

alias keytool='"/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin/keytool"'

alias webserver="ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => Dir.pwd).start'"
