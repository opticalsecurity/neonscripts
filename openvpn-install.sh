sudo apt update
wget https://git.io/vpn -O openvpn-install.sh
bash openvpn-install.sh
rm openvpn-install.sh
echo "Done! You can use [ mv (Root folder)/(Client name).ovpn $HOME ] to move your OpenVPN profile into the home directory."