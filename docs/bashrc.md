```php
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

red="$(tput setaf 160)";
green="$(tput setaf 120)";
yellow="$(tput setaf 190)";
brown="$(tput setaf 180)";
white="$(tput setaf 15)";
bold="$(tput bold)";
orange="$(tput setaf 166)";
reset="$(tput sgr0)";

PS1="\[${bold}\]\n";
# PS1+="(\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \n";
PS1+="\[${orange}\]\u";
PS1+="\[${white}\] at ";
PS1+="\[${yellow}\]\h";
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\$PWD";
PS1+="   \[\033[36m\]\u\[${white}\]@\[${orange}\]Branch: \[${green}\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)";
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";

RED="\[\033[0;31m\]"
     YELLOW="\[\033[1;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[1;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
       CYAN="\[\033[0;36m\]"
 LIGHT_CYAN="\[\033[1;36m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"

PS1="$PS1${WHITE}"
trap '[[ -t 1 ]] && tput sgr0' DEBUG

export PS1;

alias ls='ls --color'
LS_COLORS='di=1;93:fi=96:ln=1;34:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=31:*.rpm=90'
export LS_COLORS


```