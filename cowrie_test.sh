#!bin/bash
cowrie_test () {
    echo "this is a test"
    file="././etc/cowrie.cfg"
    if [ -e $file ]; then
            echo "this is added content"
    else
            echo "file does not exist"
    fi
}


