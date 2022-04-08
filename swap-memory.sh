free -h
sudo swapon --show
df -h
sudo fallocate -l 2G /swapfile
#For Centos
#sudo dd if=/dev/zero of=/swapfile count=2048 bs=1MiB
ls -lh /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
ls -lh /swapfile
 sudo swapon /swapfile
sudo swapon --show
free -h
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf
