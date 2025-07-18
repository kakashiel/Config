#!/bin/bash

if [[ -z "${XDG_CONFIG_HOME}" ]]; then
	mkdir -p ~/.config/zsh
	touch ~/.zshenv
	echo 'export XDG_CONFIG_HOME="$HOME/.config"' >>~/.zshenv
	echo 'export ZDOTDIR="$XDG_CONFIG_HOME/zsh"' >>~/.zshenv
	echo "export ISPERSO=false" >>$HOME/.config/zsh/.zshrc
	echo "export ISWORK=false" >>$HOME/.config/zsh/.zshrc
	echo "source ~/Documents/perso/config/zsh/.zshrc" >>$HOME/.config/zsh/.zshrc
fi

MY_OS="NONE"
if [[ $OSTYPE != 'darwin'* ]]; then
	MY_OS=$(awk -F= "/^NAME/{print $2}" /etc/os-release)
fi

if [[ $MY_OS == *'Ubuntu'* ]]; then
	source ./ubuntu_rig/init.sh
fi

source ~/.zshenv
