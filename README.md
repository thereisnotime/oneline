<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [oneline](#oneline)
  - [Table of Contents](#table-of-contents)
  - [Basic Tools](#basic-tools)
  - [Basic Desktop Tools](#basic-desktop-tools)
  - [Security Tools](#security-tools)
  - [OpenVPN](#openvpn)
  - [Fortigate](#fortigate)
  - [Docker](#docker)
  - [Docker arm64/aarch64](#docker-arm64aarch64)
  - [Apt Cleanup](#apt-cleanup)
  - [asdf](#asdf)
  - [Stern](#stern)
  - [Minikube](#minikube)
  - [Minikube arm64/aarch64](#minikube-arm64aarch64)
  - [Miniconda](#miniconda)
  - [Docker-Compose](#docker-compose)
  - [Docker-Compose ARM 32v7 (RPi 3)](#docker-compose-arm-32v7-rpi-3)
  - [Docker-Compose arm64/aarch64](#docker-compose-arm64aarch64)
  - [Kompose](#kompose)
  - [Oh-my-bash](#oh-my-bash)
  - [Scoop](#scoop)
  - [Powershell Core](#powershell-core)
  - [Oh-my-zsh](#oh-my-zsh)
  - [RC: Nano](#rc-nano)
  - [Tmate](#tmate)
  - [Tmate ARM 32v7 (RPi 3)](#tmate-arm-32v7-rpi-3)
  - [Python](#python)
  - [Kubeseal](#kubeseal)
  - [Gitpack](#gitpack)
  - [Flatpak](#flatpak)
    - [Flatpak - GNOME Software Center Plugin](#flatpak---gnome-software-center-plugin)
    - [Shift + Alt Language Switch on Gnome](#shift--alt-language-switch-on-gnome)
  - [NVM](#nvm)
  - [yq](#yq)
  - [Micro](#micro)
  - [Upterm](#upterm)
  - [Btop](#btop)
  - [Btop arm64](#btop-arm64)
  - [Google Cloud SQL Proxy](#google-cloud-sql-proxy)
  - [VirtualBox Sharing Folders](#virtualbox-sharing-folders)
  - [VirtualBox Guest Additions](#virtualbox-guest-additions)
    - [Option 1 - Mounting](#option-1---mounting)
    - [Option 2 - Script](#option-2---script)
    - [Option 3 - Vagrant](#option-3---vagrant)
  - [Jabba](#jabba)
  - [Simple Python web server](#simple-python-web-server)
  - [Brew](#brew)
  - [Kubectl](#kubectl)
  - [Nautilus - GNOME - Biased setup](#nautilus---gnome---biased-setup)
  - [Kubectl arm64/aarch64](#kubectl-arm64aarch64)
  - [eksctl](#eksctl)
  - [K9s](#k9s)
  - [K9s arm64/aarch64](#k9s-arm64aarch64)
  - [Cilium CLI](#cilium-cli)
  - [Hubble CLI](#hubble-cli)
  - [Krew](#krew)
  - [Flux2](#flux2)
  - [Kubecolor](#kubecolor)
  - [GCloud CLI](#gcloud-cli)
  - [AWS CLI](#aws-cli)
  - [RustDesk](#rustdesk)
  - [Anydesk](#anydesk)
  - [TeamViewer](#teamviewer)
  - [Github CLI](#github-cli)
  - [GitLab CLI](#gitlab-cli)
  - [AzureCLI](#azurecli)
  - [Generic User Software](#generic-user-software)
  - [VirtualBox](#virtualbox)
  - [Lens](#lens)
  - [TermShot](#termshot)
  - [Infisical CLI](#infisical-cli)
  - [Helm](#helm)
  - [Ansible](#ansible)
  - [Terraform](#terraform)
  - [Terraform-docs](#terraform-docs)
  - [Terraform-cloud-cli](#terraform-cloud-cli)
  - [Packer](#packer)
  - [Vagrant](#vagrant)
  - [Skaffold](#skaffold)
  - [Tilt and ctlptl](#tilt-and-ctlptl)
  - [Mongo Compass](#mongo-compass)
  - [Mongo Tools](#mongo-tools)
  - [Golang](#golang)
  - [tfsec](#tfsec)
  - [ArgoCD CLI - amd64](#argocd-cli---amd64)
  - [VSCode](#vscode)
  - [Bitwarden CLI](#bitwarden-cli)
  - [Optimize Gnome for Performance](#optimize-gnome-for-performance)
  - [Gnome Extension Manager](#gnome-extension-manager)
  - [Rambox](#rambox)
  - [Bitwarden](#bitwarden)
  - [1Password](#1password)
  - [DO CLI](#do-cli)
  - [Ghorg](#ghorg)
  - [Megatools](#megatools)
  - [git-crypt](#git-crypt)
  - [KeePassXC](#keepassxc)
  - [Azure Storage Explorer](#azure-storage-explorer)
  - [VMWare Workstation](#vmware-workstation)
  - [Dynmotd](#dynmotd)
  - [Firefox - no Snap](#firefox---no-snap)
  - [Google Chrome](#google-chrome)
  - [64Gram - Telegram Client](#64gram---telegram-client)
  - [Veracrypt](#veracrypt)
  - [Microsoft Teams](#microsoft-teams)
  - [Mattermost](#mattermost)
  - [Slack](#slack)
  - [Skype](#skype)
  - [Slackdump](#slackdump)
  - [Zoom](#zoom)
  - [Joplin](#joplin)
  - [Keybase](#keybase)
  - [VSCode Live Share can't sign in "fix"](#vscode-live-share-cant-sign-in-fix)
  - [xxToolbelt](#xxtoolbelt)
  - [Sniffnet](#sniffnet)
  - [Tempmail](#tempmail)
  - [Homebrew](#homebrew)
  - [Scrcpy](#scrcpy)
  - [apt-fast](#apt-fast)
  - [Remove Snap and all its packages](#remove-snap-and-all-its-packages)
  - [Switch from Wayland to X11 (Debian and GDM based)](#switch-from-wayland-to-x11-debian-and-gdm-based)
  - [Asdf Addons](#asdf-addons)
  - [K3s](#k3s)
    - [Setup k3s master](#setup-k3s-master)
    - [Setup k3s master without traefik](#setup-k3s-master-without-traefik)
    - [Get k3s join token](#get-k3s-join-token)
    - [Get k3s kubeconfig](#get-k3s-kubeconfig)
    - [Setup k3s node](#setup-k3s-node)
    - [Uninstall k3s master](#uninstall-k3s-master)
    - [Uninstall k3s node](#uninstall-k3s-node)
    - [Remove k3s Network and Storage Leftovers](#remove-k3s-network-and-storage-leftovers)
  - [Nextcloud](#nextcloud)
  - [Podman](#podman)
  - [OnlyOffice](#onlyoffice)
  - [LibreWolf](#librewolf)
  - [Ubuntu Codecs](#ubuntu-codecs)
  - [Tilix](#tilix)
  - [Teleport Client - tsh](#teleport-client---tsh)
  - [Pluto](#pluto)
  - [Setup TPM Unlock of LUKS](#setup-tpm-unlock-of-luks)
  - [OBS](#obs)
  - [Allow MFA Device in AppArmor](#allow-mfa-device-in-apparmor)
  - [Add FIDO MFA Support](#add-fido-mfa-support)
  - [Flatpak: User Software](#flatpak-user-software)
  - [Flatpak: Organization](#flatpak-organization)
  - [Flatpak: Media](#flatpak-media)
  - [Flatpak: Gaming](#flatpak-gaming)
  - [Flatpak: Messaging and Social](#flatpak-messaging-and-social)
  - [Flatpak: Development](#flatpak-development)
  - [Flatpak: System Tooling](#flatpak-system-tooling)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# oneline

Frequently used one-liners in real life for your copy-pasting needs.

## Table of Contents

- [oneline](#oneline)
  - [Table of Contents](#table-of-contents)
  - [Basic Tools](#basic-tools)
  - [Basic Desktop Tools](#basic-desktop-tools)
  - [Security Tools](#security-tools)
  - [OpenVPN](#openvpn)
  - [Fortigate](#fortigate)
  - [Docker](#docker)
  - [Docker arm64/aarch64](#docker-arm64aarch64)
  - [Apt Cleanup](#apt-cleanup)
  - [asdf](#asdf)
  - [Stern](#stern)
  - [Minikube](#minikube)
  - [Minikube arm64/aarch64](#minikube-arm64aarch64)
  - [Miniconda](#miniconda)
  - [Docker-Compose](#docker-compose)
  - [Docker-Compose ARM 32v7 (RPi 3)](#docker-compose-arm-32v7-rpi-3)
  - [Docker-Compose arm64/aarch64](#docker-compose-arm64aarch64)
  - [Kompose](#kompose)
  - [Oh-my-bash](#oh-my-bash)
  - [Scoop](#scoop)
  - [Powershell Core](#powershell-core)
  - [Oh-my-zsh](#oh-my-zsh)
  - [RC: Nano](#rc-nano)
  - [Tmate](#tmate)
  - [Tmate ARM 32v7 (RPi 3)](#tmate-arm-32v7-rpi-3)
  - [Python](#python)
  - [Kubeseal](#kubeseal)
  - [Gitpack](#gitpack)
  - [Flatpak](#flatpak)
    - [Flatpak - GNOME Software Center Plugin](#flatpak---gnome-software-center-plugin)
    - [Shift + Alt Language Switch on Gnome](#shift--alt-language-switch-on-gnome)
  - [NVM](#nvm)
  - [yq](#yq)
  - [Micro](#micro)
  - [Upterm](#upterm)
  - [Btop](#btop)
  - [Btop arm64](#btop-arm64)
  - [Google Cloud SQL Proxy](#google-cloud-sql-proxy)
  - [VirtualBox Sharing Folders](#virtualbox-sharing-folders)
  - [VirtualBox Guest Additions](#virtualbox-guest-additions)
    - [Option 1 - Mounting](#option-1---mounting)
    - [Option 2 - Script](#option-2---script)
    - [Option 3 - Vagrant](#option-3---vagrant)
  - [Jabba](#jabba)
  - [Simple Python web server](#simple-python-web-server)
  - [Brew](#brew)
  - [Kubectl](#kubectl)
  - [Nautilus - GNOME - Biased setup](#nautilus---gnome---biased-setup)
  - [Kubectl arm64/aarch64](#kubectl-arm64aarch64)
  - [eksctl](#eksctl)
  - [K9s](#k9s)
  - [K9s arm64/aarch64](#k9s-arm64aarch64)
  - [Cilium CLI](#cilium-cli)
  - [Hubble CLI](#hubble-cli)
  - [Krew](#krew)
  - [Flux2](#flux2)
  - [Kubecolor](#kubecolor)
  - [GCloud CLI](#gcloud-cli)
  - [AWS CLI](#aws-cli)
  - [RustDesk](#rustdesk)
  - [Anydesk](#anydesk)
  - [TeamViewer](#teamviewer)
  - [Github CLI](#github-cli)
  - [GitLab CLI](#gitlab-cli)
  - [AzureCLI](#azurecli)
  - [Generic User Software](#generic-user-software)
  - [VirtualBox](#virtualbox)
  - [Lens](#lens)
  - [TermShot](#termshot)
  - [Infisical CLI](#infisical-cli)
  - [Helm](#helm)
  - [Ansible](#ansible)
  - [Terraform](#terraform)
  - [Terraform-docs](#terraform-docs)
  - [Terraform-cloud-cli](#terraform-cloud-cli)
  - [Packer](#packer)
  - [Vagrant](#vagrant)
  - [Skaffold](#skaffold)
  - [Tilt and ctlptl](#tilt-and-ctlptl)
  - [Mongo Compass](#mongo-compass)
  - [Mongo Tools](#mongo-tools)
  - [Golang](#golang)
  - [tfsec](#tfsec)
  - [ArgoCD CLI - amd64](#argocd-cli---amd64)
  - [VSCode](#vscode)
  - [Bitwarden CLI](#bitwarden-cli)
  - [Optimize Gnome for Performance](#optimize-gnome-for-performance)
  - [Gnome Extension Manager](#gnome-extension-manager)
  - [Rambox](#rambox)
  - [Bitwarden](#bitwarden)
  - [1Password](#1password)
  - [DO CLI](#do-cli)
  - [Ghorg](#ghorg)
  - [Megatools](#megatools)
  - [git-crypt](#git-crypt)
  - [KeePassXC](#keepassxc)
  - [Azure Storage Explorer](#azure-storage-explorer)
  - [VMWare Workstation](#vmware-workstation)
  - [Dynmotd](#dynmotd)
  - [Firefox - no Snap](#firefox---no-snap)
  - [Google Chrome](#google-chrome)
  - [64Gram - Telegram Client](#64gram---telegram-client)
  - [Veracrypt](#veracrypt)
  - [Microsoft Teams](#microsoft-teams)
  - [Mattermost](#mattermost)
  - [Slack](#slack)
  - [Skype](#skype)
  - [Slackdump](#slackdump)
  - [Zoom](#zoom)
  - [Joplin](#joplin)
  - [Keybase](#keybase)
  - [VSCode Live Share can't sign in "fix"](#vscode-live-share-cant-sign-in-fix)
  - [xxToolbelt](#xxtoolbelt)
  - [Sniffnet](#sniffnet)
  - [Tempmail](#tempmail)
  - [Homebrew](#homebrew)
  - [Scrcpy](#scrcpy)
  - [apt-fast](#apt-fast)
  - [Remove Snap and all its packages](#remove-snap-and-all-its-packages)
  - [Switch from Wayland to X11 (Debian and GDM based)](#switch-from-wayland-to-x11-debian-and-gdm-based)
  - [Asdf Addons](#asdf-addons)
  - [K3s](#k3s)
    - [Setup k3s master](#setup-k3s-master)
    - [Setup k3s master without traefik](#setup-k3s-master-without-traefik)
    - [Get k3s join token](#get-k3s-join-token)
    - [Get k3s kubeconfig](#get-k3s-kubeconfig)
    - [Setup k3s node](#setup-k3s-node)
    - [Uninstall k3s master](#uninstall-k3s-master)
    - [Uninstall k3s node](#uninstall-k3s-node)
    - [Remove k3s Network and Storage Leftovers](#remove-k3s-network-and-storage-leftovers)
  - [Nextcloud](#nextcloud)
  - [Podman](#podman)
  - [OnlyOffice](#onlyoffice)
  - [LibreWolf](#librewolf)
  - [Ubuntu Codecs](#ubuntu-codecs)
  - [Tilix](#tilix)
  - [Teleport Client - tsh](#teleport-client---tsh)
  - [Pluto](#pluto)
  - [Setup TPM Unlock of LUKS](#setup-tpm-unlock-of-luks)
  - [OBS](#obs)
  - [Allow MFA Device in AppArmor](#allow-mfa-device-in-apparmor)
  - [Add FIDO MFA Support](#add-fido-mfa-support)
  - [Flatpak: User Software](#flatpak-user-software)
  - [Flatpak: Organization](#flatpak-organization)
  - [Flatpak: Media](#flatpak-media)
  - [Flatpak: Gaming](#flatpak-gaming)
  - [Flatpak: Messaging and Social](#flatpak-messaging-and-social)
  - [Flatpak: Development](#flatpak-development)
  - [Flatpak: System Tooling](#flatpak-system-tooling)

---

## Basic Tools

Debian, Ubuntu, popOS (as root):

```bash
apt install -y git wget curl nano net-tools iotop htop unzip sudo mtr sshpass autossh screen tmux openssl sqlite3 rsync rclone gnupg jq tcpdump nload telnet socat pv ethtool procps strace hping3 uuid-runtime iputils-ping fakeroot speedtest-cli fzf bash-completion lsd bat ripgrep fd-find xclip apt-transport-https software-properties-common 7zip p7zip-full p7zip-rar bzip2 easy-rsa ca-certificates gpg golang exfat-fuse exfatprogs nfs-common libfuse2t64
```

## Basic Desktop Tools

Debian, Ubuntu, popOS (as root):

```bash
apt install -y copyq flameshot vlc
```

## Security Tools

Debian, Ubuntu, popOS (as root):

```bash
apt install -y rkhunter lynis chkrootkit putty-tools clamav clamav-daemon
```

## OpenVPN

Debian, Ubuntu, popOS (as user):

```bash
sudo apt-get install -y openvpn easy-rsa network-manager-openvpn && sudo systemctl restart NetworkManager
```

## Fortigate

Debian, Ubuntu, popOS (as user):

```bash
cd /tmp && curl https://filestore.fortinet.com/forticlient/forticlient_vpn_7.0.7.0246_amd64.deb -o forticlient.deb && sudo dpkg -i forticlient.deb && sudo apt-get install -f -y && rm -rf ./forticlient.deb
```

## Docker

Debian, Ubuntu, popOS (as user):

```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh && rm get-docker.sh && sudo usermod -aG docker $USER && newgrp docker && docker info
```

Linux Mint 22 (as user):

```bash
sudo apt update && sudo apt install -y apt-transport-https ca-certificates curl gnupg && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu noble stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && sudo usermod -aG docker ${USER}
```

## Docker arm64/aarch64

Debian, Ubuntu (as user):

```bash
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh && sudo usermod -aG docker "$USER" && sudo systemctl enable docker && sudo systemctl start docker
```

## Apt Cleanup

Debian, Ubuntu (as user):

```bash
du -sch /var/cache/apt/archives/ && sudo apt-get clean && du -sch /var/cache/apt/archives/ && sudo apt-get autoremove --purge -y && sudo rm -rf /tmp/*
```

## asdf

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="asdf-vm" && _repo="asdf" && _version="v0.16.5" && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/asdf-$_version-linux-amd64.tar.gz" && tar -xvzf "asdf-$_version-linux-amd64.tar.gz" asdf && sudo install -m 755 asdf /usr/local/bin/asdf
```

Add shell completions and paths to your rc file (as user):

```bash
echo 'export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"' >> ~/.bashrc && echo '. <(asdf completion bash)' >> ~/.bashrc && source ~/.bashrc
```

## Stern

Via asdf (as user):

```bash
asdf plugin-add stern && asdf install stern latest && asdf global stern latest
```

## Minikube

Debian, Ubuntu (as user):

```bash
cd $(mktemp -d) && curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb && sudo dpkg -i minikube_latest_amd64.deb
```

## Minikube arm64/aarch64

Linux arm64 (as user):

```bash
cd $(mktemp -d) && curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64 && sudo install minikube-linux-arm64 /usr/local/bin/minikube && rm minikube-linux-arm64
```

## Miniconda

Debian, Ubuntu (as user):

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/Miniconda.sh && bash /tmp/Miniconda.sh
```

## Docker-Compose

Linux x86_64 (as root):

```bash
apt install -y sudo curl && cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && docker-compose --version
```

## Docker-Compose ARM 32v7 (RPi 3)

Linux armv7 (as root):

```bash
apt install -y sudo curl && cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-armv7" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && docker-compose --version
```

## Docker-Compose arm64/aarch64

Linux arm64 (as root):

```bash
apt install -y sudo curl && cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-aarch64" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose && docker-compose --version
```

## Kompose

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _v=$(curl -s "https://api.github.com/repos/kubernetes/kompose/releases/latest" | grep html_url.*tag | grep -o 'v[0-9.]\+') && curl -L "https://github.com/kubernetes/kompose/releases/download/$_v/kompose-linux-amd64" -o kompose && chmod +x kompose && sudo mv ./kompose /usr/local/bin/kompose
```

## Oh-my-bash

With curl (as user):

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

With wget (as user):

```bash
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
```

Tweaks (as user):

```bash
sed -i 's/font/90210/g' "$HOME/.bashrc" && echo "DISABLE_UPDATE_PROMPT=true" >> "$HOME/.bashrc"
```

## Scoop

Windows 10/11 (as user):

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

## Powershell Core

Debian, Ubuntu, PopOS (as user):

```bash
sudo apt-get update && sudo apt-get install -y wget apt-transport-https software-properties-common && source /etc/os-release && wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb && sudo dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb && sudo apt-get update && sudo apt-get install -y powershell
```

## Oh-my-zsh

Debian, Ubuntu (as root):

```bash
apt-get install -y zsh git && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
```

## RC: Nano

Any Linux (as user):

```bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
```

## Tmate

Linux x86_64 (as root):

```bash
apt install -y curl && cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && curl --silent -L "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-amd64.tar.xz" -o tmate.tar.xz && tar -xvf tmate.tar.xz && install ./tmate-$_version-static-linux-amd64/tmate /usr/bin
```

## Tmate ARM 32v7 (RPi 3)

Linux armv7 (as root):

```bash
apt install -y sudo wget curl && cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && wget "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-arm32v7.tar.xz" -O tmate.tar.xz && tar -xf tmate.tar.xz && install ./tmate-$_version-static-linux-arm32v7/tmate /usr/bin
```

## Python

Debian, Ubuntu (as root):

```bash
apt install -y python3 python3-pip && pip3 install --user pipenv virtualenv && curl https://pyenv.run | bash
```

## Kubeseal

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="bitnami-labs" && _repo="sealed-secrets" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/kubeseal-$_version_no_v-linux-amd64.tar.gz" && tar -xvzf "kubeseal-$_version_no_v-linux-amd64.tar.gz" kubeseal && sudo install -m 755 kubeseal /usr/local/bin/kubeseal
```

Via Homebrew (as user):

```bash
brew install kubeseal
```

## Gitpack

Local (user) installation (as user):

```bash
wget -qO- https://raw.githubusercontent.com/dominiksalvet/gitpack/master/.install/initl.sh | sh
```

Global (system) installation (as root):

```bash
wget -qO- https://raw.githubusercontent.com/dominiksalvet/gitpack/master/.install/initg.sh | sh
```

## Flatpak

Debian, Ubuntu (as user):

```bash
sudo apt install flatpak -y && flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && flatpak install -y com.github.tchx84.Flatseal ca.desrt.dconf-editor io.github.giantpinkrobots.flatsweep io.github.flattool.Warehouse
```

### Flatpak - GNOME Software Center Plugin

Debian, Ubuntu (as user):

```bash
sudo apt-get install -y gnome-software-plugin-flatpak
```

### Shift + Alt Language Switch on Gnome

GNOME (as user):

```bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']" && gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
```

## NVM

With curl (as user):

```bash
cd $(mktemp -d) && _version=$(curl --silent "https://github.com/nvm-sh/nvm/releases" | grep -Po '<a href="\/nvm-sh\/nvm\/v([^"]+)' | head -n 1 | grep -Po 'v\K.*') && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v$_version/install.sh | bash
```

With wget (as user):

```bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

## yq

Linux x86_64 (as user):

```bash
_owner="mikefarah" && _repo="yq" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && sudo curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/yq_linux_amd64" -o /tmp/yq && sudo install /tmp/yq /usr/bin/yq
```

## Micro

Linux (as user):

```bash
cd $(mktemp -d) && curl https://getmic.ro | bash && sudo install ./micro /usr/bin && rm ./micro
```

## Upterm

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="owenthereal" && _repo="upterm" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/upterm_linux_amd64.tar.gz" -o upterm.tar.gz && tar -xf upterm.tar.gz && sudo install ./upterm /usr/bin/upterm
```

## Btop

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-x86_64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && cd btop && sudo sh install.sh && sudo sh setuid.sh
```

## Btop arm64

Linux arm64 (as user):

```bash
cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-aarch64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && cd btop && sudo sh install.sh && sudo sh setuid.sh
```

## Google Cloud SQL Proxy

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && sudo install ./cloud_sql_proxy /usr/bin
```

## VirtualBox Sharing Folders

Any Linux (as user):

```bash
sudo adduser $USER vboxsf
```

## VirtualBox Guest Additions

### Option 1 - Mounting

Insert the CD image, then run (as user):

```bash
sudo mkdir -p /dev/cdrom && sudo mount /dev/cdrom /mnt && sudo apt update -y && sudo apt upgrade -y && sudo apt install -y dkms linux-headers-$(uname -r) build-essential && sudo sh /mnt/VBoxLinuxAdditions.run && sudo reboot
```

### Option 2 - Script

Debian, Ubuntu (as user):

```bash
sudo apt install -y virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils
```

### Option 3 - Vagrant

If using Vagrant (as user):

```bash
vagrant plugin install vagrant-vbguest && vagrant up && vagrant vbguest
```

## Jabba

Any Linux (as user):

```bash
curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
```

## Simple Python web server

Python 2.x (as user):

```bash
python -m SimpleHTTPServer 8000
```

Python 3.x (as user):

```bash
python3 -m http.server 8000
```

## Brew

Linux/macOS (as user):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Kubectl

Debian, Ubuntu (as user):

```bash
sudo apt-get update && sudo apt-get install -y apt-transport-https ca-certificates curl && curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg && echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list && sudo apt-get update && sudo apt-get install -y kubectl
```

Via Homebrew (as user):

```bash
brew install kubectl
```

## Nautilus - GNOME - Biased setup

Debian, Ubuntu, PopOS (as user):

```bash
# NOTE: Tested on GNOME nautilus 42.6
sudo apt install -y libnautilus-extension1a git python3-requests python3-nautilus python3-gi nautilus-actions
mkdir -p ~/.local/share/nautilus-python/extensions
sudo apt install -y nautilus-image-converter nautilus-script-audio-convert nautilus-gtkhash nautilus-wipe nautilus-extension-gnome-terminal nautilus-admin nautilus-nextcloud
sudo apt install -y python3-psutil python3-pip libglib2.0-bin dconf-editor
sudo pip3 install nautilus-terminal
sudo nautilus-terminal --install-system
_temp_dir=$(mktemp -d) && cd "$_temp_dir" && git clone https://github.com/bassmanitram/actions-for-nautilus.git && cd actions-for-nautilus && sudo apt-get install -y xclip && make install && cd /tmp && rm -rf "$_temp_dir"
```

## Kubectl arm64/aarch64

Linux arm64 (as user):

```bash
cd $(mktemp -d) && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl" && sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && rm -rf ./kubectl
```

## eksctl

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && ARCH=amd64 && PLATFORM=$(uname -s)_$ARCH && curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz" && curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check && tar -xzf eksctl_$PLATFORM.tar.gz && sudo mv eksctl /usr/local/bin
```

## K9s

Linux x86_64 (as user):

```bash
curl -sS https://webinstall.dev/k9s | bash
```

## K9s arm64/aarch64

Linux arm64 (as user):

```bash
cd $(mktemp -d) && _owner="derailed" && _repo="k9s" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/k9s_Linux_arm64.tar.gz" && tar -xvzf k9s_Linux_arm64.tar.gz && sudo install -m 755 k9s /usr/local/bin/k9s
```

## Cilium CLI

Linux (as user):

```bash
cd $(mktemp -d) && CILIUM_CLI_VERSION=$(curl -s https://raw.githubusercontent.com/cilium/cilium-cli/main/stable.txt) && GOOS=$(go env GOOS) && GOARCH=$(go env GOARCH) && curl -L --remote-name-all https://github.com/cilium/cilium-cli/releases/download/${CILIUM_CLI_VERSION}/cilium-${GOOS}-${GOARCH}.tar.gz{,.sha256sum} && sha256sum --check cilium-${GOOS}-${GOARCH}.tar.gz.sha256sum && sudo tar -C /usr/local/bin -xzvf cilium-${GOOS}-${GOARCH}.tar.gz && rm cilium-${GOOS}-${GOARCH}.tar.gz{,.sha256sum}
```

## Hubble CLI

Linux (as user):

```bash
cd $(mktemp -d) && HUBBLE_VERSION=$(curl -s https://raw.githubusercontent.com/cilium/hubble/master/stable.txt) && HUBBLE_ARCH=amd64 && if [ "$(uname -m)" = "aarch64" ]; then HUBBLE_ARCH=arm64; fi && curl -L --fail --remote-name-all https://github.com/cilium/hubble/releases/download/$HUBBLE_VERSION/hubble-linux-${HUBBLE_ARCH}.tar.gz{,.sha256sum} && sha256sum --check hubble-linux-${HUBBLE_ARCH}.tar.gz.sha256sum && sudo tar xzvfC hubble-linux-${HUBBLE_ARCH}.tar.gz /usr/local/bin && rm hubble-linux-${HUBBLE_ARCH}.tar.gz{,.sha256sum}
```

## Krew

Linux (as user):

```bash
(set -x; cd "$(mktemp -d)" && OS="$(uname | tr '[:upper:]' '[:lower:]')" && ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" && KREW="krew-${OS}_${ARCH}" && curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" && tar zxvf "${KREW}.tar.gz" && ./"${KREW}" install krew)
```

Add to your rc file (as user):

```bash
grep -qxF 'export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' ~/.bashrc || echo 'export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
```

Plugins (as user):

```bash
kubectl krew install access-matrix kurt popeye datree view-allocations view-utilization whoami unlimited topology count df-pv sick-pods advise-policy advise-psp cilium clog browse-pvc blame bd-xray apparmor-manager community-images cost ctx crane ctr datadog debug-pdb doctor dumpy explore gadget mtail graph history images janitor klock konfig kopilot ktop kubescape kubesec-scan kuota-calc kyverno lineage marvin mtail node-admin node-logs node-restart node-shell nodegizmo ns oomd open-svc openebs outdated permissions pexec plogs pod-dive pod-inspect pod-lens pod-logs pod-shell podevents pods-on pv-migrate pvmigrate psp-util prune-unused print-env rbac-view rbac-lookup rbac-tool reap relay rename-pvc rm-standalone-pods score service-tree shovel sniff spy ssh-jump starboard status stern strace tail unused-volumes vela virt viewnode warp who-can windows-debug deprecations get-all kor
```

## Flux2

Via asdf (as user):

```bash
asdf plugin add flux2 https://github.com/tablexi/asdf-flux2.git && asdf install flux2 latest && asdf set -u flux2 latest
```

## Kubecolor

Any Linux with Go (as user):

```bash
go install github.com/kubecolor/kubecolor@latest
```

## GCloud CLI

Any Linux (as user):

```bash
curl https://sdk.cloud.google.com | bash
```

Debian, Ubuntu (as user):

```bash
sudo apt-get install -y apt-transport-https ca-certificates gnupg && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && sudo apt-get update && sudo apt-get install -y google-cloud-cli
```

## AWS CLI

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install
```

Debian, Ubuntu (as root):

```bash
apt-get install -y awscli
```

## RustDesk

Debian, Ubuntu, popOS (as user):

```bash
cd $(mktemp -d) && _owner="rustdesk" && _repo="rustdesk" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/rustdesk-$_version-x86_64.deb" -o rustdesk.deb && sudo dpkg -i rustdesk.deb && sudo apt-get -f install -y
```

Fedora, CentOS, RHEL (as user):

```bash
sudo yum -y install gcc-c++ git curl wget nasm yasm gcc gtk3-devel clang libxcb-devel libxdo-devel libXfixes-devel pulseaudio-libs-devel cmake alsa-lib-devel && cd $(mktemp -d) && _owner="rustdesk" && _repo="rustdesk" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/rustdesk-$_version_no_v-fedora28-centos8.rpm" && sudo rpm -i --force "rustdesk-$_version_no_v-fedora28-centos8.rpm"
```

## Anydesk

Ubuntu, Debian, PopOS (as root):

```bash
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add - && echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list && apt update -y && apt install anydesk -y
```

Fedora, CentOS, RHEL (as user):

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

If you get an error message "nothing provides libpangox-1.0.so.0()(64bit) needed by anydesk-xxxxx.x86_64" then run (as user):

```bash
sudo dnf --releasever=32 install pangox-compat.x86_64 && sudo dnf install -y anydesk
```

## TeamViewer

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O teamviewer_amd64.deb && sudo dpkg -i teamviewer_amd64.deb && sudo apt-get -f install -y
```

Fedora, CentOS, RHEL (as user):

```bash
cd $(mktemp -d) && wget https://download.teamviewer.com/download/linux/teamviewer.x86_64.rpm && sudo dnf -y install ./teamviewer.x86_64.rpm
```

## Github CLI

Debian, Ubuntu (as user):

```bash
type -p curl >/dev/null || sudo apt install curl -y && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null && sudo apt update && sudo apt install gh -y
```

## GitLab CLI

Debian, Ubuntu x64 (as user):

```bash
cd $(mktemp -d) && API_ENDPOINT="https://gitlab.com/api/v4/projects" && PROJECT_ID="gitlab-org%2Fcli" && LATEST_RELEASE=$(curl --silent "${API_ENDPOINT}/${PROJECT_ID}/releases" | jq -r '.[0].tag_name') && LATEST_RELEASE_NO_V=$(echo "$LATEST_RELEASE" | sed 's/v//') && wget "https://gitlab.com/gitlab-org/cli/-/releases/${LATEST_RELEASE}/downloads/glab_${LATEST_RELEASE_NO_V}_Linux_x86_64.deb" -O glab.deb && sudo dpkg -i glab.deb
```

## AzureCLI

Debian, Ubuntu, PopOS (as user):

```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

Fedora, CentOS, RHEL (as user):

```bash
sudo dnf install -y azure-cli
```

## Generic User Software

Debian, Ubuntu, PopOS (as user):

```bash
sudo apt-get install -y qbittorrent vlc remmina remmina-plugin-rdp remmina-plugin-secret remmina-plugin-vnc remmina-plugin-exec remmina-plugin-python remmina-plugin-www
```

## VirtualBox

Debian, Ubuntu, PopOS (as user):

```bash
sudo apt install -y virtualbox
```

Fedora, CentOS, RHEL (as user):

```bash
sudo dnf -y install @development-tools kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras && sudo dnf install -y VirtualBox
```

## Lens

Debian, Ubuntu (as user):

```bash
curl -fsSL https://downloads.k8slens.dev/keys/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/lens-archive-keyring.gpg > /dev/null && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/lens-archive-keyring.gpg] https://downloads.k8slens.dev/apt/debian stable main" | sudo tee /etc/apt/sources.list.d/lens.list > /dev/null && sudo apt update && sudo apt install -y lens
```

OpenLens (as user):

```bash
cd $(mktemp -d) && _owner="MuhammedKalkan" && _repo="OpenLens" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/OpenLens-$_version_no_v.amd64.deb" && sudo apt install -y "./OpenLens-$_version_no_v.amd64.deb"
```

Via Homebrew (as user):

```bash
brew install --cask lens
```

## TermShot

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="homeport" && _repo="termshot" && _version=$(curl -s "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _url="https://github.com/$_owner/$_repo/releases/download/$_version/termshot_${_version#v}_linux_amd64.tar.gz" && wget -q "$_url" && tar -xzf termshot_*_linux_amd64.tar.gz && sudo install -m 0755 termshot /usr/local/bin/termshot && termshot --version
```

## Infisical CLI

Debian, Ubuntu (as user):

```bash
curl -1sLf 'https://dl.cloudsmith.io/public/infisical/infisical-cli/setup.deb.sh' | sudo -E bash && sudo apt-get update && sudo apt-get install -y infisical
```

## Helm

Linux (as user):

```bash
cd $(mktemp -d) && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && chmod 700 get_helm.sh && ./get_helm.sh
```

## Ansible

Debian, Ubuntu (as user):

```bash
sudo apt-add-repository ppa:ansible/ansible -y && sudo apt-get update && sudo apt-get install ansible -y
```

## Terraform

Debian, Ubuntu (as user):

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common && wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list && sudo apt update && sudo apt-get install -y terraform
```

## Terraform-docs

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/v0.17.0/terraform-docs-v0.17.0-$(uname)-amd64.tar.gz && tar -xzf terraform-docs.tar.gz && chmod +x terraform-docs && sudo mv terraform-docs /usr/local/bin/
```

## Terraform-cloud-cli

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="bendrucker" && _repo="terraform-cloud-cli" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/terraform-cloud-cli_${_version_no_v}_linux_amd64.tar.gz" -O tfcloudcli.tar.gz && tar -xf tfcloudcli.tar.gz && sudo install ./terraform-cloud /usr/bin
```

## Packer

Debian, Ubuntu (same keys as Terraform, as root):

```bash
apt-get install -y packer
```

## Vagrant

Debian, Ubuntu (same keys as Terraform, as root):

```bash
apt-get install -y vagrant
```

Vagrant Plugins (as user):

```bash
vagrant plugin install vagrant-vbguest vagrant-disksize
```

## Skaffold

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && sudo install skaffold /usr/local/bin/
```

## Tilt and ctlptl

ctlptl (as user):

```bash
cd $(mktemp -d) && _owner="tilt-dev" && _repo="ctlptl" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/ctlptl.${_version_no_v}.linux.x86_64.tar.gz" -O ctlptl.tar.gz && tar -xf ctlptl.tar.gz && sudo install ./ctlptl /usr/bin
```

Tilt - Debian, Ubuntu, PopOS (as user):

```bash
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
```

Tilt - Windows 10/11 (as user):

```powershell
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.ps1'))
```

## Mongo Compass

Fedora, CentOS, RHEL (as user):

```bash
cd $(mktemp -d) && _owner="mongodb-js" && _repo="compass" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/mongodb-compass-isolated-${_version_no_v}.x86_64.rpm" -O mongo.rpm && sudo dnf install -y mongo.rpm
```

## Mongo Tools

Debian, Ubuntu (as user):

```bash
cd $(mktemp -d) && curl https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.8.0.deb -o mongo-tools.deb && sudo dpkg -i mongo-tools.deb
```

## Golang

Debian, Ubuntu (as root):

```bash
apt-get install -y golang
```

Update Golang (as user):

```bash
cd $(mktemp -d) && _version=$(curl -s https://go.dev/dl/ | grep "linux-amd64.tar.gz" | head -n1 | cut -d/ -f3 | cut -d\" -f1) && wget "https://go.dev/dl/$_version" && sudo rm -rf /usr/local/go && sudo rm -rf /usr/bin/go && sudo tar -C /usr/local -xzf "$_version" && sudo ln -s /usr/local/go/bin/go /usr/bin/go
```

## tfsec

Any Linux with Go (as user):

```bash
go install github.com/aquasecurity/tfsec/cmd/tfsec@latest
```

## ArgoCD CLI - amd64

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _repo="argo-cd" && _owner="argoproj" && _version=$(curl --silent https://api.github.com/repos/$_owner/$_repo/releases/latest | grep -Po '"tag_name": "\K.*?(?=")') && curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/argocd-linux-amd64" -o "argocd" && sudo install argocd /usr/local/bin/ && argocd version
```

## VSCode

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && sudo apt-get install -y wget gpg && wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg && sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg && sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' && sudo apt install -y apt-transport-https && sudo apt update -y && sudo apt install -y code
```

Fedora, CentOS, RHEL (as user):

```bash
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && dnf check-update; sudo dnf install -y code
```

## Bitwarden CLI

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _repo="cli" && _owner="bitwarden" && _version=$(curl --silent https://api.github.com/repos/$_owner/$_repo/releases/latest | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo "$_version" | sed 's/v//g') && curl -L "https://github.com/$_owner/$_repo/releases/download/$_version/bw-linux-$_version_no_v.zip" -o "bw-linux-$_version_no_v.zip" && unzip "bw-linux-$_version_no_v.zip" && sudo install bw /usr/local/bin/ && bw --version
```

## Optimize Gnome for Performance

Debian, Ubuntu, PopOS (as user):

```bash
gsettings set org.gnome.desktop.interface enable-animations false
```

## Gnome Extension Manager

Debian, Ubuntu, PopOS (as user):

```bash
sudo apt install gnome-shell-extensions gnome-shell-extension-manager -y
```

## Rambox

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && _owner="ramboxapp" && _repo="download" && _tag=$(curl -s https://api.github.com/repos/$_owner/$_repo/releases/latest | jq -r '.tag_name') && _ver="${_tag#v}" && curl -sL "https://github.com/$_owner/$_repo/releases/download/$_tag/Rambox-${_ver}-linux-x64.deb" -o Rambox.deb && sudo dpkg -i Rambox.deb
```

## Bitwarden

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && _repo="clients" && _owner="bitwarden" && _tag=$(curl -s https://github.com/$_owner/$_repo/tags | grep -oP 'href="\K[^"]*' | grep -oP 'desktop-v\d+\.\d+\.\d+' | head -n 1) && _version=$(echo $_tag | cut -d'-' -f2 | grep -oP '\d+\.\d+\.\d+') && curl --silent -L "https://github.com/$_owner/$_repo/releases/download/$_tag/Bitwarden-$_version-amd64.deb" -o "Bitwarden.deb" && sudo dpkg -i Bitwarden.deb
```

Fedora, CentOS, RHEL (as user):

```bash
cd $(mktemp -d) && _repo="clients" && _owner="bitwarden" && _tag=$(curl -s https://github.com/$_owner/$_repo/tags | grep -oP 'href="\K[^"]*' | grep -oP 'desktop-v\d+.\d+.\d+' | head -n 1) && _version=$(echo $_tag | cut -d'-' -f2 | grep -oP '\d+.\d+.\d+') && curl -L "https://github.com/$_owner/$_repo/releases/download/$_tag/Bitwarden-$_version-x86_64.rpm" -o "Bitwarden.rpm" && sudo dnf install -y Bitwarden.rpm
```

## 1Password

Debian, Ubuntu, PopOS (as user):

```bash
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg && echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list && sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ && curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol && sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22 && curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg && sudo apt update -y && sudo apt install -y 1password
```

Fedora, CentOS, RHEL (as user):

```bash
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc && sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo' && sudo dnf install -y 1password
```

## DO CLI

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && _owner="digitalocean" && _repo="doctl" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/doctl-$_version_no_v-linux-amd64.tar.gz" -o "doctl.tar.gz" && tar -xvzf "doctl.tar.gz" doctl && sudo install -m 755 doctl /usr/local/bin/doctl
```

## Ghorg

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="gabrie30" && _repo="ghorg" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/ghorg_${_version_no_v}_Linux_x86_64.tar.gz" && tar -xvzf "ghorg_${_version_no_v}_Linux_x86_64.tar.gz" ghorg && sudo install -m 755 ghorg /usr/local/bin/ghorg
```

## Megatools

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && wget "https://megatools.megous.com/builds/megatools-1.11.1.20230212-linux-x86_64.tar.gz" && tar -xvzf megatools-*.tar.gz && cd megatools-*/ && sudo install -m 755 megatools /usr/local/bin/megatools
```

## git-crypt

Linux x86_64 (as user):

```bash
cd $(mktemp -d) && _owner="AGWA" && _repo="git-crypt" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/git-crypt-${_version}-linux-x86_64" && sudo install -m 755 git-crypt* /usr/local/bin/git-crypt
```

## KeePassXC

Debian, Ubuntu, PopOS (as user):

```bash
sudo add-apt-repository ppa:phoerious/keepassxc -y && sudo apt update -y && sudo apt install -y keepassxc
```

Fedora, CentOS, RHEL (as user):

```bash
sudo dnf install keepassxc -y
```

## Azure Storage Explorer

Fedora, CentOS, RHEL (as user):

```bash
sudo dnf install -y dotnet-runtime-6.0 && mkdir -p $HOME/Software/azure-storage-explorer && cd $HOME/Software && wget https://download.microsoft.com/download/A/E/3/AE32C485-B62B-4437-92F7-8B6B2C48CB40/StorageExplorer-linux-x64.tar.gz && tar xvf StorageExplorer-linux-x64.tar.gz -C ./azure-storage-explorer && rm -rf ./StorageExplorer-linux-x64.tar.gz && echo "Run with: $HOME/Software/azure-storage-explorer/StorageExplorer"
```

## VMWare Workstation

Debian, Ubuntu, PopOS (as user):

```bash
_VERSION="17.5.0-22583795"
VMWARE_VERSION=workstation-17.5.0
TMP_FOLDER=/tmp/patch-vmware
sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa -y
sudo apt update
sudo apt install -y g++-12 gcc-12 build-essential linux-headers-$(uname -r)
rm -fdr $TMP_FOLDER && mkdir -p $TMP_FOLDER && cd $TMP_FOLDER
git clone https://github.com/mkubecek/vmware-host-modules.git
cd $TMP_FOLDER/vmware-host-modules && git checkout $VMWARE_VERSION && git fetch && make && sudo make install
sudo rm -f /usr/lib/vmware/lib/libz.so.1/libz.so.1
sudo ln -s /lib/x86_64-linux-gnu/libz.so.1 /usr/lib/vmware/lib/libz.so.1/libz.so.1
cd $TMP_FOLDER && wget https://download3.vmware.com/software/WKST-1750-LX/VMware-Workstation-Full-$_VERSION.x86_64.bundle
sudo chmod +x VMware-Workstation-Full-$_VERSION.x86_64.bundle && sudo ./VMware-Workstation-Full-$_VERSION.x86_64.bundle
```

## Dynmotd

Debian, Ubuntu, PopOS (as root):

```bash
apt install -y coreutils bc procps hostname sed mawk grep bind9-host lsb-release git && cd $HOME && git clone https://github.com/rtulke/dynmotd.git && cd dynmotd && ./dynmotd.sh --install
```

CentOS, Rocky Linux and RedHat (as root):

```bash
yum install -y bc bind-utils redhat-lsb-core git && cd $HOME && git clone https://github.com/rtulke/dynmotd.git && cd dynmotd && ./dynmotd.sh --install
```

## Firefox - no Snap

Debian, Ubuntu, PopOS (as user):

```bash
sudo add-apt-repository ppa:mozillateam/ppa -y && echo -e 'Package: *\nPin: release o=LP-PPA-mozillateam\nPin-Priority: 1001' | sudo tee /etc/apt/preferences.d/mozilla-firefox && echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox && sudo apt update && sudo apt install -y firefox
```

Fedora, CentOS, RHEL (as user):

```bash
sudo dnf install firefox -y
```

## Google Chrome

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb && sudo apt-get -f install -y
```

Via Repo (as user):

```bash
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main" && sudo apt update && sudo apt install -y google-chrome-stable
```

Fedora, CentOS, RHEL (as user):

```bash
sudo dnf config-manager --set-enabled google-chrome && sudo dnf install -y google-chrome-stable
```

## 64Gram - Telegram Client

NOTE: Run it again in order to update.

Debian, Ubuntu, PopOS (as user):

```bash
_INSTALL_LOCATION="$HOME/Software/64Gram" && mkdir -p $_INSTALL_LOCATION && cd $(mktemp -d) && _owner="TDesktop-x64" && _repo="tdesktop" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && _version_no_v=$(echo $_version | sed 's/v//g') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/64Gram_${_version_no_v}_linux.zip" -O 64Gram.zip && unzip -o 64Gram.zip -d $_INSTALL_LOCATION && rm 64Gram.zip && wget -O $_INSTALL_LOCATION/icon.png https://avatars.githubusercontent.com/u/62358867?s=200&v=4 && mkdir -p ~/.local/share/applications && rm -f ~/.local/share/applications/64Gram.desktop && cat > ~/.local/share/applications/64Gram.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=64Gram Telegram
GenericName=Messaging
Comment=Launch 64Gram Telegram Client
Exec=$HOME/Software/64Gram/Telegram %u
Icon=$HOME/Software/64Gram/icon.png
Terminal=false
Categories=Network;Chat;InstantMessaging;
StartupWMClass=64Gram
MimeType=x-scheme-handler/tg;
EOF
chmod +x ~/.local/share/applications/64Gram.desktop && echo "64Gram installed/updated!"
```

## Veracrypt

Debian, Ubuntu, PopOS (as user):

```bash
sudo add-apt-repository ppa:unit193/encryption -y && sudo apt-get update && sudo apt-get install -y veracrypt
```

## Microsoft Teams

Debian, Ubuntu, PopOS (as user):

```bash
flatpak install -y flathub com.github.IsmaelMartinez.teams_for_linux
```

## Mattermost

Via Flatpak (as user):

```bash
flatpak install -y flathub com.mattermost.Desktop
```

Debian, Ubuntu, PopOS (as user):

```bash
curl -fsS -o- https://deb.packages.mattermost.com/setup-repo.sh | sudo bash && sudo apt install mattermost-desktop -y
```

## Slack

Via Homebrew (as user):

```bash
brew install --cask slack
```

## Skype

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && wget https://go.skype.com/skypeforlinux-64.deb && sudo apt install -y ./skypeforlinux-64.deb
```

Fedora, CentOS, RHEL (as user):

```bash
sudo curl -s -o /etc/yum.repos.d/skype-stable.repo https://repo.skype.com/rpm/stable/skype-stable.repo && sudo dnf install skypeforlinux -y
```

## Slackdump

Debian, Ubuntu, PopOS x64 (as user):

```bash
cd $(mktemp -d) && _owner="rusq" && _repo="slackdump" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && wget "https://github.com/$_owner/$_repo/releases/download/$_version/slackdump_Linux_x86_64.tar.gz" -O slackdump.tar.gz && tar -xf slackdump.tar.gz && sudo install ./slackdump /usr/bin
```

## Zoom

Debian, Ubuntu, PopOS (as user):

```bash
cd $(mktemp -d) && wget https://zoom.us/client/latest/zoom_amd64.deb && sudo apt install -y ./zoom_amd64.deb
```

Fedora, CentOS, RHEL (as user):

```bash
cd $(mktemp -d) && wget https://zoom.us/client/latest/zoom_x86_64.rpm && sudo dnf install -y ./zoom_x86_64.rpm
```

## Joplin

Any Linux (as user):

```bash
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
```

## Keybase

Debian, Ubuntu (as user):

```bash
cd $(mktemp -d) && curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb && sudo apt install -y ./keybase_amd64.deb && run_keybase
```

## VSCode Live Share can't sign in "fix"

For Ubuntu 22.XX (as user):

```bash
cd $(mktemp -d) && wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb && sudo dpkg -i ./libssl1.1_1.1.0g-2ubuntu4_amd64.deb
```

## xxToolbelt

Any Linux (as user):

```bash
cd /tmp && git clone https://github.com/thereisnotime/xxToolbelt && mkdir -p "$HOME/.xxtoolbelt" && mv ./xxToolbelt/* "$HOME/.xxtoolbelt" && echo -ne "# START xxToolbelt\nsource \"$HOME/.xxtoolbelt/xxtoolbelt.sh\"\n# END xxToolbelt" >> "$HOME/.$(ps -p $$ -ocomm=)rc" && source "$HOME/.$(ps -p $$ -ocomm=)rc" && echo -ne "\n\e[1;32m======= xxToolbelt was installed. Try 'xxtb'\e[m\n"
```

## Sniffnet

Debian, Ubuntu (as user):

```bash
cd $(mktemp -d) && _owner="GyulyVGC" && _repo="sniffnet" && curl -LJ "https://github.com/$_owner/$_repo/releases/latest/download/Sniffnet_LinuxDEB_amd64.deb" -o sniffnet.deb && sudo dpkg -i sniffnet.deb
```

## Tempmail

Any Linux (as user):

```bash
curl -L "https://git.io/tempmail" > /tmp/tempmail && chmod +x /tmp/tempmail && sudo mv /tmp/tempmail /usr/bin/tempmail
```

## Homebrew

Linux/macOS (as user):

NOTE: Add to your bashrc file: `eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Scrcpy

Debian, Ubuntu (as user):

```bash
sudo apt install -y ffmpeg libsdl2-2.0-0 adb meson wget gcc git pkg-config ninja-build libsdl2-dev libavcodec-dev cmake libavformat-dev libavdevice-dev libavutil-dev libswresample-dev libusb-1.0-0 libusb-1.0-0-dev && sudo git clone https://github.com/Genymobile/scrcpy /opt/scrcpy && cd /opt/scrcpy && sudo ./install_release.sh
```

## apt-fast

Debian, Ubuntu (as user):

```bash
/bin/bash -c "$(curl -sL https://git.io/vokNn)"
```

## Remove Snap and all its packages

Debian, Ubuntu, PopOS (as user - requires reboot after):

```bash
sudo snap remove --purge snap-store
sudo snap remove --purge firefox
sudo snap remove --purge firmware-updater
sudo snap remove --purge snapd-desktop-integration
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge $(snap list --all | grep gnome- | awk '{print $1}') 2>/dev/null || true
sudo snap remove --purge bare
sudo snap remove --purge $(snap list --all | grep core | awk '{print $1}') 2>/dev/null || true
sudo snap remove --purge snapd
sudo apt autoremove --purge -y
sudo apt-mark hold snapd
sudo rm -rf $HOME/snap /root/snap /snap /var/snap /var/lib/snapd /var/cache/snapd /etc/apt/sources.list.d/snapd.list 2>/dev/null || true
echo -e "Package: snapd\nPin: release a=*\nPin-Priority: -10" | sudo tee /etc/apt/preferences.d/nosnap.pref >/dev/null
sudo apt-get update
echo "NOTE: Reboot required!"
```

Server option (as user):

```bash
for snap in $(snap list | awk '!/^(Name|core|lxd|snapd)/ {print $1}'); do echo "Removing $snap" && sudo snap remove "$snap"; done
sudo snap remove lxd 2>/dev/null || true
for corepkg in $(snap list | awk '/^core/ {print $1}'); do echo "Removing $corepkg" && sudo snap remove "$corepkg"; done
sudo snap remove snapd
sudo apt remove --autoremove -y snapd
echo -e "Package: snapd\nPin: release a=*\nPin-Priority: -10" | sudo tee /etc/apt/preferences.d/nosnap.pref
sudo apt update
mount | grep snap | awk '{print $3}' | while read -r mp; do echo "Unmounting $mp..." && sudo umount "$mp"; done
sudo apt-get purge snapd -y
sudo rm -rf /var/cache/snapd/ /var/lib/snapd/ /var/snap /var/lib/app-info/icons/ubuntu-snap/ /snap
sudo systemctl mask snapd
```

## Switch from Wayland to X11 (Debian and GDM based)

Debian, Ubuntu (as user):

```bash
sudo sed -i 's/#WaylandEnable=false/WaylandEnable=false/' /etc/gdm3/custom.conf && sudo systemctl restart gdm
```

## Asdf Addons

Via asdf (as user):

```bash
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin add kubectl https://github.com/asdf-community/asdf-kubectl.git
asdf plugin add boundary https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add consul https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add levant https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add nomad https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add packer https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add sentinel https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add serf https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add terraform https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add terraform-ls https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add tfc-agent https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add vault https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add waypoint https://github.com/asdf-community/asdf-hashicorp.git
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud
asdf plugin add dotnet-core https://github.com/emersonsoares/asdf-dotnet-core.git
asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf plugin add azure-cli https://github.com/EcoMind/asdf-azure-cli
asdf plugin add awscli
asdf install java adoptopenjdk-jre-21.0.2+13.0.LTS && asdf set -u java adoptopenjdk-jre-21.0.2+13.0.LTS
asdf install nodejs latest && asdf set -u nodejs latest
asdf install awscli latest && asdf set -u awscli latest
asdf install dotnet-core latest && asdf set -u dotnet-core latest
asdf install helm latest && asdf set -u helm latest
asdf install terraform latest && asdf set -u terraform latest
asdf install kubectl latest && asdf set -u kubectl latest
asdf install azure-cli latest && asdf set -u azure-cli latest
```

## K3s

### Setup k3s master

Any Linux (as user):

```bash
curl -sfL https://get.k3s.io | sh - && sudo k3s kubectl cluster-info
```

### Setup k3s master without traefik

Any Linux (as user):

```bash
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --disable=traefik
```

### Get k3s join token

Any Linux (as root):

```bash
cat /var/lib/rancher/k3s/server/node-token
```

Or generate the join command (as root):

```bash
_token=$(cat /var/lib/rancher/k3s/server/node-token) && _iip=$(hostname -I | awk '{print $1}') && echo "curl -sfL https://get.k3s.io | K3S_URL=https://${_iip}:6443 K3S_TOKEN=${_token} sh -"
```

### Get k3s kubeconfig

Internal IP (as root):

```bash
_iip=$(hostname -I | awk '{print $1}') && cat /etc/rancher/k3s/k3s.yaml | sed "s/127.0.0.1/${_iip}/g" | sed "s/default/$(hostname)/g"
```

External IP (as root):

```bash
_eip=$(curl -s ip.rso.bg) && cat /etc/rancher/k3s/k3s.yaml | sed "s/127.0.0.1/${_eip}/g" | sed "s/default/$(hostname)/g"
```

### Setup k3s node

Any Linux (as user):

```bash
curl -sfL https://get.k3s.io | K3S_URL=https://myserver:6443 K3S_TOKEN=mynodetoken sh -
```

### Uninstall k3s master

Any Linux (as root):

```bash
/usr/local/bin/k3s-uninstall.sh
```

### Uninstall k3s node

Any Linux (as root):

```bash
/usr/local/bin/k3s-agent-uninstall.sh
```

### Remove k3s Network and Storage Leftovers

Any Linux (as root):

```bash
echo "Unmounting Kubernetes-related mounts..." && mount | grep -E '/run/k3s|/var/lib/kubelet|/run/netns' | awk '{print $3}' | while read -r mp; do umount "$mp" 2>/dev/null; done
echo "Removing leftover network namespaces..." && ip netns list | grep -E 'cni-' | awk '{print $1}' | while read -r netns; do ip netns delete "$netns" 2>/dev/null; done
echo "Deleting CNI bridge interfaces..." && ip link show | grep -E 'cni|flannel' | awk '{print $2}' | sed 's/://g' | while read -r iface; do ip link delete "$iface" 2>/dev/null || true; done
```

## Nextcloud

AppImage with .desktop file (as user):

```bash
mkdir -p ~/AppImages ~/.local/share/applications ~/.icons && _tag=$(curl -s https://api.github.com/repos/nextcloud-releases/desktop/releases/latest | jq -r '.tag_name') && _ver="${_tag#v}" && curl -sL "https://github.com/nextcloud-releases/desktop/releases/download/${_tag}/Nextcloud-${_ver}-x86_64.AppImage" -o ~/AppImages/Nextcloud.AppImage && chmod +x ~/AppImages/Nextcloud.AppImage && curl -sL "https://static-00.iconduck.com/assets.00/nextcloud-icon-512x512-9r19op3c.png" -o ~/.icons/nextcloud.png && rm -f ~/.local/share/applications/nextcloud-appimage.desktop && cat > ~/.local/share/applications/nextcloud-appimage.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Nextcloud
GenericName=File Synchronization
Comment=Nextcloud Client (AppImage)
Exec=$HOME/AppImages/Nextcloud.AppImage
Icon=$HOME/.icons/nextcloud.png
Terminal=false
Categories=Network;FileTransfer;Utility;
StartupWMClass=Nextcloud
X-GNOME-Autostart-enabled=true
EOF
chmod +x ~/.local/share/applications/nextcloud-appimage.desktop && echo "Nextcloud installed with .desktop file!"
```

## Podman

Debian, Ubuntu (as user):

```bash
sudo apt-get install podman -y && flatpak install -y flathub io.podman_desktop.PodmanDesktop
```

## OnlyOffice

AppImage with .desktop file (as user):

```bash
mkdir -p ~/AppImages ~/.local/share/applications ~/.icons && _tag=$(curl -s https://api.github.com/repos/ONLYOFFICE/appimage-desktopeditors/releases/latest | jq -r '.tag_name') && _ver="${_tag#v}" && curl -L "https://github.com/ONLYOFFICE/appimage-desktopeditors/releases/download/${_tag}/DesktopEditors-x86_64.AppImage" -o ~/AppImages/OnlyOffice.AppImage && chmod +x ~/AppImages/OnlyOffice.AppImage && curl -sL "https://raw.githubusercontent.com/nicefox-iwa/onlyoffice-logo/refs/heads/main/onlyoffice-logo.svg" -o ~/.icons/onlyoffice.svg && rm -f ~/.local/share/applications/onlyoffice-appimage.desktop && cat > ~/.local/share/applications/onlyoffice-appimage.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=ONLYOFFICE Desktop Editors
GenericName=Office Suite
Comment=Edit documents, spreadsheets and presentations
Exec=$HOME/AppImages/OnlyOffice.AppImage %U
Icon=$HOME/.icons/onlyoffice.svg
Terminal=false
StartupNotify=true
Categories=Office;WordProcessor;Spreadsheet;Presentation;
MimeType=application/msword;application/vnd.openxmlformats-officedocument.wordprocessingml.document;application/vnd.ms-excel;application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;application/vnd.ms-powerpoint;application/vnd.openxmlformats-officedocument.presentationml.presentation;application/vnd.oasis.opendocument.text;application/vnd.oasis.opendocument.spreadsheet;application/vnd.oasis.opendocument.presentation;
StartupWMClass=DesktopEditors
EOF
chmod +x ~/.local/share/applications/onlyoffice-appimage.desktop && echo "OnlyOffice installed with .desktop file!"
```

## LibreWolf

AppImage with .desktop file (as user):

```bash
mkdir -p ~/AppImages ~/.local/share/applications ~/.icons && _ver=$(curl -s 'https://gitlab.com/api/v4/projects/24386000/packages?package_name=librewolf' | jq -r '.[0].version') && curl -sL "https://gitlab.com/api/v4/projects/24386000/packages/generic/librewolf/${_ver}/LibreWolf.x86_64.AppImage" -o ~/AppImages/LibreWolf.AppImage && chmod +x ~/AppImages/LibreWolf.AppImage && curl -sL "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/LibreWolf_icon.svg/1200px-LibreWolf_icon.svg.png" -o ~/.icons/librewolf.png && rm -f ~/.local/share/applications/librewolf-appimage.desktop && cat > ~/.local/share/applications/librewolf-appimage.desktop <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=LibreWolf
GenericName=Web Browser
Comment=LibreWolf Browser (AppImage)
Exec=$HOME/AppImages/LibreWolf.AppImage %u
Icon=$HOME/.icons/librewolf.png
Terminal=false
Categories=Network;WebBrowser;
StartupWMClass=LibreWolf
MimeType=text/html;text/xml;application/xhtml+xml;x-scheme-handler/http;x-scheme-handler/https;application/pdf;
X-GNOME-Autostart-enabled=true
EOF
chmod +x ~/.local/share/applications/librewolf-appimage.desktop && echo "LibreWolf installed with .desktop file!"
```

## Ubuntu Codecs

Ubuntu (as user):

```bash
sudo apt-get install -y ubuntu-restricted-extras
```

## Tilix

Debian, Ubuntu (as user):

```bash
sudo apt-get install -y tilix && sudo ln -sf /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
```

## Teleport Client - tsh

Check server version (as user):

```bash
curl https://teleport.example.com/webapi/find | jq '.server_version'
```

Install same version (as user):

```bash
TSH_VERSION="16.1.4" && cd $(mktemp -d) && curl -O https://cdn.teleport.dev/teleport-v$TSH_VERSION-linux-amd64-bin.tar.gz && tar -xzf teleport-v$TSH_VERSION-linux-amd64-bin.tar.gz && cd teleport && sudo ./install
```

## Pluto

Via asdf (as user):

```bash
asdf plugin add pluto && asdf install pluto latest && asdf set -u pluto latest
```

## Setup TPM Unlock of LUKS

Ubuntu 22 (as root - interactive):

```bash
apt-get update && apt-get upgrade -y
mkdir -p $HOME/Workspace/Projects/Public && cd $HOME/Workspace/Projects/Public
apt -y install git autoconf-archive libcmocka0 libcmocka-dev procps iproute2 build-essential pkg-config gcc libtool automake libssl-dev uthash-dev autoconf doxygen libjson-c-dev libini-config-dev libcurl4-openssl-dev uuid-dev libltdl-dev libusb-1.0-0-dev libftdi-dev libglib2.0-dev
git clone https://github.com/tpm2-software/tpm2-tss.git && cd tpm2-tss && ./bootstrap && ./configure --with-udevrulesdir=/etc/udev/rules.d/ && make -j$(nproc) && make install && ldconfig
udevadm control --reload-rules && udevadm trigger && pkill -HUP dbus-daemon
cd .. && git clone https://github.com/tpm2-software/tpm2-abrmd.git && cd tpm2-abrmd && ./bootstrap && ./configure --with-dbuspolicydir=/etc/dbus-1/system.d && make -j$(nproc) && make install && ldconfig
cd .. && git clone https://github.com/tpm2-software/tpm2-tools.git && cd tpm2-tools && ./bootstrap && ./configure && make -j$(nproc) && make install && ldconfig
tpm2_getrandom --hex 8
rm -rf $HOME/Workspace/Projects/Public
systemctl start tpm2-abrmd.service && systemctl enable tpm2-abrmd.service
# For new TPM devices: systemd-cryptenroll --tpm2-device=auto --tpm2-pcrs=7 /dev/YOUR_PARTITION
# For old TPM devices: apt-get -y install clevis clevis-tpm2 clevis-luks clevis-initramfs initramfs-tools tss2 clevis-udisks2 clevis-systemd tpm2-openssl
```

## OBS

Debian, Ubuntu (as user):

```bash
sudo apt install -y v4l2loopback-dkms && sudo add-apt-repository ppa:obsproject/obs-studio -y && sudo apt update && sudo apt install obs-studio -y
```

## Allow MFA Device in AppArmor

Any Linux (as user):

```bash
sudo tee /etc/apparmor.d/local/usr.bin.firefox << 'EOF'
/sys/class/ r,
/sys/bus/ r,
/sys/class/hidraw/ r,
/run/udev/data/c24{7,9}:* r,
/dev/hidraw* rw,
/sys/devices/**/hidraw/hidraw*/uevent r,
EOF
```

## Add FIDO MFA Support

Debian, Ubuntu (as root):

```bash
apt install -y libfido2-1 libfido2-dev libfido2-doc fido2-tools libpam-u2f
```

## Flatpak: User Software

Any Linux with Flatpak (as user):

```bash
flatpak install -y me.kozec.syncthingtk nz.mega.MEGAsync com.calibre_ebook.calibre org.filezillaproject.Filezilla org.torproject.torbrowser-launcher com.obsproject.Studio io.github.slgobinath.SafeEyes
```

## Flatpak: Organization

Any Linux with Flatpak (as user):

```bash
flatpak install -y md.obsidian.Obsidian net.mkiol.SpeechNote com.github.ryonakano.reco
```

## Flatpak: Media

Any Linux with Flatpak (as user):

```bash
flatpak install -y org.gnome.Logs org.shotcut.Shotcut org.gimp.GIMP com.stremio.Stremio com.spotify.Client org.audacityteam.Audacity org.kde.kasts
```

## Flatpak: Gaming

Any Linux with Flatpak (as user):

```bash
flatpak install -y net.lutris.Lutris org.libretro.RetroArch com.heroicgameslauncher.hgl org.winehq.Wine com.valvesoftware.Steam com.valvesoftware.SteamLink com.parsecgaming.parsec io.itch.itch
```

## Flatpak: Messaging and Social

Any Linux with Flatpak (as user):

```bash
flatpak install -y im.riot.Riot com.viber.Viber io.github.tdesktop_x64.TDesktop com.slack.Slack com.mattermost.Desktop org.kde.tokodon org.signal.Signal
```

## Flatpak: Development

Any Linux with Flatpak (as user):

```bash
flatpak install -y cc.arduino.IDE2 io.dbeaver.DBeaverCommunity com.redis.RedisInsight org.apache.directory.studio com.microsoft.AzureStorageExplorer com.getpostman.Postman org.soapui.SoapUI org.apache.jmeter
```

## Flatpak: System Tooling

Any Linux with Flatpak (as user):

```bash
flatpak install -y io.missioncenter.MissionCenter io.github.prateekmedia.appimagepool io.github.giantpinkrobots.flatsweep it.mijorus.gearlever com.usebottles.bottles
```
