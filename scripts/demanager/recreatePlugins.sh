#killers
if [ "$AUTO" != "true" ]; then
	echo "RecreatePlugins: Please use demanager instead of this script"
	exit
fi

if [ "$(id -u)" != "0" ]; then
	echo "RecreatePlugins: You must run this script as root"
	exit
fi
#end of killers

#set area
DePath="$(demanager -loc)"
#

#include area
source "$DePath/core/lib/delib.sh"
#
echo 'RecreatePlugins: Starting plugin recreate scripts..'

#Prepare envirionment (make temporary folders etc)
DeManagerPrepare

$DePath/plugins/recreate/scripts/*.recreate

echo "RecreatePlugins: Recreate done."
#Clear envirionment
DeManagerClear