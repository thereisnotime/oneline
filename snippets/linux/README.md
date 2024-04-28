# linux snippets

## Setup RAID

Tested on Ubuntu Server

```bash
sudo apt update
sudo apt install mdadm -y

# Create RAID
sudo mdadm --create --verbose /dev/md0 --level=5 --raid-devices=4 /dev/sda /dev/sdb /dev/sdc /dev/sdd

# Verify
cat /proc/mdstat
sudo mdadm --detail /dev/md0

# Format the RAID array
sudo mkfs.ext4 /dev/md0

# Automatically fetch the UUID of the new RAID array
UUID=$(sudo blkid -s UUID -o value /dev/md0)

# Update /etc/fstab
echo "UUID=$UUID /mnt/raid5 ext4 defaults,nofail 0 2" | sudo tee -a /etc/fstab

# Mount RAID array
sudo mkdir -p /mnt/raid5
sudo mount /dev/md0 /mnt/raid5

# Save RAID configuration to ensure it persists after reboot
sudo mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf

# Update initial ramdisk to ensure RAID is available during boot
sudo update-initramfs -u

echo "RAID 5 array created and mounted successfully at /mnt/raid5"
```
