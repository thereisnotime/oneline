# Gaming on Linux Snippets

## Debian/Ubuntu

### Yad

```bash
sudo su
apt install libgtk-3-dev intltool xdotool
cd /tmp
git clone https://github.com/v1cont/yad.git yad-dialog-code
cd yad-dialog-code/
autoreconf -ivf && intltoolize --force
./configure && make && make install
```
