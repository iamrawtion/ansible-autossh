#!/bin/bash
user="vagrant"
for ip in `cat ./list`; do
    ssh-keyscan -H $ip >> ~/.ssh/known_hosts
    sshpass -f password.txt ssh-copy-id -i ~/.ssh/id_rsa.pub $user@$ip
done
