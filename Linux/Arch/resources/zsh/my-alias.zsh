# remove all built-in aliases
unalias -m '*'

# basic
alias b='cd ..'
alias cls='clear'
alias ls='ls --color=tty'
alias ll='ls -l'
alias z='zshz 2>&1'
alias vi='nvim $@'
alias svi='sudo nvim $@'
alias ii='dolphin .'
alias del='rm -rf $@'
alias sdel='sudo rm -rf $@'
alias md='mkdir -p $@'

# npm
alias ni='npm install $@'
alias nig='sudo npm --global install $@'
alias nid='npm install --save-dev $@'
alias ns='npm start'

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
alias gchb='git checkout -b $@'
alias gp='git push'
alias gpf='git push --force'
alias gpuo='git push -u origin $@'
alias grv='git remote -v'
alias gpl='git pull'
function gh(){
	nohup xdg-open $(git config remote.origin.url)
	rm nohup.out
}

# Docker
alias drac='docker rm -f $(docker ps -a -q)'
alias drav='docker volume rm $(docker volume ls -q)'
alias drai='docker rmi -f $(docker images -q)'
alias dram='docker-machine rm $(docker-machine ls -q)'
alias dm='docker-machine $@'
alias dls='docker ps -a'
alias drm='docker rm -f $@'
alias de='docker exec -it $@'
function deb(){ 
  docker exec -it $1 bash
}


# services
alias svc_start='sudo systemctl start $@'
alias svc_stop='sudo systemctl stop $@'
alias svc_status='systemctl status $@'
alias svc_restart='sudo systemctl restart $@'
alias svc_enable='sudo systemctl enable $@'
alias svc_disable='sudo systemctl disable $@'

alias mssql_start='sudo systemctl start mssql-server.service'
alias mssql_stop='sudo systemctl stop mssql-server.service'

alias teamviewer_start='sudo systemctl start teamviewerd.service'
alias teamviewer_stop='sudo systemctl stop teamviewerd.service'
alias apache_webserver_start='sudo mkdir /run/httpd 2> /dev/null && systemctl start httpd'

alias docker_stop='sudo systemctl stop docker.socket; sudo systemctl stop docker.service'

# utils
function save_setting(){
  cp $ZSH_CUSTOM/my-alias.zsh $HOME/development/my-devtools-config/Linux/Arch/resources/zsh/my-alias.zsh
  cp $HOME/.zshrc $HOME/development/my-devtools-config/Linux/Arch/resources/zsh/.zshrc

  cp $HOME/.config/Code/User/settings.json $HOME/development/my-devtools-config/Vscode/settings.json
  cp $HOME/.config/Code/User/keybindings.json $HOME/development/my-devtools-config/Vscode/keybindings.json
  cp $HOME/.config/Code/User/snippets/* $HOME/development/my-devtools-config/Vscode/snippets

  echo 'Save settings successfully'
}
alias clean_cache='su -c "echo Before; free -h | head -n 2; sync; echo 3 > /proc/sys/vm/drop_caches; echo After; free -h | head -n 2"'
alias icon_desktop='mv ~/desktop/* ~/development/my-devtools-config/Linux/Arch/resources/chrome-app-shortcut'

# quick open
alias oalias=' nvim $ZSH_CUSTOM/my-alias.zsh'
