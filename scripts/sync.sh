#!/bin/bash

I3_DIR=$HOME/.i3/config
VIM_DIR=$HOME/.vimrc
XPROF_DIR=$HOME/.xprofile

if [ "$1" == "--export" ] || [ "$1" == "-e" ]; then
	echo "Exporting from git"
	cp -u ../config $I3_DIR
	cp -u ../.vimrc $VIM_DIR
	cp -u ../.xprofile $XPROF_DIR
	exit 1
fi

if [ "$1" == "--import" ] || [ "$1" == "-i" ]; then
	echo "Importing from system"
	cp -u $I3_DIR ../config
	cp -u $VIM_DIR ../.vimrc
	cp -u $XPROF_DIR ../.xprofile
	exit 1
fi

echo "Dotfile Sync Command Usage"
printf "\t-i or --import\t\tImport dotfiles into git repo\n\t-e or --export\t\tExport dotfiles from git to system\n"
