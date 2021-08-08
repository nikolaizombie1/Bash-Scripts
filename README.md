# Bash-Scripts
A repository to store miscellaneous bash scripts  

## Color scripts
___
### Description
This script selects or prompts you to select a color script to run in your terminal regardless of Linux distribution.

### Installation

``` sh
chmod 755 install.sh && ./install.sh 
```

This will make the install script executable and prompt the user to choose whether to install to the current user or for all the users on the system.

**NOTE:** It will prompt the user for super user privileges depending on the type of installation chosen. Mac OS might work but it is untested.

### Usage
   -  colorscripts [-l] [-r] [-e (NAME)] [-s]
   -  -l Lists all currently available color scripts
   -  -r Executes a random color script
   -  -e (NAME) Executes the given color script
   -  -s Displays a menu of the available color scripts and prompts the user to chose one
   
### Uninstallation

``` sh
chmod 755 install.sh && ./uninstall.sh 

```

This will make the install script executable and will remove all executable binaries and config files.

**NOTE:** It will prompt the user for super user privileges depending on the type of installation chosen.

___

## Sources
Color scripts: Derek Taylor (https://gitlab.com/dwt1/shell-color-scripts)
