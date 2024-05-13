apt update
apt upgrade -y 
apt install git -y 
apt install minetest -y

# git clone --recursive https://github.com/minetest/minetest.git
# cd minetest



mkdir ~/.minetest
mkdir ~/.minetest/games

# i dont know where to install the next part to
git clone --recursive https://github.com/MT-CTF/capturetheflag.git ~/.minetest/games/capturetheflag

##~/.minetest/minetest.conf

