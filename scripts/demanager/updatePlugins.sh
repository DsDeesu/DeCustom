#killers
if [ "$AUTO" != "true" ]; then
	echo "PluginManager: Please use demanager instead of this script"
	exit
fi

if [ "$(id -u)" != "0" ]; then
	echo "PluginManager: You must run this script as root"
	exit
fi
#end of killers

#set area
DePath="$(demanager -loc)"
#

#include area
source "$DePath/core/lib/delib.sh"
#

echo '####################################'
echo '#          PLUGIN MANAGER          #'
echo '####################################'
echo 'PluginManager: Starting plugin updaters..'

#Prepare envirionment (make temporary folders etc)
DeManagerPrepare

$DePath/plugins/update/*.update


#Clear envirionment
DeManagerClear
