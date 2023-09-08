# oneline

Frequently used one-liners in real life for your copy-pasting needs.

## Basic Tools

Debian, Ubuntu, popOS:

```bash
apt install -y git wget curl nano net-tools iodtop htop unzip sudo mtr sshpass autossh screen tmux openssl sqlite3 rsync rclone gnupg jq tcpdump nload telnet socat pv ethtool procps strace hping3 uuid-runtime iputils-ping fakeroot speedtest-cli
```

## Security Tools

Debian, Ubuntu, popOS:

```bash
apt install -y rkhunter lynis chkrootkit clamav clamav-daemon
```

## Docker

```bash
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh && rm get-docker.sh && sudo usermod -aG docker $USER
```

## Docker arm64/aarch64

```bash
curl -fsSL test.docker.com -o get-docker.sh && sh get-docker.sh
sudo usermod -aG docker "$USER"
systemctl enable docker
systemctl start docker
```

## Apt Cleanup

```bash
du -sch /var/cache/apt/archives/ && sudo apt-get clean; du -sch /var/cache/apt/archives/
```

## Minikube arm64/aarch64

```bash
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64
sudo install minikube-linux-arm64 /usr/local/bin/minikube
rm minikube-linux-arm64
```

## Minikonda

As current user:

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/Miniconda.sh && bash /tmp/Miniconda.sh
```

## Docker-Compose

```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose && docker-compose
```

## Docker-Compose ARM 32v7 (RPi 3)

```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-armv7" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/
```

## Docker-Compose Arm64/Aarch64

```bash
apt install -y sudo curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-aarch64" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/
```

=======

## Docker-Compose arm64/aarch64

```bash
apt install -y sudo curl; cd "$(mktemp -d)" && _version=$(curl --silent "https://api.github.com/repos/docker/compose/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl -L "https://github.com/docker/compose/releases/download/$_version/docker-compose-linux-aarch64" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/
```

## Kompose

### Debian/Ubuntu

```bash
wget https://github.com/kubernetes/kompose/releases/download/v1.27.0/kompose_1.27.0_amd64.deb # Replace 1.27.0 with latest tag
sudo apt install ./kompose_1.27.0_amd64.deb
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

Tweaks:

```bash
# Change theme (zork, modern-t, 90210)
sed -i 's/font/90210/g' "$HOME/.bashrc"
# Disable update prompt (enable auto updates)
echo "DISABLE_UPDATE_PROMPT=true" >> "$HOME/.bashrc"
```

## Oh-my-zsh

```bash
apt-get install -y zsh git && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
```

## RC: Nano

```bash
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
```

## Tmate

```bash
apt install -y curl; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/tmate-io/tmate/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); curl --silent -L "https://github.com/tmate-io/tmate/releases/download/$_version/tmate-$_version-static-linux-amd64.tar.xz" -o tmate.tar.xz && tar -xvf tmate.tar.xz && install ./tmate-$_version-static-linux-amd64/tmate /usr/bin
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

```bash
brew install kubeseal
```

## Flatpak

```bash
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y com.github.tchx84.Flatseal ca.desrt.dconf-editor
```

### Flatpak - GNOME Software Center Plugin

```bash
sudo apt-get install -y  gnome-software-plugin-flatpak
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
_owner="owenthereal" && _repo="upterm" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); sudo curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/upterm_linux_amd64.tar.gz" -o /tmp/upterm.tar.gz && tar -xf /tmp/upterm.tar.gz && sudo install /tmp/upterm /usr/bin/upterm
```

## Btop

```bash
apt install -y make sudo; cd $(mktemp -d) && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-x86_64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && cd btop && sudo sh install.sh && sudo sh setuid.sh
```

## Btop arm64

```bash
apt install -y make sudo; cd "$(mktemp -d)" && _version=$(curl --silent "https://api.github.com/repos/aristocratos/btop/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); wget "https://github.com/aristocratos/btop/releases/download/$_version/btop-x86_64-linux-musl.tbz" -O btop.tbz && tar -xvjf btop.tbz && cd btop && sudo sh install.sh && sudo sh setuid.sh
```

## Google Cloud SQL Proxy

```bash
cd $(mktemp -d) && wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy && install ./cloud_sql_proxy /usr/bin
```

## VirtualBox Guest Additions

### Option 1 - Mounting

1. Insert the CD image
2. Enter:

```bash
sudo mkdir -p /dev/cdrom; sudo mount /dev/cdrom /mnt && sudo apt update -y && sudo apt upgrade -y && apt install dkms linux-headers-$(uname -r) build-essential && sudo sh /mnt/VBoxLinuxAdditions.run && reboot
```

### Option 2 - Script

```bash
sudo apt install virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils
```

### Option 3 - Vagrant

If using Vagrant:

```bash
vagrant plugin install vagrant-vbguest
vagrant up
vagrant vbguest
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

## Kubectl

```bash
brew install kubectl
```

## Kubectl arm64/aarch64

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/arm64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm -rf ./kubectl
```

## K9s

Debian, Ubuntu:

```bash
sudo apt-get update
sudo apt-get install -y ca-certificates curl
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl
sudo apt-get update
sudo apt-get install -y kubectl
```

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

```bash
curl -sS https://webinstall.dev/k9s | bash
```

## K9s arm64/aarch64

```bash
cd "$(mktemp -d)" && _owner="derailed" && _repo="k9s" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/k9s_Linux_arm64.tar.gz" && find . -maxdepth 1 -type f -name '*.tar.gz' -execdir tar -xvzf {} \; && sudo install -m 755 k9s /usr/local/bin/k9s
```

## Krew

```bash
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
```

Then it to your rc file:

```bash
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
```

## Kubecolor

```bash
curl -s https://raw.githubusercontent.com/dty1er/kubecolor/master/scripts/install.sh | bash
```

## GCloud CLI

```bash
curl https://sdk.cloud.google.com | bash
```

```bash
sudo apt-get install -y apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-cli
```

## AWS CLI

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

```bash
apt-get install -y awscli
```

## RustDesk

Debian, Ubuntu, popOS:

```bash
_owner="rustdesk" && _repo="rustdesk" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); cd /tmp; sudo curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/rustdesk-$_version-x86_64.deb" -o /tmp/rustdesk.deb && sudo dpkg -i /tmp/rustdesk.deb; sudo apt-get -f install
```

Fedora, CentOS, RHEL:

```bash
sudo yum -y install gcc-c++ git curl wget nasm yasm gcc gtk3-devel clang libxcb-devel libxdo-devel libXfixes-devel pulseaudio-libs-devel cmake alsa-lib-devel && cd $(mktemp -d) && _owner="rustdesk" && _repo="rustdesk" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/rustdesk-$_version_no_v-fedora28-centos8.rpm" && sudo rpm -i --force "rustdesk-$_version_no_v-fedora28-centos8.rpm"
```

## Anydesk

Ubuntu, Debian, PopOS:

```bash
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update -y && apt install anydesk -y
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
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb -O /tmp/teamviewer_amd64.deb && sudo dpkg -i /tmp/teamviewer_amd64.deb
```

Fedora, CentOS, RHEL:

```bash
wget https://download.teamviewer.com/download/linux/teamviewer.x86_64.rpm
sudo dnf -y install ./teamviewer.x86_64.rpm
```

## Github CLI

```bash
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
```

## GitLab CLI

Debian, Ubuntu - x64 amd:

```bash
API_ENDPOINT="https://gitlab.com/api/v4/projects" && PROJECT_ID="gitlab-org%2Fcli" && LATEST_RELEASE=$(curl --silent "${API_ENDPOINT}/${PROJECT_ID}/releases" | jq -r '.[0].tag_name') && LATEST_RELEASE_NO_V=$(echo "$LATEST_RELEASE" | sed 's/v//') && wget "https://gitlab.com/gitlab-org/cli/-/releases/${LATEST_RELEASE}/downloads/glab_${LATEST_RELEASE_NO_V}_Linux_x86_64.deb" -O glab.deb && sudo dpkg -i glab.deb
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

With autocomplete:

```bash
if [ "$EUID" -eq 0 ]; then echo "Please do not run as root or sudo"; exit; fi; if [ ! -d "$HOME/.asdf" ]; then mkdir "$HOME/.asdf"; fi; git clone https://github.com/asdf-vm/asdf.git "$HOME/.asdf"; _shellrc="$HOME/."$(ps -p $$ | tail -1 | awk '{print $NF}')"rc"; if ! grep -q ".asdf/asdf.sh" "$_shellrc"; then echo ". $HOME/.asdf/asdf.sh; . $HOME/.asdf/completions/asdf.bash" >> "$_shellrc"; fi

```

```bash
brew install asdf
```

## Lens

OpenLens:

```bash
cd $(mktemp -d) && _owner="MuhammedKalkan" && _repo="OpenLens" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/OpenLens-$_version_no_v.amd64.deb" && sudo apt install "./OpenLens-$_version_no_v.amd64.deb"
```

```bash
brew cask install lens
```

## Helm

```bash
cd $(mktemp -d) && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && chmod 700 get_helm.sh && ./get_helm.sh
```

## Ansible

```bash
sudo apt-add-repository ppa:ansible/ansible -y && sudo apt-get update && sudo apt-get install ansible -y
```

## Terraform

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install -y terraform
```

## Terraform-cloud-cli

```bash
cd $(mktemp -d) && _owner="bendrucker" && _repo="terraform-cloud-cli" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/terraform-cloud-cli_${_version_no_v}_linux_amd64.tar.gz" -O tfcloudcli.tar.gz && tar -xf tfcloudcli.tar.gz && sudo install ./terraform-cloud /usr/bin"
```

## Packer

Same keys as terraform, just do:

```bash
apt-get install -y packer
```

## Vagrant

Same keys as terraform, just do:

```bash
apt-get install -y vagrant
```

Vagrant Plugins:

```bash
vagrant plugin install vagrant-vbguest vagrant-disksize
```

## Skaffold

```bash
curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
sudo install skaffold /usr/local/bin/
```

## Tilt and ctlptl

ctlptl:

```bash
cd $(mktemp -d) && _owner="tilt-dev" && _repo="ctlptl" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/ctlptl.${_version_no_v}.linux.x86_64.tar.gz" -O ctlptl.tar.gz && tar -xf ctlptl.tar.gz && sudo install ./ctlptl /usr/bin"
```

Tilt:

```bash
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
```

## Mongo Compass

Fedora, CentOS, RHEL:

```bash
cd $(mktemp -d) && _owner="mongodb-js" && _repo="compass" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/mongodb-compass-isolated-${_version_no_v}.x86_64.rpm" -O mongo.rpm && sudo dnf install mongo.rpm && rm -rf ./mongo.rpm
```

## Golang

```bash
apt-get install -y golang
```

## tfsec

```bash
go install github.com/aquasecurity/tfsec/cmd/tfsec@latest
```

## ArgoCD CLI - amd64

```bash
cd $(mktemp -d) && _repo="argo-cd" && _owner="argoproj" && _version=$(curl --silent https://api.github.com/repos/$_owner/$_repo/releases/latest | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo "$_version" | sed 's/v//g'); curl -L --silent "https://github.com/$_owner/$_repo/releases/download/$_version/argocd-linux-amd64" -o "argocd" && sudo install argocd /usr/local/bin/ && argocd version
```

## VSCode

Debian, Ubuntu, PopOS:

```bash
cd $(mktemp -d)
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
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
cd $(mktemp -d) && _repo="clients" && _owner="bitwarden" && _tag=$(curl -s https://github.com/$_owner/$_repo/tags | grep -oP 'href="\K[^"]*' | grep -oP 'desktop-v\d+\.\d+\.\d+' | head -n 1); _version=$(echo $_tag | cut -d'-' -f2 | grep -oP '\d+\.\d+\.\d+') && curl --silent -L "https://github.com/$_owner/$_repo/releases/download/$_tag/Bitwarden-$_version-amd64.deb" -o "Bitwarden.deb" && sudo dpkg -i Bitwarden.deb
```

Fedora, CentOS, RHEL:

```cd $(mktemp -d) && _repo="clients" && _owner="bitwarden" && _tag=$(curl -s https://github.com/$_owner/$_repo/tags | grep -oP 'href="\K[^"]*' | grep -oP 'desktop-v\d+.\d+.\d+' | head -n 1); _version=$(echo $_tag | cut -d'-' -f2 | grep -oP '\d+.\d+.\d+') && curl -L "https://github.com/$_owner/$_repo/releases/download/$_tag/Bitwarden-$_version-amd64.rpm" -o "Bitwarden.deb" && sudo dpkg -i Bitwarden.rpm

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

## Ghorg

Linux x86_64:

```bash
cd $(mktemp -d) && _owner="gabrie30" && _repo="ghorg" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/ghorg_${_version_no_v}_Linux_x86_64.tar.gz" && tar -xvzf "ghorg_${_version_no_v}_Linux_x86_64.tar.gz" ghorg && sudo install -m 755 ghorg /usr/local/bin/ghorg
```

## Megatools

Linux x86_64:

```bash
cd $(mktemp -d) && \
  _owner="megatools" && \
  _repo="megatools" && \
  _version=$(curl --silent "https://api.example.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")') && \
  _archive_name="megatools-${_version}-linux-x86_64.tar.gz" && \
  wget "https://megatools.megous.com/builds/builds/$_archive_name" && \
  tar -xvzf "$_archive_name" megatools && \
  sudo install -m 755 megatools /usr/local/bin/megatools
```

## git-crpyt

Linux x86_64 (needs libcrypt 1.1...):

```bash
cd $(mktemp -d) && _owner="AGWA" && _repo="git-crypt" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version_no_v/git-crypt-${_version_no_v}-linux-x86_64" && sudo install -m 755 git-crypt* /usr/local/bin/git-crypt
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

## Azure Storage Explorer

Fedora, CentOS, RHEL:

```bash
sudo dnf install dotnet-runtime-6.0
mkdir -p $HOME/Software/azure-storage-explorer
cd $HOME/Software
wget https://download.microsoft.com/download/A/E/3/AE32C485-B62B-4437-92F7-8B6B2C48CB40/StorageExplorer-linux-x64.tar.gz
tar xvf StorageExplorer-linux-x64.tar.gz -C ./azure-storage-explorer
rm -rf ./StorageExplorer-linux-x64.tar.gz
cd ./azure-storage-explorer
echo "You can now run it with $HOME/Software/azure-storage-explore/StorageExplorer"
```

## Firefox - no Snap

Debian, Ubuntu, PopOS:

```bash
sudo add-apt-repository ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
apt install -y firefox
```

Fedora, CentOS, RHEL:

```bash
sudo dnf install firefox -y
```

## Google Chrome

Debian, Ubuntu, PopOS:

```bash
cd $(mktemp -d)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb
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
sudo curl -s -o /etc/yum.repos.d/skype-stable.repo https://repo.skype.com/rpm/stable/skype-stable.repo
sudo dnf install skypeforlinux -y
```

## Slackdump

Debian, Ubuntu, PopOS (x64/86):

```bash
cd $(mktemp -d) && _owner="rusq" && _repo="slackdump" && _version=$(curl --silent "https://api.github.com/repos/$_owner/$_repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")'); _version_no_v=$(echo $_version | sed 's/v//g'); wget "https://github.com/$_owner/$_repo/releases/download/$_version/slackdump_Linux_x86_64.tar.gz" -O slackdump.tar.gz && tar -xf slackdump.tar.gz && sudo install ./slackdump /usr/bin
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

## 7Zip

```bash
apt-get install -y 7zip p7zip-full p7zip-rar
```

## Joplin

```bash
sudo wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
```

## VSCode Live Share can't sign in "fix"

For Ubuntu 22.XX:

```bash
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i ./libssl1.1_1.1.0g-2ubuntu4_amd64.deb
rm -rf -i libssl1.1_1.1.0g-2ubuntu4_amd64.deb
```

## Remove Snap and all its packages Debian, Ubuntu, PopOS

```bash
sudo snap remove gtk-common-themes
sudo apt remove --purge --assume-yes snapd gnome-software-plugin-snap
sudo snap remove $(snap list | awk '{print $1}' | tail -n +2)
rm -rf $HOME/snap/
sudo rm -rf /var/cache/snapd/
sudo rm -rf /etc/apt/sources.list.d/snapd.list
sudo apt autoremove --purge snapd
echo


/etc/apt/preferences.d/nosnap.pref
apt update
```

## Switch from Wayland to X11 (Debian and GDM based)

```bash
sudo sed -i 's/#WaylandEnable=false/WaylandEnable=false/' /etc/gdm3/custom.conf
sudo systemctl restart gdm
```
