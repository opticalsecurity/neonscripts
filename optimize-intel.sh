sudo add-apt-repository -y ppa:apt-fast/stable 
sudo apt-get -y update 
sudo apt-get install -y apt-fast
sudo apt-get install -y preload
sudo systemctl enable --now preload
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
wget -qO - https://cdn.starnode.us/archivos_xanmod/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -
sudo apt update && sudo apt install linux-xanmod-rt-x64v3
git clone https://github.com/vainkii/kernel-tweaks.git && cd kernel-tweaks
chmod 750 ./install.sh && bash ./install.sh
fstrim -a
sudo apt clean
sudo apt autoremove
sudo apt install intel-microcode iucode-tool
