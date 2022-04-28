# oneline
Frequently used one-liners in real life.

# Basic Tools - Debian/Ubuntu/PopOS
```bash
apt install -y git wget curl nano net-tools iotop htop unzip sudo mtr sshpass autossh screen tmux openssl sqlite3 rsync rclone gnupg jq tcpdump nload telnet socat pv ethtool procps strace hping3 uuid-runtime iputils-ping fakeroot speedtest-cli
```

# Security Tools - Debian/Ubuntu/PopOS
```bash
apt install -y rkhunter lynis chkrootkit clamav clamav-daemon 
```

# Docker
```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh && rm get-docker.sh
```

# Apt Cleanup
```bash
du -sch /var/cache/apt/archives/ && sudo apt-get clean; du -sch /var/cache/apt/archives/
```

# Docker-Compose
```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose && docker-compose
```

# Docker-Compose ARM 32v7 (RPi 3)
```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-armv7" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/
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

# Tmate
```bash
apt install -y sudo wget; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-amd64.tar.xz" -O tmate.tar.xz && tar -xf tmate.tar.xz && install ./tmate-$_version-static-linux-amd64/tmate /usr/bin
```

# Tmate ARM 32v7 (RPi 3)
```bash
apt install -y sudo wget; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-arm32v7.tar.xz" -O tmate.tar.xz && tar -xf tmate.tar.xz && install ./tmate-$_version-static-linux-arm32v7/tmate /usr/bin
```

# Python
Python 3.x
```bash
apt install -y python python3-pip && pip3 install --user pipenv && pip3 install virtualenv && curl https://pyenv.run | bash
```

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

# Upterm
```bash
_owner="owenthereal" && _repo="upterm" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); sudo curl -L "https://github.com/$_owner/$_repo/releases/download/$_version/upterm_linux_amd64.tar.gz" -o /tmp/upterm.tar.gz && tar -xf /tmp/upterm.tar.gz && sudo install /tmp/upterm /usr/bin/upterm 
```

# Btop
```bash
apt install -y make sudo; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-x86_64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && sudo sh install.sh && sudo sh setuid.sh
```

# Google Cloud SQL Proxy
```
cd $(mktemp -d) && wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && install ./cloud_sql_proxy /usr/bin
```

# VirtualBox Guest Additions
1. Insert the CD image
2. Enter:
```bash
sudo mkdir -p /dev/cdrom && sudo mount /dev/cdrom /mnt && sudo apt update -y && sudo apt upgrade -y && apt install dkms linux-headers-$(uname -r) build-essential && sudo sh /mnt/VBoxLinuxAdditions.run && reboot
```
# Jabba
```
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
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

