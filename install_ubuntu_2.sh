# Ubuntu 20.04LTS+
# Run in your virtual ENV to install flexget
# source ~/flexget/bin/activate
pip3 install --upgrade pip # To Upgrade: python3 -m pip install --upgrade pip
pip3 install --upgrade setuptools
pip3 install --upgrade libtorrent
pip3 install --upgrade guppy3
pip3 install --upgrade wheel # to upgrade: pip3 install --upgrade deluge-client
pip3 install --upgrade deluge-client # Needed to talk to Deluge - to upgrade: pip3 install --upgrade deluge-client
pip3 install --upgrade lbry-libtorrent # Needed for convert_magnet - to upgrade: pip3 install --upgrade lbry-libtorrent
pip3 install --upgrade flexget # to upgrade: pip3 install --upgrade flexget
pip3 install --upgrade cloudscraper # to upgrade: pip3 install --upgrade cloudscraper

# Start at boot AS MY USER - Add it to the reboot crontab (unfortunately this means to restart you need a reboot)
export EDITOR=nano
crontab -e

Add this entry:
@reboot /home/user/flexget/bin/python3 /home/user/flexget/bin/flexget -c /home/user/flexget/config.yml daemon start -d

# Deluge Demon logs: /var/log/deluge/user/daemon.log
# Deluge Web UI Logs: /var/log/deluge/user/web.log
# Deluge Daemon (Userspace): systemctl <stop|start|restart|status> deluged@user.service
# Systemd file: /etc/systemd/system/multi-user.target.wants/deluged@user.service
# Deluge Web UI (UseSpace) systemctl <stop|start|restart|status> deluge-web@user.service 