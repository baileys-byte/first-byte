#!/bin/bash
#cowrie_test (){

   test_file="cowrie.cfg"
   test_banner="motd"
   newbanner="newbanner.txt"
   conf_file="././etc/cowrie.cfg"
   ban_file="././honeyfs/etc/motd" 

    echo "Choose your Cowrie Customization option:"
    echo "A. Data Masking"
    echo "B. Data Mimicry"
    echo "C. Data Masking and Mimicry combination"
    echo "D. Default configuration"

    read option
    
    case $option in
    [aA])
    if [ -e $test_file ]; then
            cp /dev/null $test_file
    else
            touch $test_file
    fi
    echo "hostname = Linux Server 02" >> $test_file
    echo "sensor_name = LinServ02" >> $test_file
    echo "fake_addr = 192.168.55.254" >> $test_file
    echo "ssh_version = OpenSSH_7.6p1, OpenSSL 1.0.2.n 7 Dec 2017" >> $test_file
    echo "version = SSH-2.0-OpenSSH_7.6p1 Ubuntu-4ubuntu0.3" >> $test_file
    echo "listen_endpoints = tcp:2222:interface=0.0.0.0" >> $test_file
    echo "Internet_facing_ip = 9.9.9.9" >> $test_file
    echo "[telnet]" >> $test_file
    echo "enabled = true" >> $test_file
    
    cp $newbanner $test_banner
    ;;
    [bB])
    if [ -e $test_file ]; then
            cp /dev/null $test_file
    else
            touch $test_file
    fi
    echo "Kernel_version = 5.4.0-42-generic" >> $test_file
    echo "kernel_build_string = #46~18.04.1.Ubuntu SMP" >> $test_file
    echo "arch = Linux-aarch64-lsb " >> $test_file
    echo "[telnet]" >> $test_file
    echo "enabled = true" >> $test_file
    
    cp $newbanner $test_banner
    ;;
    [cC])
    if [ -e $test_file ]; then
            cp /dev/null $test_file
    else
            touch $test_file
    fi
    echo "hostname = Linux Server 02" >> $test_file
    echo "sensor_name = LinServ02" >> $test_file
    echo "fake_addr = 192.168.55.254" >> $test_file
    echo "ssh_version = OpenSSH_7.6p1, OpenSSL 1.0.2.n 7 Dec 2017" >> $test_file
    echo "version = SSH-2.0-OpenSSH_7.6p1 Ubuntu-4ubuntu0.3" >> $test_file
    echo "listen_endpoints = tcp:2222:interface=0.0.0.0" >> $test_file
    echo "Internet_facing_ip = 9.9.9.9" >> $test_file
    echo "Kernel_version = 5.4.0-42-generic" >> $test_file
    echo "kernel_build_string = #46~18.04.1.Ubuntu SMP" >> $test_file
    echo "arch = Linux-aarch64-lsb" >> $test_file
    echo "[telnet]" >> $test_file
    echo "enabled = true" >> $test_file

    cp $newbanner $test_banner
    ;;
    [dD])
    echo "[telnet]" >> $test_file
    echo "enabled = true" >> $test_file
    ;;
    *)
    echo -n "Please enter a valid option"
    ;;
esac


   # if [ -e $file ]; then
    #        echo "this is added content"
    #else
    #        echo "file does not exist"
    #fi
#}


