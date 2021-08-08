#!/bin/bash

# Author: Fabio J. Matos Nieves
# Date Created: 08/8/2021
# Last Modified: 08/8/2021

# Description
# This script uninstalls the colorscripts script and all of its dependencies

# Usage
# Usage: ./uninstall.sh

if [ -d /usr/share/colorscripts/ ]; then
    sudo rm -r /usr/share/colorscripts/
fi

if [ -f /usr/bin/colorscripts ]; then
    sudo rm /usr/bin/colorscripts
fi

if [ -f /etc/colorscripts.conf ]; then
    sudo rm /etc/colorscripts.conf
fi

if [ -d "$HOME/Scripts" ]; then
    if [ -f "$HOME/Scripts/colorscripts" ]; then
        rm "$HOME/Scripts/colorscripts"
    fi
fi

if [ -d "$HOME/.colorscripts" ]; then
    rm -r "$HOME/.colorscripts"
fi

echo "Uninstall complete"
