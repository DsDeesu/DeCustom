# DeCustom

Little linux customize pack with plugins support. DeCustom offers (in default) colored bash, pack of aliases, plugins support and some useful scripts. For eg we have simple Display Manager switcher from TTY (dedm) and much more.

### Features:
  So what are the features of DeCustom? At first, we have modified /etc/{bashrc,bash.bashrc} with colored linux prompt used from Linux Mint and Fedora. Next we have pack of aliases (eg afy = "apt install -fy" etc.). And /etc/bashrc.useraddons which is "user area" where user can add his own modification without writing plugin (read Plugin section for more info). Also we have apt and afy autocompletition. And modified xinitrc.

### Avaiable scripts:
  * demanager - Main script for using DeCustom
  * decalc - Very simple calculator in shell
  * dedm - Display Manager switcher from TTY
  * demangler - script for demangling (useful when compiling with make)
  * derepairperm - simple repair permissions script in user home folder
  * dechromeupdate - script for updating chrome (for 64bit systems only)
  * kexec-reboot - Scritp made by Isaac G and Gregg Fitzgerald to restarting system with kexec-tools
  * auto - installation script
  
### Plugins:
  DeCustom offer plugins support. Every plugin has its own update script and recreate script. Recreate scripts are scripts that are running after update. Because some plugins can insert in eg /etc/bash.bashrc some addons. Without Recreation Scripts there will be many problems.. for eg easy plugin adding ssh aliases. If this plugin at end of every installation/updating is adding aliases to /etc/bashrc.aliases and DeCustom will not have any updates in this time. Then in /etc/bashrc.aliases will be repeated this plugin aliases and will create messup till new version of DeCustom will overwrite existing /etc/bashrc.aliases.
  (See DeSSH for example of simple DeCustom plugin).
  
### Installation:
  Download source from github and run "auto" script with root permissions. Or download from empleador.pl/de/autodeb and run it. Same result :)
  
### Additional info:
  * All scripts are opensource and even this not made by me, are easy avaiable in internet. DeCustom is rather pack of this tricks with some scripts made by me (eg demanager, dedm etc.). 
  * DeCustom don't have (yet) any uninstall scripts. To delete it just remove DeCustom directory and restore you bashrc files
  * DeCustom don't have any services running in background so its super light.
  * Every update of DeCustom can be made in two ways
    1. demanager -update (alias deupdate) automatic download and update from empleador.pl
    2. downloading from github and running auto script with -update argument.
  * DeCustom have configuration file for installation under scripts/ directory.
  * If you want to determine DeCustom path use "demanager -loc".
  * If you want to support me by giving me advaice or just talk with me write to me email at: DsDeesu@gmail.com or Mateusz.Gooorski@gmail.com
  * Directory tree of DeCustom(for devs) is available inside auto script 
  * DeCustom is released without any license, but only for personal usage. Also if you modify DeCustom source code or use its code somewhere just include me (eg link to DeCustom github, or my email).
