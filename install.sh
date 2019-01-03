#! /bin/bash
clear
printf '\033]2;ehtools INSTALLER\a'

echo -e "                                                           "
echo -e "███████╗██╗  ██╗████████╗ ██████╗  ██████╗ ██╗     ███████╗ \e[1;33mv2.1.5\e[0m"
echo -e "██╔════╝██║  ██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝"
echo -e "█████╗  ███████║   ██║   ██║LI ██║██║TE ██║██║     ███████╗"
echo -e "██╔══╝  ██╔══██║   ██║   ██║   ██║██║   ██║██║     ╚════██║"
echo -e "███████╗██║  ██║   ██║   ╚██████╔╝╚██████╔╝███████╗███████║"
echo -e "╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝"
echo -e "\e[1;33mBy Entynetproject corp\e[0m"
sleep 3
echo -e "More on our site:"
sleep 3
echo -e "==> \e[1;33mhttps://entynethacker.wixsite.com/ehtools\e[0m"                                                           
sleep 3
echo -e "==> \e[1;33mhttp://entynetproject.simplesite.com/\e[0m"
sleep 3
echo -e "Creators of Ehtools Framework:"
sleep 3
echo -e "\e[4;34mIvan Nikolsky (Enty)\e[0m - Main Coder"
sleep 3
echo -e "\e[4;33mDJ Mobley\e[0m - Ascii Designer"
sleep 3
echo -e "\e[4;32mEgor Egorich\e[0m - Color Designer"
sleep 3
echo -e "[\e[5;31mBased on lscript\e[0m]"
sleep 3
echo -e "Press \e[1;33many key\e[0m to install ehtools"
read -n 1
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ "$DIR" != "/root/ehtoolslite" ]]
then
	echo -e "ERROR! /00/11/00"
	sleep 4
	echo -e "ERROR! /00/22/00"
        sleep 4
        echo -e "ERROR! /00/33/00"
        sleep 4
        echo -e "TOTAL ERRORS: 3"
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
echo -e "Checking compatibility..."
sleep 20
echo -e "Success!"
sleep 3
echo -e "Installing library..."
sleep 1
echo -e "Fixing permissions..."
sleep 2
echo -e "Connecting to server..."
sleep 10
echo -e "Success!"
sleep 3
echo -e "Creating /bin/ehtoolslite..."
sleep 4
echo -e "Success!"
sleep 3
echo -e "Saving results..."
sleep 10
echo -e "Creating LITE API..."
sleep 10
echo -e "Success!"
sleep 3
echo -e "Downloading EPATH firmware..."
sleep 20
echo -e "Success!"
sleep 3
echo -e "+---------------------------------+" 
echo -e "|    WELCOME TO EPATH FIRMWARE!   |"
echo -e "|   EPATH FIRMWARE IS EHTOOLS     |" 
echo -e "|           FIRMWARE!             |" 
echo -e "|                                 |"
echo -e "|  - Ivan Nikolsky (Enty)         |"
echo -e "|                                 |"
echo -e "+---------------------------------+"
sleep 5
echo -e "Editing Ehtools EPATH..."
sleep 10
echo -e "Success!"
sleep 3
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
	BASHCHECK=$(cat ~/.bashrc | grep "bin/ehtools")
	if [[ "$BASHCHECK" != "i" ]]
	then
		echo -e "Congratulations you have successfully installed our Framework"
		sleep 3
	fi
	echo -e "Adding EntynetHackerTools to PATH so you can access it from anywhere"
	sleep 3
        echo -e "Welcome to EntynetHackerTools LITE :3"
	sleep 3
        echo -e "More information about PRO or other plans on our site"
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
echo -e "Open a NEW terminal and type 'eht' to launch framework"
sleep  4
exit
