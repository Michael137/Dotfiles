git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Michael137/Dotfiles.git
mv Dotfiles/.vimrc_general ~/.vimrc

touch ~/.tmux.conf
echo "set-option -g default-terminal "screen-256color"" > ~/.tmux.conf
echo "set -g mouse on" >> ~/.tmux.conf


add-apt-repository ppa:fish-shell/release-2
apt-get update
apt-get install fish
apt-get upgrade

curl -L https://get.oh-my.fish | fish
omf install dangerous
omf install agnoster
omf install bobthefish
omf theme dangerous

mv Dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
rm -rf Dotfiles
