# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

#red="\[$(tput setaf 160)\]";
#green="\[$(tput setaf 120)\]";
#yellow="\[$(tput setaf 190)\]";
#brown="\[$(tput setaf 180)\]";
#white="\[$(tput setaf 15)\]";
#bold="\[$(tput bold)\]";
#orange="\[$(tput setaf 166)\]";
#reset="\[$(tput sgr0)\]";

#PS1="${bold}\n";
#PS1+="${green}\u${reset}${brown}@${reset}";
#PS1+="${yellow}\h${reset}: \W";
#PS1+="${green}$ ${reset}";

red="$(tput setaf 160)";
green="$(tput setaf 120)";
yellow="$(tput setaf 190)";
brown="$(tput setaf 180)";
white="$(tput setaf 15)";
bold="$(tput bold)";
orange="$(tput setaf 166)";
reset="$(tput sgr0)";

PS1="\[${bold}\]\n";
PS1+="\[${orange}\]\u";
PS1+="\[${white}\] at ";
PS1+="\[${yellow}\]\h";
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\W";
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]";

export PS1;

alias ls='ls --color'
LS_COLORS='di=1;90:fi=96:ln=1;34:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=31:*.rpm=90'
export LS_COLORS

