#!/bin/bash
# Author: Kalesha Gagguturu
sudo yum update -y
sudo yum install ansible -y
sudo hostnamectl set-hostname ktfcn
echo "127.0.0.1 ktfcn" | sudo tee -a /etc/hosts
#-------------------Adding the sudoers user--------------------------------
username="gkalesha"
password="47414d28d2a80de9364aeceb697556695392d5a8b8901e25770cbb71cff8f9c1"
#echo -n "Kalesh@learning" | sha256sum
sudo /usr/sbin/useradd -c "Kalesha Gagguturu" -m -s "/bin/bash" $username 2>&1 >> /tmp/useradd.log
echo "$username:$password" | sudo chpasswd -e
echo "$username ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
#-------------------Customizing the PS1 Terminal--------------------------------
custom_ps='PS1="\[\e[31m\]\u\[\e[34m\]@\[\e[37m\]\h\[\e[m\]\[\e[1;32m\][\d][\@]\[\e[m\]:\[\e[90m\]\W\[\e[m\e[37m\]\$\[\e[m\]"'
echo "custom_ps" >> "/home/$username/.bashrc"