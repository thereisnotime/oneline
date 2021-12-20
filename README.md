# oneline
Frequently used one-liners in real life.

# Basic Tools - Debian/Ubuntu/PopOS
```bash
apt install -y git wget curl nano net-tools iotop htop unzip sudo mtr sshpass autossh screen tmux openssl sqlite3 rsync rclone gnupg jq tcpdump nload telnet socat pv ethtool procps strace hping3 uuid-runtime iputils-ping fakeroot speedtest-cli
```

# Security Tools - Debian/Ubuntu/PopOS
```bash
apt install -y rkhunter lynis chkrootkit clamav clamav-daemon 

# Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh && rm get-docker.sh
```

# Apt Cleanup
```bash
du -sch /var/cache/apt/archives/ && sudo apt-get clean; du -sch /var/cache/apt/archives/
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

# Oh-my-zsh
```bash
apt-get install -y zsh git && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
```

# Python
Python 3.x
```bash
apt install -y python python3-pip && pip3 install --user pipenv && pip3 install virtualenv && curl https://pyenv.run | bash

# NVM
With curl:
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
With bash:
```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

# Micro
```bash
(curl https://getmic.ro | bash) && install ./micro /usr/bin && rm ./micro
```

# Btop
```bash
cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-x86_64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && sudo sh install.sh && sudo sh setuid.sh
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

