#!/bin/bash
function Maint()
{
	if [ ! -e /usr/bin/demanager ] &&
		[ -e /usr/bin/de_update ]; then
		echo
		echo
		echo "You are updating DeCustom to DeCustomV2 and we need to delete all of your old DeCustom (with plugins etc)"
		echo "We will use this command: 'rm -rf /etc/DeFiles;rm -rf /usr/bin/{de_chromeupdate,de_help,demangler,de_update,kexec-reboot}'"
		echo "Do you agree? [Y]/N"
		read decs
		if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
			rm -rf /etc/DeFiles;rm -rf /usr/bin/{de_chromeupdate,de_help,de_demangler,de_update,de_kexec-reboot,de_manager,de_help}
		else
			"DeCustom: Error, you need to remove old version of DeCustom before you can install DeCustomV2"
			exit
		fi
	fi
	rm -rf /usr/bin/{de_chromeupdate,de_help,de_demangler,de_update,de_kexec-reboot,de_manager,de_help}
}
