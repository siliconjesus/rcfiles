# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
LS_COLORS='di=01;35:fi=00:ln=01;36'
# Prompt Stuff below
NO_COLOR="\[\033[0m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
RED="\[\033[0;31m\]"
ORANGE="\[\033[1;31m\]"
YELLOW="\[\033[1;33m\]"
GREY="\[\033[0;37m\]"

if [[ $EUID == "0" ]];
then
        USER_COLOR=$RED
else
        USER_COLOR=$GREY
fi

PS1="$GREEN[$USER_COLOR\u$CYAN@$YELLOW\h$GREEN] $ORANGE:$CYAN\w$GREY\$ $NO_COLOR"
