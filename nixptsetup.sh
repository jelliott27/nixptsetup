#!/bin/bash 

# Nix Pentesting Box Setup - v1 
# nixptsetup.sh
# The purpose of this simple script is to automate the setup of my Kali VM after a fresh installation to save time and effort 

printf "Debian-based Pentesting Post-Installation Setup Script \n\n"
printf "Task List...  \n"
printf "1. Opening my five favorite Firefox addons (uBlock, Wappalyzer, Netcraft, Shodan, and FoxyProxy)  \n"
printf "2. Downloading Elliot Alderson's Mr. Robot wallpaper  \n"
printf "3. Downloading Evil-WinRM and Impacket into a folder called tools on the Desktop  \n"
printf "4. Installing Terminator terminal  \n"
printf "5. Adding useful aliases to the bash profile  \n"
printf "6. Installing some useful applications  \n"
printf "\n\n\n\n"


printf "Opening webpages for useful browser extension...\n"
sleep 2
firefox https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/ & firefox https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/ & firefox https://addons.mozilla.org/en-US/firefox/addon/netcraft-toolbar/ & firefox https://addons.mozilla.org/en-US/firefox/addon/shodan_io/ & firefox https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/ & firefox https://drive.google.com/drive/my-drive
printf "\n\n\n" 

# Downloading Elliot Alderson's wallpaper and applying to desktop background
printf "Downloading wallpaper...\n"
sleep 2
wget i.imgur.com/ozsp8gW.jpg 
printf "\n\n\n" 

# Creating folder on Desktop labeled 'tools' and installing Impacket and Evil-WinRM 
printf "Grabbing Evil-WinRM and Impacket...\n"
sleep 2
mkdir ~/Desktop/tools 
cd ~/Desktop/tools
git clone https://github.com/SecureAuthCorp/impacket.git
git clone https://github.com/Hackplayers/evil-winrm.git
printf "\n\n\n"   

# Installing Terminator 
printf "Installing Terminator and configurations...\n"
sleep 2
sudo apt install terminator -y
> ~/.config/terminator/config
{
	sudo echo "[global_config]"
  	sudo echo "  [title_transmit_bg_color = \"#2e3436\""
	sudo echo "  title_inactive_bg_color = \"#000000\""
	sudo echo "[keybindings]"
	sudo echo "[profiles]"
	sudo echo "  [[default]]"
	sudo echo "    cursor_color = \"#aaaaaa\""
	sudo echo "    scrollback_infinite = True"
	sudo echo "[layouts]"
	sudo echo "  [[default]]"
	sudo echo "    [[[window0]]]"
	sudo echo "      type = Window"
	sudo echo "      parent = \"\""
	sudo echo "    [[[child1]]]"
	sudo echo "      type = Terminal"
	sudo echo "      parent = window0"
	sudo echo "[plugins]"
} >> ~/.config/terminator/config
printf "\n\n\n"  

# Adding some useful aliases to the bash profile
printf "Adding some useful aliases to the bash profile...\n"
sleep 2
echo "alias eip='wget http://ipecho.net/plain -O - -q ; echo'" >> ~/.bashrc
echo "export PS1=\"\e[0;40m[\u@\h \W]\$ \e[m \"" >> ~/.bashrc
echo "alias lsa='ls -lah'" >> ~/.bashrc 
echo "alias aaa='cd ~/Desktop'" >> ~/.bashrc
echo "alias grepip='grep -oE \"\b([0-9]{1,3}\.){3}[0-9]{1,3}\b\"'" >> ~/.bashrc
printf "\n\n\n"  

# Install multiple programs - Irssi for IRC, Bleachbit for cleaning, Veil-Evasion for creating stealthy payloads, Cmatrix for hacker aesthetics, and Geany for an IDE
printf "Installing some applications...\n\n\n"
sleep 2
sudo apt install irssi -y
sudo apt install bleachbit -y
sudo apt install veil -y
sudo apt install cmatrix -y
sudo apt install geany -y 
printf "\n\n\n"  

echo "FINISHING CHECK LIST"
echo "1. Configure network adapter settings to suit your preferences"
echo "2. Take snapshot if applicable" 
echo "3. Install updates/upgrades"
