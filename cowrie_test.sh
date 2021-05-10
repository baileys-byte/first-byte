#!/bin/bash

#   cowrie_config () {

   #These files are to be used for implementation
   #newbanner="././honeyfs/etc/ububanner.txt"
   #oldbanner="././honeyfs/etc/oldbanner.txt"
   #conf_file="././etc/cowrie.cfg"
   #ban_file="././honeyfs/etc/motd" 

   conf_file="cowrie.cfg"
   ban_file="motd"
   newbanner="newbanner.txt"
   oldbanner="oldbanner.txt"

    echo "Choose your Cowrie Customization option:"
    echo "A. Data Masking"
    echo "B. Data Mimicry"
    echo "C. Data Masking and Mimicry combination"
    echo "D. Default configuration"

    read option
    
    case $option in
    [aA])
    if [ -e $conf_file ]; then
            cp /dev/null $conf_file
    else
            touch $conf_file
    fi
    echo "[honeypot]" >> $conf_file
    echo "hostname = LinServer02" >> $conf_file
    echo "sensor_name = LinServ02" >> $conf_file
    echo "fake_addr = 192.168.55.254" >> $conf_file
    echo "Internet_facing_ip = 9.9.9.9" >> $conf_file
    echo "[shell]" >> $conf_file
    echo "Kernel_version = 5.4.0-42-generic" >> $conf_file
    echo "kernel_build_string = 46~18.04.1.Ubuntu SMP" >> $conf_file
    echo "ssh_version = OpenSSH_7.6p1, OpenSSL 1.0.2.n 7 Dec 2017" >> $conf_file
    echo "[ssh]" >> $conf_file
    echo "version = SSH-2.0-OpenSSH_7.6p1 Ubuntu-4ubuntu0.3" >> $conf_file
    echo "listen_endpoints = tcp:22:interface=0.0.0.0" >> $conf_file
    echo "[telnet]" >> $conf_file
    echo "enabled = true" >> $conf_file
    
    cp $newbanner $ban_file
    ;;
    [bB])
    if [ -e $conf_file ]; then
            cp /dev/null $conf_file
    else
            touch $conf_file
    fi
    echo "[honeypot]" >> $conf_file
    echo "hostname = Server02" >> $conf_file
    echo "sensor_name = Serv02" >> $conf_file
    echo "[ssh]" >> $conf_file
    echo "listen_endpoints = tcp:22:interface=0.0.0.0" >> $conf_file
    echo "[shell]" >> $conf_file
    echo "Kernel_version = 5.4.0-42-generic" >> $conf_file
    echo "kernel_build_string = 46~18.04.1.Ubuntu SMP" >> $conf_file
    echo "arch = Linux-aarch64-lsb " >> $conf_file
    echo "[telnet]" >> $conf_file
    echo "enabled = true" >> $conf_file
    
    cp $newbanner $ban_file
    ;;
    [cC])
    if [ -e $conf_file ]; then
            cp /dev/null $conf_file
    else
            touch $conf_file
    fi
    echo "[honeypot]" >> $conf_file
    echo "hostname = LinServer02" >> $conf_file
    echo "sensor_name = LinServ02" >> $conf_file
    echo "fake_addr = 192.168.55.254" >> $conf_file
    echo "Internet_facing_ip = 9.9.9.9" >> $conf_file
    echo "[shell]" >> $conf_file
    echo "Kernel_version = 5.4.0-42-generic" >> $conf_file
    echo "kernel_build_string = 46~18.04.1.Ubuntu SMP" >> $conf_file
    echo "ssh_version = OpenSSH_7.6p1, OpenSSL 1.0.2.n 7 Dec 2017" >> $conf_fi$
    echo "arch = Linux-aarch64-lsb " >> $conf_file
    echo "[ssh]" >> $conf_file
    echo "version = SSH-2.0-OpenSSH_7.6p1 Ubuntu-4ubuntu0.3" >> $conf_file
    echo "listen_endpoints = tcp:22:interface=0.0.0.0" >> $conf_file
    echo "[telnet]" >> $conf_file
    echo "enabled = true" >> $conf_file

    cp $newbanner $ban_file
    ;;
    [dD])
    if [ -e $conf_file ]; then
            cp /dev/null $conf_file
    else
            touch $conf_file
    fi

    echo "[ssh]" >> $conf_file
    echo "listen_endpoints = tcp:22:interface=0.0.0.0" >> $conf_file
    echo "[telnet]" >> $conf_file
    echo "enabled = true" >> $conf_file
   
    cp $oldbanner $ban_file
    ;;
    *)
    echo -n "Please enter a valid option"
    ;;
esac
	
#}




