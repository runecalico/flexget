#!/usr/bin/bash
# Ubuntu 20.04 LTS
# sudo apt-get install python3-pip
# sudo pip3 install --upgrade pip
# sudo apt-get install python3-venv
# sudo apt-get install python3-distutils
# sudo apt-get install python3-dev
# sudo apt-get install libtorrent-dev # Needed for convert_magnet
# python3 -m venv ~/flexget/
# Add this to .bash_aliases
# alias flexgetSource='source ~/flexget/bin/activate'

# Ubuntu 22.04 LTS
# Ubuntu 22.05 LTS already has Python 3 installed (3.10 it seems)
sudo apt-get install python3-venv
sudo apt-get install python3-distutils
sudo apt-get install python3-dev
sudo apt-get install libtorrent-dev # Needed for convert_magnet
python3 -m venv ~/flexget/
