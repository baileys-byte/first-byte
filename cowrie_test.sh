#!/bin/bash
#cowrie_test (){

   test_file="cowrie.cfg"
   test_banner="motd.txt"
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
    #echo $option
    if [ -e $test_file ]; then
            cp /dev/null $test_file
    else
            touch $test_file
    fi
    ;;
    [bB])
    #echo $option
    ;;
    [cC])
    #echo $option
    ;;
    [dD])
    #echo $option
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


