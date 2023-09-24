ansible --version
ansible-inventory -y --list
ansible --list-hosts all
ansible-config --version
ansible-doc -l
ansible -m ping client
ansible -m ping all
ansible -m shell -a 'python -v' client/all
ansible -m raw -a '/usr/bin/uptime' all
    raw command -> which doesn't require python installation
ansible -m command -a date -i inventory web1
ansible -a 'cat /etc/hosts' client
ansible all -a uptime
ansible client -a whoami
ansible client -b -a whoami
ansible all -a 'ls'
ansible all -m command -a 'reboot'
ansible all -m command -b -a 'reboot'
ansible all -b -a 'shutdown -r'
ansible all -b -a 'shutdown -c'
ansible all -b -m yum -a 'name=httpd state=present'
ansibke all -b -m apt -a 'name=apache2 state=present'
ansible group/server -b -m yum -a 'name=httpd state=absent'
ansible all -b -m service -a 'name=httpd enabled=true'
ansible all -b -m service -a 'name=httpd enabled=started'
ansible client -b -m shell -a 'echo "hello" > /home/gkalesha/hello.txt'
ansible client -m ansible.builtin.shell -a 'echo $customvariable'
ansible client -m ansible.builtin.copy -a "src=/etc/hosts dest=/tmp/hosts"
ansible web -m ansible.builtin.file -a "dest=/home/gkalesha/hello.txt mode=600"
ansible web -m ansible.builtin.file -a "dest=/home/gkalesha/hello.txt mode=600 owner=gkalesha group=admin"
ansible client -m ansible.builtin.yum -a "name=acme state=present"
ansible all -m ansible.builtin.user -a "name=kgagguturu password=<crypted password here>"
ansible all -m ansible.builtin.user -a "name=kgagguturu state=absent"
ansible all -m copy -a "content=kgagguturu dest=/home/gkalesha/user.txt" -C

ansible-playbook playbook.yaml --check
ansible-playbook playbook.yaml --start-at-task "Start httpd Service"
ansible-playbook playbook.yaml -t "install"
ansible-playbook -i <dynamic_Inventory> -u <Connection User> -k -T 30 -t <custom_tag> -C -D -M <local module> -e -b -K playbook.yml
