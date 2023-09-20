#script to install basic utils
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run with sudo or as root."
    exit 1
fi

debloat_fedora()
{
	echo "debloating fedora now"
}

debloat_debian()
{
	echo "debloating fedora now"
}
distro()
{
	echo "Choose your linux distro"
	echo "Warning: Currently only GNOME DE is supported!!"
	echo "1. Debian"
	echo "2. Fedora"
	read LINUX_DISTRO
	#LINUX_DISTRO=$1
	if [ -z "$LINUX_DISTRO" ]
	then
		echo "LINUX_DISTRO NAME not provided"
	else
		if [ "$LINUX_DISTRO" == "1" ] || [ "$LINUX_DISTRO" == "Debian" ]; then
			echo "LINUX_DISTRO is debian"
			debian_utils
		elif [ "$LINUX_DISTRO" == "2" ] || [ "$LINUX_DISTRO" == "Fedora" ]; then
			echo "LINUX_DISTRO is Fedora"
			fedora_utils
		else
			echo "DISTRO NOT SUPPORTED"
		fi
	fi
}
distro
