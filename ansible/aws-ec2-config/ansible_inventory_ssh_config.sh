ec2-user@ktfcn[Sun Sep 24][09:58 AM]:~$pwd
/home/ec2-user
ec2-user@ktfcn[Sun Sep 24][09:58 AM]:~$ls
ansible.pem
ec2-user@ktfcn[Sun Sep 24][09:58 AM]:~$cat /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost6 localhost6.localdomain6
127.0.0.1 ktfcn
172.31.39.31    ktfmn1
172.31.44.99    ktfmn2
ec2-user@ktfcn[Sun Sep 24][09:59 AM]:~$cat /etc/ansible/hosts
[clients]
ktfmn1  ansible_ssh_private_key_file=/home/ec2-user/ansible.pem ansible_ssh_host=172.31.39.31 ansible_user=ec2-user
ktfmn2  ansible_ssh_private_key_file=/home/ec2-user/ansible.pem ansible_ssh_host=172.31.44.99 ansible_user=ec2-user
ec2-user@ktfcn[Sun Sep 24][09:59 AM]:~$ansible -m ping all
[WARNING]: Platform linux on host ktfmn1 is using the discovered Python interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of that path. See https://docs.ansible.com/ansible-
core/2.15/reference_appendices/interpreter_discovery.html for more information.
ktfmn1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Platform linux on host ktfmn2 is using the discovered Python interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of that path. See https://docs.ansible.com/ansible-
core/2.15/reference_appendices/interpreter_discovery.html for more information.
ktfmn2 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}


# This will configure the ansible to avoid the Ansible interpreter warnings while executing the ansible ad-hoc commands.
export ANSIBLE_PYTHON_INTERPRETER="/usr/bin/python3.9"