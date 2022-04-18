# Bash-Scripts
A repository to store miscellaneous bash scripts  

## Color scripts
___
### Description
This script selects or prompts you to select a color script to run in your terminal regardless of Linux distribution.

### Installation

``` sh
cd Bash-Scripts ; chmod 755 install.sh && ./install.sh 
```

This will make the install script executable and prompt the user to choose whether to install to the current user or for all the users on the system.

**NOTE:** It will prompt the user for super user privileges depending on the type of installation chosen. Mac OS might work but it is untested.

### Usage
   -  colorscripts [-l] [-r] [-e (NAME)] [-s]
   -  -l Lists all currently available color scripts
   -  -r Executes a random color script
   -  -e (NAME) Executes the given color script
   -  -s Displays a menu of the available color scripts and prompts the user to chose one
   -  -b Displays all unblacklisted color scripts and prompts the user to select a color script to blacklist
   -  -u Displays all blacklisted color scripts and prompts the user to select a color script to unblacklist
   
### Uninstallation

``` sh
chmod 755 install.sh && ./uninstall.sh 

```

This will make the install script executable and will remove all executable binaries and config files.

**NOTE:** It will prompt the user for super user privileges depending on the type of installation chosen.

**Warning:** The bomber, pipes1, pipes2, pipes2-slim scripts are animated. This can cause some terminals to get stuck in the animation. 

___

### Sources
Color scripts: Derek Taylor (https://gitlab.com/dwt1/shell-color-scripts)

## PlexFormatter
___

### Description
This script will format the names of the files into the format recognized by Plex Media Server. It will first prompt the user to preview the files, then prompt for confirmation before writing the files and then the user can optionally allow to re arrange the files to organize them for a Plex Media Server installation.

### Making it executable

``` sh
chmod 755 plexformatter
```

**NOTE** The script will only search n the current working directory. It will not search in sub directories inside the current working directory.

**NOTE** The script can be executed as is. However, it is recommended to be placed in a directory that is in the $PATH variable for ease of use.
