#!/bin/bash

CUSTOM_NVIM_PATH=/usr/local/bin/nvim.appimage

set -u
sudo update-alternatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
sudo update-alternatives --install /usr/bin/nvim nvim "${CUSTOM_NVIM_PATH}" 110

if [ ! -d "~/.config/nvim" ]
then
  sudo mkdir -p ~/.config/nvim
fi

sudo cp init.vim ~/.config/nvim/init.vim

