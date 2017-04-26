function DeManagerPrepare()
{
	rm -rf /tmp/demanager.d
	mkdir -p /tmp/demanager.d/
	pwd > /tmp/demanager.d/loc
	cd /tmp/demanager.d/
}

function DeManagerClear()
{
	cd $(cat /tmp/demanager.d/loc)
	rm -rf /tmp/demanager.d
}

function DeCheckPrepare()
{
	rm -rf /tmp/decheck.d
	mkdir -p /tmp/decheck.d/
	pwd > /tmp/decheck.d/loc
	cd /tmp/decheck.d/
}

function DeCheckClear()
{
	cd $(cat /tmp/decheck.d/loc)
	rm -rf /tmp/decheck.d
}

function CheckArguments()
{
	if [ "$1" = "-update" ]; then
		DEMANAGER_ARG_UPDATE=true
	elif [ "$1" = "-plugins" ]; then
		DEMANAGER_ARG_PLUGINS=true
	elif [ "$1" = "-core" ]; then
		DEMANAGER_ARG_CORE=true
	elif [ "$1" = "-recreate" ]; then
		DEMANAGER_ARG_RECREATE=true
	elif [ "$1" = "-check" ]; then
		DEMANAGER_ARG_CHECK=true
	else
		DEMANAGER_ARG_NOTFOUND=true
	fi
}

function DeCoreUpdateCheck()
{
	DeCheckPrepare

	wget -q empleador.pl/de/ver
	if [ ! -e ver ]; then
		echo "DeCore: There was error with connecting to the server (empleador.pl). Exiting.."
		exit 0
	fi
	deCoreVerFromServer="$(cat ver)"
	rm ver
	
	DeCheckClear
}
