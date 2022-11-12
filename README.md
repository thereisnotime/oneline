# oneline

Frequently used one-liners in real life.

## Basic Tools

Debian, Ubuntu, popOS:

```bash
apt install -y git wget curl nano net-tools iotop htop unzip sudo mtr sshpass autossh screen tmux openssl sqlite3 rsync rclone gnupg jq tcpdump nload telnet socat pv ethtool procps strace hping3 uuid-runtime iputils-ping fakeroot speedtest-cli
```

## Security Tools

Debian, Ubuntu, popOS:

```bash
apt install -y rkhunter lynis chkrootkit clamav clamav-daemon 
```

## Docker

```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh && rm get-docker.sh
```

## Apt Cleanup

```bash
du -sch /var/cache/apt/archives/ && sudo apt-get clean; du -sch /var/cache/apt/archives/
```

## Docker-Compose

```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose && docker-compose
```

## Docker-Compose ARM 32v7 (RPi 3)

```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-armv7" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/
```

## Oh-my-bash

With curl:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

With wget:

```bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
```

## Oh-my-zsh

```bash
apt-get install -y zsh git && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
```

## Tmate

```bash
apt install -y sudo wget; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-amd64.tar.xz" -O tmate.tar.xz && tar -xf tmate.tar.xz && install ./tmate-$_version-static-linux-amd64/tmate /usr/bin
```

## Tmate ARM 32v7 (RPi 3)

```bash
apt install -y sudo wget; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-arm32v7.tar.xz" -O tmate.tar.xz && tar -xf tmate.tar.xz && install ./tmate-$_version-static-linux-arm32v7/tmate /usr/bin
```

## Python

Python 3.x

```bash
apt install -y python python3-pip && pip3 install --user pipenv && pip3 install virtualenv && curl https://pyenv.run | bash
```

## Kubeseal

Latest kubeseal binary:

```bash
cd $(mktemp -d) && _owner="bitnami-labs" && _repo="sealed-secrets" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/kubeseal-$_version_no_v-linux-amd64.tar.gz" && tar -xvzf "kubeseal-$_version_no_v-linux-amd64.tar.gz" kubeseal && sudo install -m 755 kubeseal /usr/local/bin/kubeseal
```

## NVM

With curl:

```bash
cd $(mktemp -d) && _version=$(curl --silent "https://github.com/nvm-sh/nvm/releases" | grep -Po '<a href="\/nvm-sh\/nvm\/v([^"]+)' | head -n 1 | grep -Po 'v\K.*'); curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v$_version/install.sh | bash
```

With bash:

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## Micro

```bash
(curl https://getmic.ro | bash) && install ./micro /usr/bin && rm ./micro
```

## Upterm

```bash
_owner="owenthereal" && _repo="upterm" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); sudo curl -L "https://github.com/$_owner/$_repo/releases/download/$_version/upterm_linux_amd64.tar.gz" -o /tmp/upterm.tar.gz && tar -xf /tmp/upterm.tar.gz && sudo install /tmp/upterm /usr/bin/upterm 
```

## Btop

```bash
apt install -y make sudo; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-x86_64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && sudo sh install.sh && sudo sh setuid.sh
```

## Google Cloud SQL Proxy

```bash
cd $(mktemp -d) && wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && install ./cloud_sql_proxy /usr/bin
```

## VirtualBox Guest Additions

1. Insert the CD image
2. Enter:

```bash
sudo mkdir -p /dev/cdrom && sudo mount /dev/cdrom /mnt && sudo apt update -y && sudo apt upgrade -y && apt install dkms linux-headers-$(uname -r) build-essential && sudo sh /mnt/VBoxLinuxAdditions.run && reboot
```

## Jabba

```bash
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
```

## Simple Python web server

Python 2.x

```bash
python -m SimpleHTTPServer 8000
```

Python 3.x

```bash
python -m http.server 8000
```

## Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Kubeseal

```bash
brew install kubeseal
```

## Kubectl


```bash
brew install kubectl
```

## K9s


```bash
curl -sS https://webinstall.dev/k9s | bash
```

## Kubecolor

```bash
curl -s https://raw.githubusercontent.com/dty1er/kubecolor/master/scripts/install.sh | bash
```

## GCloud CLI

```bash
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-405.0.0-linux-x86_64.tar.gz
```

## AWS CLI

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## RustDesk

Debian, Ubuntu, popOS:

```bash
wget https://github.com/rustdesk/rustdesk/releases/download/1.1.8/rustdesk-1.1.8.deb
sudo apt install ./rustdesk-1.1.8.deb -y 
```

Fedora, CentOS, RHEL:

```bash
cd $(mktemp -d) && _owner="rustdesk" && _repo="rustdesk" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/rustdesk-$_version_no_v-fedora28-centos8.rpm" && sudo rpm -i --force "rustdesk-$_version_no_v-fedora28-centos8.rpm"
```

## Anydesk

Ubuntu, Debian, PopOS:

```bash
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update -y
apt install anydesk -y
```

Fedora, CentOS, RHEL:

```bash
sudo tee /etc/yum.repos.d/AnyDesk-Fedora.repo <<EOF
[anydesk]
name=AnyDesk Fedora - stable
baseurl=http://rpm.anydesk.com/fedora/x86_64/
gpgcheck=0
repo_gpgcheck=0
gpgkey=https://keys.anydesk.com/repos/RPM-GPG-KEY
EOF
sudo dnf -y makecache
sudo dnf install -y redhat-lsb-core anydesk
```

If you get an error message “nothing provides libpangox-1.0.so.0()(64bit) needed by anydesk-xxxxx.x86_64” then run:

```bash
sudo dnf --releasever=32 install pangox-compat.x86_64
sudo dnf install -y anydesk
```

## TeamViewer

Debian, Ubuntu, PopOS:

```bash
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y ./teamviewer_amd64.deb
```

Fedora, CentOS, RHEL:

```bash
wget https://download.teamviewer.com/download/linux/teamviewer.x86_64.rpm
sudo dnf -y install ./teamviewer.x86_64.rpm
```

## AzureCLI

Debian, Ubuntu, PopOS:

```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

Fedora, CentOS, RHEL:

```bash
sudo dnf install -y azure-cli
```

## VirtualBox

Debian, Ubuntu, PopOS:

```bash
sudo apt install -y virtualbox
```

Fedora, CentOS, RHEL:
Dependencies:
Fedora 36:

```bash
sudo dnf -y install @development-tools
sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras
```

VirtualBox:

```bash
sudo dnf install -y VirtualBox
```

## asdf

```bash
brew install asdf
```

## Lens

```bash
brew cask install lens
```

## Helm

```bash
 curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
 chmod 700 get_helm.sh
 ./get_helm.sh
```

## VSCode

Debian, Ubuntu, PopOS:

```bash
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install -y apt-transport-https
sudo apt update -y
sudo apt install -y code
```

Fedora, CentOS, RHEL:

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install -y code
```

## Bitwarden CLI

```bash
cd $(mktemp -d) && _repo="cli" && _owner="bitwarden" && _version=$(curl --silent https://api.github.com/repos/$_owner/$_repo/releases/latest | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo "$_version" | sed 's/v//g'); curl -L "https://github.com/$_owner/$_repo/releases/download/$_version/bw-linux-$_version_no_v.zip" -o "bw-linux-$_version_no_v.zip" && unzip "bw-linux-$_version_no_v.zip" && sudo install bw /usr/local/bin/ && bw --version
```

## Bitwarden

Debian, Ubuntu, PopOS:

```bash
cd $(mktemp -d) && _repo="clients" && _owner="bitwarden" && _tag=$(curl -s https://github.com/$_owner/$_repo/tags | grep -oP 'href="\K[^"]*' | grep -oP 'desktop-v\d+\.\d+\.\d+' | head -n 1); _version=$(echo $_tag | cut -d'-' -f2 | grep -oP '\d+\.\d+\.\d+') && curl -L "https://github.com/$_owner/$_repo/releases/download/$_tag/Bitwarden-$_version-amd64.deb" -o "Bitwarden.deb" && sudo dpkg -i Bitwarden.deb
```

Fedora, CentOS, RHEL:

```cd $(mktemp -d) && _repo="clients" && _owner="bitwarden" && _tag=$(curl -s https://github.com/$_owner/$_repo/tags | grep -oP 'href="\K[^"]*' | grep -oP 'desktop-v\d+\.\d+\.\d+' | head -n 1); _version=$(echo $_tag | cut -d'-' -f2 | grep -oP '\d+\.\d+\.\d+') && curl -L "https://github.com/$_owner/$_repo/releases/download/$_tag/Bitwarden-$_version-amd64.rpm" -o "Bitwarden.deb" && sudo dpkg -i Bitwarden.rpm
```

## 1Password

Debian, Ubuntu, PopOS:

```bash
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
sudo apt update -y && sudo apt install -y 1password
```

Fedora, CentOS, RHEL:

```bash
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install -y 1password
```

## KeePassXC

Debian, Ubuntu, PopOS:

```bash
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update -y && sudo apt install -y keepassxc
```

Fedora, CentOS, RHEL:

```bash
sudo dnf install keepassxc -y
```

## Firefox

Debian, Ubuntu, PopOS:

```bash
sudo apt install firefox -y
```

Fedora, CentOS, RHEL:

```bash
sudo dnf install firefox -y
```

## Google Chrome

Debian, Ubuntu, PopOS:

```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

Fedora, CentOS, RHEL:

```bash
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install google-chrome-stable
```

## Microsoft Teams

Debian, Ubuntu, PopOS:

```bash
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'
sudo apt update -y
sudo apt install teams -y
```

Fedora, CentOS, RHEL:

```bash
sudo sh -c 'echo -e "[teams]\nname=teams\nbaseurl=https://packages.microsoft.com/yumrepos/ms-teams\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/teams.repo'
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf check-update
sudo dnf install teams -y
```

## Slack

```bash
brew install --cask slack
```

## Skype

Debian, Ubuntu, PopOS:

```bash
Debian, Ubuntu, PopOS:
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install -y ./skypeforlinux-64.deb
```

Fedora, CentOS, RHEL:

```bash
sudo curl -o /etc/yum.repos.d/skype-stable.repo https://repo.skype.com/rpm/stable/skype-stable.repo
sudo dnf install skypeforlinux -y
```

## Zoom

Debian, Ubuntu, PopOS:

```bash
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install -y ./zoom_amd64.deb
```

Fedora, CentOS, RHEL:

```bash
wget https://zoom.us/client/latest/zoom_x86_64.rpm
sudo dnf install -y zoom_x86_64.rpm
```

## Joplin

```bash
sudo wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
```

## Remove Snap and all its packages Debian, Ubuntu, PopOS:

```bash
sudo snap remove $(snap list | awk '{print $1}' | tail -n +2)
sudo apt remove --purge --assume-yes snapd gnome-software-plugin-snap
rm -rf ~/snap/
sudo rm -rf /var/cache/snapd/
sudo rm -rf /etc/apt/sources.list.d/snapd.list

```
