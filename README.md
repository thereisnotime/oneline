# oneline
Frequently used one-liners in real life.

# Basic Debian/Ubuntu/PopOS Tools
```bash
apt install -y git wget curl nano net-tools iotop htop unzip sudo mtr sshpass autossh screen tmux openssl openpgp sqlite3 rsync rclone gnupg jq
```

# Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```

# Docker-compose
```bash
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
```

# Oh-my-bash
With curl:
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```
With wget:
```bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
```

# VirtualBox Guest Additions
1. Insert the CD image
2. Enter:
```bash
sudo mkdir -p /dev/cdrom && sudo mount /dev/cdrom /mnt && sudo apt update -y && sudo apt upgrade -y && apt install dkms linux-headers-$(uname -r) build-essential && sudo sh /mnt/VBoxLinuxAdditions.run && reboot
```

# Simple Python web server
Python 2.x
```bash
python -m SimpleHTTPServer 8000
```
Python 3.x
```bash
python -m http.server 8000
```

