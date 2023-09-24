#!/bin/bash
# Author: Kalesha Gagguturu
sudo hostnamectl set-hostname ktfmn1
echo "127.0.0.1 ktfmn1" | sudo tee -a /etc/hosts
#-------------------Customizing the PS1 Terminal--------------------------------
custom_ps='PS1="\[\e[31m\]\u\[\e[34m\]@\[\e[37m\]\h\[\e[m\]\[\e[1;32m\][\d][\@]\[\e[m\]:\[\e[90m\]\W\[\e[m\e[37m\]\$\[\e[m\]"'
echo "$custom_ps" >> "/home/ec2-user/.bashrc"