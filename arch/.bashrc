#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Env vars
export PATH=$PATH:/home/gardeimasei/Programs/C++/Cpp/depot_tools

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Default startup for tmux
#if command -v tmux>/dev/null; then
#  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
#fi

# User specific aliases and functions

## Customize shell
# Functions
prompt_last_command() {
        history 1 | awk '{ print $2" "$3 }'
}

prompt_last_commands() {
	history 2 | awk '{ cmd = $2 ; arg = $3 ; getline ; print cmd" "arg" -> "$2" "$3 }'
}

# VCS related; Git, Subversion, CVS

# Powerline related

# Colors
pmt_col_yellow="\[$(tput setaf 3)\]"
pmt_col_blue="\[$(tput setaf 4)\]"
pmt_col_magenta="\[$(tput setaf 5)\]"
pmt_col_reset="\[$(tput sgr0)\]"
pmt_col_green="\[$(tput setaf 2)\]"
pmt_col_bright_yellow="\[\033[38;5;11m\]"
pmt_col_orange="\[\033[38;5;208m\]"
pmt_bg_col_dark_gray="\[\033[48;5;59m\]"

# Appllllllyyyyy
default_prompt() {
	export PS1="\u@\h:\w\$"	
}

custom_prompt() {
	export PS1="(\!)|${pmt_col_orange}\h${pmt_col_reset}|${pmt_col_magenta}\u${pmt_col_reset}|${pmt_bg_col_dark_gray}${pmt_col_yellow}\w${pmt_col_reset}|\n${pmt_col_blue}\$>>${pmt_col_reset}"
}

powerline_prompt() {
    # [[ ${TERM} != 'screen' ]] && exec tmux
    export TERM="xterm-256color"
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
}

choose_prompt() {
	if [ -z "$(basename "/"$(ps -f -p $(cat /proc/$(echo $$)/stat | cut -d \  -f 4) | tail -1 | sed 's/^.* //') | grep guake)" ]
	then
		powerline_prompt
	else
		custom_prompt
	fi
}

# default_prompt
# custom_prompt
powerline_prompt
# choose_prompt