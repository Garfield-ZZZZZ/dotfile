aliasFile="~/.bashrc"
echo inserting aliases to $aliasFile
echo "# start inserted from dotfiles" >> $aliasFile
echo "alias ll='ls alFh --color'" >> $aliasFile
echo "# end inserted from dotfiles" >> $aliasFile

echo installing vim
apt-get update
apt-get install -y vim

echo copying .vimrc
cp ./vimrc ~/.vimrc

