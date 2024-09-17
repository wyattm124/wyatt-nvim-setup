#!/bin/bash

if ! command -v nvim &> /dev/null
then
	sudo apt-get update
	sudo apt-get install gettext libgettextpo-dev
	git submodule update --init --recursive
	cd neovim
	git checkout v0.10.1
	make CMAKE_BUILD_TYPE=Release
       	#For a different location use CMAKE_INSTALL_PREFIX=/usr/local/
	sudo make install
	cd ..
fi
