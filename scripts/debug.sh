#!/bin/bash

#killers
if [ "$AUTO" != "true" ];then 
  echo "PLEASE USE \"auto\" script in root directory!"
  exit
fi
#end of killers

function Debug()
{
	echo "SYSTEMBASHRC: $SYSTEMBASHRC"
	echo "USERSBASHRC: $USERSBASHRC"
	echo "SYSTEMXINITRC: $SYSTEMXINITRC"
	echo "USERSXINITRC: $USERSXINITRC"
	echo "USRBIN: $USRBIN"
	echo "APTCOMPLETION: $APTCOMPLETION"


	echo "DEBUG: $DEBUG"
	echo "UPDATE: $UPDATE"
}