#!/usr/bin/env bash

# General

## Install minimal packages
pacman -S git wget

## Installing Yay
mkdir ~/build && cd ~/build
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
cd
rm -rf ~/build/yay

## TODO
# wget gist for pacman.conf && makepkg.conf

## Update APT cache
sudo yay -Syu

# ZSH

## Oh my zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## ZSH zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## TODO
# import .zshrc

# Desktop Applications

## VSCode Insiders
yay -S --noconfirm vscodium-bin

## Firefox Dev edition
pacman -S firefox-developer-edition firefox-developer-edition-i18n-en-us firefox-developer-edition-i18n-fr

## Gitkraken
yay -S --noconfirm gitkraken

# Dev

# Java
pacman -S java-openjdk-bin

# Kotlin
pacman -S kotlin 
yay -S --noconfirm kotlin-native
yay -S --noconfirm kscript

# Node.js

## Install a global version of Node.js
pacman -S nodejs

## Install useful NPM packages
npm install -g vsce

# Go

pacman -S go

## Terraform
yay -S --noconfirm terraform

## Docker

yay -S --noconfirm  docker docker-compose 

## Kubernetes

yay -S --noconfirm  kubectl

## Helm
yay -S --noconfirm  helm


# Output
echo "======= OUTPUTS ======="
echo "Current user: $(whoami)"
echo "------ Node ------"
echo "Node.js $(node -v)"
echo "npm $(npm -v)"
echo "------ Go ------"
echo $(go version)

echo "Clean unneeded dependencies"
yay -Yc
