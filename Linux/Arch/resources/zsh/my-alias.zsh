# remove all built-in aliases
unalias -m '*'

# basic
alias b='cd ..'
alias cls='clear'
alias ls='ls --color=tty'
alias lsa='ls -a'
alias ll='ls -l'
alias z='zshz 2>&1'
alias vi='nvim $@'
alias vsc='code .'
alias ii='dolphin .'
alias del='rm -rf $@'
alias md='mkdir -p $@'

# npm
alias ni='npm install $@'
alias nig='sudo npm --global install $@'
alias nid='npm install --save-dev $@'
alias ns='npm start'
alias nd='npm run dev'
alias nt='npm run test'
alias nb='npm run build'

# yarn
alias ys='yarn start'
alias yd='yarn dev'
alias yb='yarn build'
alias ya='yarn add $@'
alias yad='yarn add --dev $@'
alias yag='yarn global add $@'
alias yr='yarn remove $@'

# git
alias gs='git status'
alias gcl='git clone $1'
alias gcf='git clean -f $@'
alias gsh='git show $@'
alias gl='git log'
alias glo='git log --oneline'
alias ga='git add $@'
alias grsta='git restore --staged $@'
function gaex(){
  git add .
  git reset -- $@
}
alias gacm='git add . && git commit -m $@'
alias gcm='git commit -m $@'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'
alias gb='git branch'
alias gch='git checkout $@'
alias gp='git push'
alias gpf='git push --force'
alias gpuo='git push -u origin $@'
alias grv='git remote -v'
alias gpl='git pull'
function gh(){
	nohup xdg-open $(git config remote.origin.url) &
	rm nohup.out
}

# services
alias mssql_start='sudo systemctl start mssql-server.service'
alias mssql_stop='sudo systemctl stop mssql-server.service'
alias mongodb_start='sudo mongod --port 27017 --dbpath /storage/database/mongodb'
alias postgres_start='sudo systemctl start postgresql.service'
alias postgres_stop='sudo systemctl stop postgresql.service'
alias teamviewer_start='sudo systemctl start teamviewerd.service'
alias teamviewer_stop='sudo systemctl stop teamviewerd.service'

# utils
function save_setting(){
  cp $ZSH_CUSTOM/my-alias.zsh $HOME/dev/my-devtools-config/Linux/Arch/resources/zsh/my-alias.zsh
  cp $HOME/.config/Code/User/settings.json $HOME/dev/my-devtools-config/Vscode/settings.json
  cp $HOME/.zshrc $HOME/dev/my-devtools-config/Linux/Arch/resources/zsh/.zshrc
  echo 'Save settings successfully'
}
alias clean_cache='su -c "echo Before; free -h; sync; echo 3 > /proc/sys/vm/drop_caches; echo After; free -h"'
alias icon_desktop='mv ~/desktop/* ~/dev/my-devtools-config/Linux/Arch/resources/chrome-app-shortcut'
# quick open
alias oalias='nvim $ZSH_CUSTOM/my-alias.zsh'
