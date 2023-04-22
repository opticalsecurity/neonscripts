sudo add-apt-repository -y ppa:apt-fast/stable 
sudo apt-get -y update 
sudo apt-get install -y apt-fast
sudo apt-get install -y preload
sudo systemctl enable --now preload
wget -qO - https://dl.xanmod.org/archive.key | sudo gpg --dearmor -o /usr/share/keyrings/xanmod-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-release.list
sudo apt update && sudo apt install linux-xanmod-x64v3
git clone https://github.com/vainkii/kernel-tweaks.git && cd kernel-tweaks
chmod 750 ./install.sh && bash ./install.sh
fstrim -a
sudo apt clean
sudo apt autoremove
sudo apt install intel-microcode iucode-tool
