#! /bin/bash
clear
printf '\033]2;ehtools INSTALLER\a'
echo -e "                                                           "
echo -e "███████╗██╗  ██╗████████╗ ██████╗  ██████╗ ██╗     ███████╗ \e[1;33mv2.1.5\e[0m"
echo -e "██╔════╝██║  ██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝"
echo -e "█████╗  ███████║   ██║   ██║   ██║██║   ██║██║     ███████╗"
echo -e "██╔══╝  ██╔══██║   ██║   ██║   ██║██║   ██║██║     ╚════██║"
echo -e "███████╗██║  ██║   ██║   ╚██████╔╝╚██████╔╝███████╗███████║"
echo -e "╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝"
echo -e "\e[1;33mBy Entynetproject corp\e[0m"
echo -e "More on our site:"
echo -e "==> \e[1;33mhttps://entynethacker.wixsite.com/ehtools\e[0m"                                                           
echo -e "==> \e[1;33mhttp://entynetproject.simplesite.com/\e[0m"
echo -e "Press \e[1;33many key\e[0m to install ehtools"
read -n 1
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/ehtoolslite" ]]
then
	echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
	sleep 4
	if [[ -d /root/ehtoolslite ]]
	then
		rm -r /root/ehtoolslite
	fi
	mkdir /root/ehtoolslite
	cp -r "$DIR"/* /root/ehtoolslite
	chmod +x /root/ehtoolslite/install.sh
	gnome-terminal -- "bash /root/ehtoolslite/install.sh"
fi
echo -e "Installing library..."
sleep 1
echo -e "Fixing permissions"
sleep 2
chmod +x /root/ehtoolslite/eht1
chmod +x /root/ehtoolslite/eht2
chmod +x /root/ehtoolslite/eht3
chmod +x /root/ehtoolslite/eht31
chmod +x /root/ehtoolslite/eht
chmod +x /root/ehtoolslite/eht4
chmod +x /root/ehtoolslite/eht41
chmod +x /root/ehtoolslite/eht42
chmod +x /root/ehtoolslite/eht43
chmod +x /root/ehtoolslite/ls/l131.sh
chmod +x /root/ehtoolslite/ls/l132.sh
chmod +x /root/ehtoolslite/ls/l133.sh
chmod +x /root/ehtoolslite/uninstall.sh
clear
echo -e "Copying script to /bin/ehtoolslite"
sleep 1
mkdir /bin/ehtoolslite
cd /root/ehtoolslite
cp /root/ehtoolslite/eht /bin/ehtoolslite
cp /root/ehtoolslite/eht1 /bin/ehtoolslite
cp /root/ehtoolslite/eht2 /bin/ehtoolslite
cp /root/ehtoolslite/eht3 /bin/ehtoolslite
cp /root/ehtoolslite/eht31 /bin/ehtoolslite
cp /root/ehtoolslite/eht4 /bin/ehtoolslite
cp /root/ehtoolslite/eht41 /bin/ehtoolslite
cp /root/ehtoolslite/eht42 /bin/ehtoolslite
cp /root/ehtoolslite/eht43 /bin/ehtoolslite
clear
#required for gui
apt-get -y install ncurses-dev
clear
if [[ ! -d /root/handshakes ]]
then
	mkdir /root/handshakes
	echo -e "Made /root/handshake directory"
else
	echo -e "/root/handshakes directory detected.Good."
fi
if [[ ! -d /root/wordlists ]]
then
	mkdir /root/wordlists
	echo -e "Made /root/wordlists directory"
else
	echo -e "/root/wordlists directory detected.Good."
fi
while true
do
clear
echo -e "Are you \e[1;33md\e[0meliting or \e[1;33mi\e[0mnstalling the script?(\e[1;33md\e[0m/\e[1;33mi\e[0m): "
echo -e "Only use 'i' for the first time."
read UORI
if [[ "$UORI" = "d" ]]
then 
	clear
	echo -e "? GO OUT OF THIS PLACE ?"
	sleep 3
	break
elif [[ "$UORI" = "i" ]]
then
	clear
	BASHCHECK=$(cat ~/.bashrc | grep "bin/ehtoolslite")
	if [[ "$BASHCHECK" != "i" ]]
	then
		echo -e "Congratulations you have successfully installed our Framework"
		sleep 3
	fi
	echo -e "Adding EntynetHackerTools to PATH so you can access it from anywhere"
	echo -e "Welcome to EntynetHackerTools LITE version :)"
	echo -e "To upgrade your plan visit https://entynethacker.wixsite.com/ehtools/plans-pricing"
	sleep 1



	export PATH=/bin/ehtoolslite:$PATH
	sleep 1
	echo "export PATH=/bin/ehtoolslite:$PATH" >> ~/.bashrc
	sleep 1
	clear
	break
fi
done
clear
echo -e "DONE"
sleep 1
clear
echo -e "Open a NEW terminal and type 'eht' to launch the script"
sleep  4
exit
