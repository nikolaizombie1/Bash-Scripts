#!/bin/bash

# Author: Fabio J. Matos Nieves
# Date Created: 07/8/2021
# Last Modified: 07/8/2021

# Description
# This script selects or prompts you to select a color script to run in your terminal regardless of distrobution

# Usage
# Usage: ./colorscripts.sh [-l] [-r] [-e <NAME>] [-s]

shellcolorscriptdir=$HOME/.colorscripts
echo "$shellcolorscriptdir"

usage()
{
    echo "Usage: $0 [-l] [-r] [-e <NAME>] [-s]" 1>&2; exit 1;
}

if [ ! -d "$HOME/.colorscripts"  ]; then
    mkdir "$HOME/.colorscripts"
    echo "Place your shell color scripts in $shellcolorscriptdir"
    exit 1
fi

chmod 755 -R "$shellcolorscriptdir"

readarray -t scs < <(ls $shellcolorscriptdir)

while getopts "lre:s" opt; do
        case "${opt}" in
            l)
               ls "$shellcolorscriptdir"
               exit 0
               ;;
            r)
               colorscriptwc=$(ls "$shellcolorscriptdir" | wc -l)
               randindex=$(($RANDOM%$colorscriptwc))
               cd "$shellcolorscriptdir"
               ./"${scs[$randindex]}"
               exit 0
               ;;
            e)
               cd "$shellcolorscriptdir"
               ./"${OPTARG}"
               exit 0
               ;;
            s)
               PS3="Which script would you like to execute: "
               select script in ${scs[@]}; do
                   break
               done
               echo ""
               cd "$shellcolorscriptdir"
               ./"$script"
               exit 0
               ;;
            *)
               usage
               ;;
    esac
done


if [ -z "$1" ] || [ -z "$e" ]; then
    usage
fi

# Sources
# Color scripts: Derek Taylor (https://gitlab.com/dwt1/shell-color-scripts)
