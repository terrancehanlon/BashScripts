#bin/bash

if ["$EUID" -ne 0]
	then $echo "Run as root"
	exit
end	

$echo "Running OS update ..."
sudo apt-get update

$echo "installing VM ware dev tools ..."
sudo apt-get install open-vm-tools-desktop -y

$echo "Installing basic packages g++ gcc etc ... "
sudo apt install build-essential

$echo "Vim install ..."
sudo apt-get install vim
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt-get install libsfml-dev
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
mkdir ~/.vim/bundle/ && cd ~/.vim/bundle
git clone git@github.com:ycm-core/YouCompleteMe.git
git submodule update --init --recursive
python3 install.py --all


$echo "Done ..."
