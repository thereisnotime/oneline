# Linux Drivers

## RTL8821AU

<https://github.com/morrownr/8821au-20210708>

Ubuntu:

```bash
sudo apt install -y build-essential dkms git iw
mkdir /tmp/rtldriver && cd /tmp/rtldriver
git clone https://github.com/morrownr/8821au-20210708.git
cd 8821au-20210708
bash install-driver.sh
echo Make sure to enroll MOK on next restart""
# NOTE: Might have to run sudo mokutil --import /var/lib/dkms/mok.pub
```
