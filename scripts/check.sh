#!/bin/bash
#killers
if [ "$AUTO" != "true" ];then 
  echo "PLEASE USE \"auto\" script in root directory!"
  exit
fi
#end of killers


#Check for arguments and set adequate flags
function CheckIf()
{
  if [ "$1" = "-sysbash" ]; then
    SYSTEMBASHRC=true

  elif [ "$1" = "-usrbash" ]; then
    USERSBASHRC=true

  elif [ "$1" = "-sysxinit" ]; then
    SYSTEMXINITRC=true

  elif [ "$1" = "-usrxinit" ]; then
    USERSXINITRC=true

  elif [ "$1" = "-usrbin" ]; then
    USRBIN=true

  elif [ "$1" = "-aptcompl" ]; then
    APTCOMPLETION=true

  elif [ "$1" = "-d" ]; then
    DEBUG=true

  elif [ "$1" = "-update" ]; then
    UPDATE=true

  elif [ "$1" = "-y" ]; then
    ALL=true
  fi
}
