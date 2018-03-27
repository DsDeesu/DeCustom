#!/bin/bash

#killers
if [ "$AUTO" != "true" ];then 
  echo "PLEASE USE \"auto\" script in root directory!"
  exit
fi
#end of killers

#Executable functions
function AptDo
{
	mv ./aptauto/* $AptLoc
}

function UsrBinDo
{
	mv ./usrbin/* $UsrBinLoc
}

function SysBashDo
{
	mv ./bash/etc/* $SysBashLoc
}

function UsrBashDo
{
	for i in $(ls /home/)
	do
		echo $SRC > /home/$i/$UsrBashLoc
	done
}

function SysXinitDo
{
	mv ./xinitrc $SysXinitLoc
}

function UsrXinitDo
{
	for i in $(ls /home/)
	do
		cat /etc/skel/.xinitrc > /home/$i/$UsrXinitLoc
	done
}

function SkelDo
{
	echo "source /etc/bashrc" > /etc/skel/.bashrc
	echo "source ~/.bashrc" > /etc/skel/.profile
}

function De_RootDO
{
	touch $DePath/core/root
        echo "source /etc/bashrc" >> /root/.bashrc
        echo "source ~/.bashrc" >> /root/.profile
}


#

#############################################
#			END OF 'DO' FUNCTIONS			#
#############################################

function Apt
{
	if [ "$APTCOMPLETION" = "true" ]; then
		AptDo
	else
		echo 'Would you like to configure Apt Auto Completions? [Y]/N'
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			AptDo
		fi
	fi
}

function UsrBin
{
	if [ "$USRBIN" = "true" ]; then
		UsrBinDo
	else
		echo 'Would you like to configure /usr/bin? [Y]/N'
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			UsrBinDo
		fi
	fi
}

function SysBash
{
	if [ "$SYSTEMBASHRC" = "true" ]; then
		SysBashDo
	else
		echo 'Would you like to configure System Bashrc? [Y]/N'
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			SysBashDo
		fi
	fi
}

function UsrBash
{
	if [ "$USERSBASHRC" = "true" ]; then
		UsrBashDo
	else
		echo 'Would you like to configure Users Bashrc? [Y]/N'
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			UsrBashDo
		fi
	fi
}

function SysXinit
{
	if [ "$SYSTEMXINITRC" = "true" ]; then
		SysXinitDo
	else
		echo 'Would you like to configure System Xinitrc? [Y]/N'
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			SysXinitDo
		fi
	fi
}

function UsrXinit
{
	if [ "$USERSXINITRC" = "true" ]; then
		UsrXinitDo
	else
		echo 'Would you like to configure Users Xinitrc? [Y]/N'
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			UsrXinitDo
		fi
	fi
}

function Skel
{
        if [ "$SKEL" = "true" ]; then
                SkelDo
        else
                echo 'Would you like to configure /etc/skel (.bashrc and .profile)? [Y]/N'
                read decs
                if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
                        SkelDo
                fi
        fi
}

function De_Root
{
	if [ "$DOROOT" = "true" ]; then
		De_RootDO
	else
                echo 'Would you like to configure root user too? [Y]/N'
                read decs
                if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
                        De_RootDO
                fi
        fi
}

