#killers
if [ "$AUTO" != "true" ]; then
	echo "CoreManager: Please use demanager instead of this script"
	exit
fi

if [ "$(id -u)" != "0" ]; then
	echo "CoreManager: You must run this script as root"
	exit
fi
#end of killers

#set area
DePath="$(demanager -loc)"
#

#include area
source "$DePath/core/lib/delib.sh"
#

#function area
function DeCustomCoreUpdate()
{
	#flag for plugins telling that aliases, bashrc etc was changed
	export DEUPDATED=true
	echo "CoreManager: Found new version $deCoreVerFromServer! Do you wish to update? [Y]/N"
	read decs
	if [ "$decs" = "" ] || [ "$decs" = "Y" ] || [ "$decs" = "y" ]; then
		wget -q empleador.pl/de/deb
		chmod +x deb
		./deb
		cd deb.d
		./auto -update
		source /etc/bash.bashrc
	fi
}
#

echo '####################################'
echo '#           CORE MANAGER           #'
echo '####################################'
echo 'CoreManager: Checking for new version..'

#Prepare envirionment (make temporary folders etc)
DeManagerPrepare

#Check function for DeCore (returns deCoreVerFromServer) | from delib
DeCoreUpdateCheck

#Let's rock (check out version diffrence, and update)
if [ "$deCoreVerFromServer" != "$(cat $DePath/version)" ]; then
	DeCustomCoreUpdate
	echo "CoreManager: Done."
else
	echo 'CoreManager: You have newest version DeCustom: '$(cat $DePath/version)
fi

DeManagerClear
