#!/bin/bash

# Exports {{{
export GITHUB_USER="dw-roth"
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
export MANPAGER="less -X" #Don't clear the screen after quitting a man page
export EDITOR="vim"
export LSCOLORS=GxFxCxDxBxegedabagaced
export LS_COLORS=GxFxCxDxBxegedabagaced
export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME=/usr/local/Cellar/maven/3.6.0
export PATH=$HOME/.cabal/bin:$HOME/.ghcup/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH:$M2_HOME/bin:/usr/local/go/bin  #Reorder PATH so local bin is first
# }}}

source /Users/danroth/.ghcup/env

alias vim="vim -N"
alias vi="vim -N"
alias less="less -FSRXc"
alias md="mkdir -pv"
alias mkdir="mkdir -pv"
alias mv="mv -iv"
alias cp="cp -iv" 
alias cpf="cp -Rvf"
alias edit="vim"
alias ll="ls -FGlAhp"
alias dirs="ls -FGlAhp | grep /"
alias cd..="cd .."
alias ..="cd .."
alias .1="cd ../"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias .6="cd ../../../../../../"

alias memHogsTop="top -l 1 -o rsize | head -20"
alias memHogsPs="ps wwaxm -o pid,stat,vsize,rss,time,command | head -10"
alias cpuHogs="ps wwaxr -o pid,stat,%cpu,time,command | head -10"
getWifiPwd() {
  security find-generic-password -ga "$1" | grep "password:"
}

alias wifipwd=getWifiPwd
alias wifihist="defaults read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences | grep LastConnected -A 7"

alias tomcaton="/Library/Tomcat/bin/startup.sh"
alias tomcatoff="/Library/Tomcat/bin/shutdown.sh"

alias cls="clear"

alias myip="curl ipinfo.io"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\w\[\033[0;93m\]\$(parse_git_branch)\[\033[0m\]>"

function g() {
  A=$1

  if [ "${A}" = "doc" ]
  then
    cd ~/Documents
    return
  fi


  if [ "${A}" = "down" ]
  then
    cd ~/Downloads
    return
  fi

  if [ "${A}" = "code" ]
  then
    cd ~/code
    return
  fi

  if [ "${A}" = "employer" ]
  then
    cd ~/code/employer-new-client/
    return
  fi

  if [ "${A}" = "jetty" ]
  then
    cd ~/jetty-distribution-9.4.6.v20170531/webapps/
    return
  fi

cd ~
}

function d() {
  A=$1

  if [ "${A}" = "ps" ]
  then
    rm -rf ~/jetty-distribution-9.4.6.v20170531/webapps/pluralstack.d
    cp -Rv ~/code/pluralstack.io ~/jetty-distribution-9.4.6.v20170531/webapps/pluralstack.d
  fi

  return
}

function weather() {
  curl wttr.in/$1
}

function mkdircd() {
  #Make path for each argument and cd into  the tail directory
  mkdir -p "$@" && cd "$_"
}

function get_ruby_version() {
  ruby -v | awk '{print $1 " " $2}'
}  

function tmuxopen() {
  tmux attach -t $1
}

