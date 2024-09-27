#!/bin/bash

if ! command -v nvim &> /dev/null
then
	sudo apt-get update
  # if want the latest versions of fd and rg, would need arch dep package or build from source
	sudo apt-get install gettext libgettextpo-dev ripgrep fd-find tmux

	git submodule update --init --recursive
	cd neovim
	git checkout v0.10.1
	make CMAKE_BUILD_TYPE=Release
  #For a different location use CMAKE_INSTALL_PREFIX=/usr/local/
	sudo make install
	cd ..
fi
