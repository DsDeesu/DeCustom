#killers
if [ "$AUTO" != "true" ]; then
	echo "RecreateCore: Please use demanager instead of this script"
	exit
fi

if [ "$(id -u)" != "0" ]; then
	echo "RecreateCore: You must run this script as root"
	exit
fi
#end of killers
echo '####################################'
echo '#         RECREATE MANAGER         #'
echo '####################################'
echo "RecreateCore: Starting recreate script.."

#set area
DePath="$(demanager -loc)"
#

#include area
source "$DePath/core/lib/delib.sh"
#

#Let's rock
	#Prepare DeManager envirionment (from delib.sh)
DeManagerPrepare

mkdir deb.d
cp $DePath/core/core.tar.gz ./deb.d
cd deb.d
tar xzf core.tar.gz
./auto -update
cd ..

DeManagerClear
echo "RecreateCore: Done."
