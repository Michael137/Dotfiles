# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

## Customize shell
# Functions
prompt_last_command() {
        history 1 | awk '{ print $2" "$3 }'
}

prompt_last_commands() {
	history 2 | awk '{ cmd = $2 ; arg = $3 ; getline ; print cmd" "arg" -> "$2" "$3 }'
}

# VCS related; Git, Subversion, CVS

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
	export PS1='[\u@\h \W]\$ '
}

custom_prompt() {
	export PS1="(\!)|${pmt_col_bright_yellow}\$(prompt_last_command)${pmt_col_reset}|${pmt_col_orange}\h${pmt_col_reset}|${pmt_col_magenta}\u${pmt_col_reset}|${pmt_bg_col_dark_gray}${pmt_col_yellow}\w${pmt_col_reset}|\n${pmt_col_blue}\$>>${pmt_col_reset}"
}

# default_prompt
custom_prompt
