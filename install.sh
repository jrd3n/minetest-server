#!/bin/bash

# Update and upgrade the system packages
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install git unzip -y

# Ensure the .minetest directory exists and setup structure
mkdir -p ~/.minetest/games
mkdir -p ~/.minetest/worlds

# Clone the Capture the Flag game into the games directory
git clone --recursive https://github.com/MT-CTF/capturetheflag.git ~/.minetest/games/capturetheflag

# Download and setup the world for CTF
cd ~/.minetest/worlds
wget -O CTF_world.zip https://github.com/jrd3n/minetest-server/raw/main/CTF_world.zip
unzip CTF_world.zip
rm CTF_world.zip

# Install Minetest
sudo apt install minetest -y

# Create or modify the minetest.conf file to specify the game and world
touch ~/.minetest/minetest.conf

curl -o ~/.minetest/minetest.conf https://raw.githubusercontent.com/jrd3n/minetest-server/main/minetest.conf

# Start the Minetest server
minetest --server --config ~/.minetest/minetest.conf --worldname CTF_world