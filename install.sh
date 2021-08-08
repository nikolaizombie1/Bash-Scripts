#!/bin/bash

# Author: Fabio J. Matos Nieves
# Date Created: 08/8/2021
# Last Modified: 08/8/2021

# Description
# This script installs the colorscripts script to a single user (no root required) or for all users (root required)

# Usage
# Usage: ./install.sh

PS3="Which set of users do you want to install the script for?: "
select install in "Just my user" "All users on the system" "Do not install"; do
    if [ "$install" = "Do not install" ]; then
        echo "Install script closed"
        exit 0
    fi
    break
done

if [ "$install" = "All users on the system" ]; then
    if [ ! -d /usr/share/colorscripts ]; then
        sudo mkdir /usr/share/colorscripts
    fi
    sudo cp -a "$PWD/.colorscripts/." /usr/share/colorscripts
    sudo chmod -R 775 /usr/share/colorscripts
    sudo cp colorscripts /usr/bin/
    sudo chmod 755 /usr/bin/colorscripts
    sudo touch /etc/colorscripts.conf
    echo "All user install complete"
elif [ "$install" = "Just my user" ]; then
    if [ ! -d "$HOME/Scripts" ]; then
        mkdir "$HOME/Scripts"
    fi
    cp colorscripts "$HOME/Scripts"
    chmod 755 "$HOME/Scripts/colorscripts"
    if [ ! -d "$HOME/.colorscripts" ]; then
        mkdir "$HOME/.colorscripts"
    fi
    cp -a "$PWD/.colorscripts/." "$HOME/.colorscripts"
    chmod 755 -R "$HOME/.colorscripts"
    echo "$USER user install complete"
fi

read -pr "Would you like to autostart colorscripts -r when starting your current shell [y/n]: " yn

if [ "$yn" = y ] || [ "$yn" = Y ]; then
    if [ "$(echo "$SHELL" | rev | cut -d '/' -f 1 | rev)" = "zsh" ]; then
        echo "colorscripts -r" >> "$HOME/.zshrc"
    elif [ "$(echo "$SHELL " | rev | cut -d '/' -f 1 | rev)" = "bash" ]; then
        echo "colorscripts -r" >> "$HOME/.bashrc"
    else
        echo "$(echo "$SHELL" | rev | cut -d '/' -f 1 | rev) shell is not supported"
    fi
fi
