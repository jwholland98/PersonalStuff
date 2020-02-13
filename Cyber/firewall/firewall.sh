#!/bin/bash

if (($# != 0)); then
    if (($1 == "-help")); then
        echo "help menu here"
    fi
fi
while [[ true ]]; do
    echo "What kind of rule would you like to add?
          1.) Accept
          2.) Forward
          3.) Block
          4.) Quit"
    read -p ""
    clear
    if [[ $REPLY =~ ^[0-3]$ ]]; then
        if (($REPLY == 1 )); then
            echo "You entered: 1"
            break
        fi
        if (($REPLY == 2 )); then
            echo "You entered: 2"
            break
        fi
        if (($REPLY == 3 )); then
            echo "You entered: 3"
            break
        fi
        if (($REPLY == 4 )); then
            echo "Goodbye..."
            exit 0
        fi
    else
        echo "invalid input"
    fi
done
echo "saving changes..."
#sudo /sbin/iptables-save
