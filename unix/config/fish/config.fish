# Customizations by 137
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_k8s_context yes
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi yes
set -g theme_display_date yes
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme dark
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes

set -xg DISPLAY :0

if test -d $HOME/Compilers
	set -xg PATH /home/gardei/Compilers/gcc/install/bin $PATH
	set -xg PATH /home/gardei/Compilers/clang/install/bin $PATH
	set -xg LD_LIBRARY_PATH /home/gardei/Compilers/gcc/install/lib64 $LD_LIBRARY_PATH
	set -xg LD_LIBRARY_PATH /home/gardei/Compilers/clang/install/lib $LD_LIBRARY_PATH
end

function cd_with_dir
	cd $1; and dir -UA | head -10
end

alias gdh "cd_with_dir ~"
alias gdg "cd_with_dir ~/Git"
alias gdd "cd_with_dir ~/Git/Dotfiles"
alias la "ls -A"
alias vimrc "vim ~/.vimrc"
alias bashrc "vim ~/.bashrc"
alias zshrc "vim ~/.zshrc"
alias fishrc "vim ~/.config/fish/config.fish"
alias tmuxrc "vim ~/.tmux.conf"

# Make Rust usable
if test -d $HOME/.cargo/env
	source $HOME/.cargo/env
end

set -g EDITOR "vim"

# For antlr4 (see https://github.com/antlr/antlr4/blob/master/doc/getting-started.md)
set -xg CLASSPATH /usr/local/lib/antlr-4.7.1-complete.jar $CLASSPATH
alias antlr4 'java -Xmx500M -cp ".:$CLASSPATH" org.antlr.v4.Tool'
alias grun 'java -cp ".:$CLASSPATH" org.antlr.v4.gui.TestRig'
