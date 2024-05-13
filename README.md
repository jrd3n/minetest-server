# Minetest Capture the flag server

This is a simple way to start you own minetest aws capture the flag server.

this will install minetest, and the game capture the flag, then add the minetest server to crontab.

on reboot the server will be up and running.

## Install

1. Start an AWS ubuntu server.
2. SSH in
3. Run the following command

```bash

curl -s https://raw.githubusercontent.com/jrd3n/minetest-server/main/install.sh | bash

```