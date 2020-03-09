#!/bin/bash

if (($# != 0)); then
    if (($1 == "-help")); then
        printf "This is a wrapper script for iptables. It is intended to make it easier to make and delete rules.\n\n
To use, simply answer the questions by answering the number from the that corresponds to what you want to do.\n\n
When prompted to enter a specific term such as an ip address, simply type out the term and hit enter.\n\n"
        exit 0
    fi
fi

while [[ true ]]; do
    echo "What do you want to do?"
    echo "1.) Add new rule"
    echo "2.) Delete a rule"
    echo "3.) List Current Rules"
    echo "4.) Output current rules to html"
    echo "5.) Help menu"
    echo "6.) Quit"
    read -p ""
    clear
    if [[ $REPLY =~ ^[1-6]$ ]]; then
        if (($REPLY == 1 )); then
            cmd="sudo iptables -A"
            while [[ true ]]; do
                echo "What kind of chain would you like to add?"
                echo "1.) Input"
                echo "2.) Forward"
                echo "3.) Output"
                echo "4.) Quit"
                read -p ""
                clear
                if [[ $REPLY =~ ^[1-4]$ ]]; then
                    if (($REPLY == 1 )); then
                        cmd+=" INPUT"
                        break
                    fi
                    if (($REPLY == 2 )); then
                        cmd+=" FORWARD"
                        break
                    fi
                    if (($REPLY == 3 )); then
                        cmd+=" OUTPUT"
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
            clear
            while [[ true ]]; do
                echo "Do you want to specify an interface?"
                echo "1.) Yes"
                echo "2.) No"
                echo "3.) Quit"
                read -p ""
                clear
                if [[ $REPLY =~ ^[1-3]$ ]]; then
                    if (($REPLY == 1 )); then
                        echo "What interface do you want to add? (Examples: eth0, lo, ppp0, etc)"
                        read -p ""
                        cmd+=" -i "$REPLY
                        break
                    fi
                    if (($REPLY == 2 )); then
                        break
                    fi
                    if (($REPLY == 3 )); then
                        echo "Goodbye..."
                        exit 0
                    fi
                else
                    echo "invalid input"
                fi
            done
            clear
            while [[ true ]]; do
                echo "Do you want to specify a protocol?"
                echo "1.) Yes"
                echo "2.) No"
                echo "3.) Quit"
                read -p ""
                clear
                if [[ $REPLY =~ ^[1-3]$ ]]; then
                    if (($REPLY == 1 )); then
                        echo "What protocol do you want to add? (Examples: tcp, udp, udplite, icmp, sctp, icmpv6, etc)"
                        read -p ""
                        cmd+=" -p "$REPLY
                        break
                    fi
                    if (($REPLY == 2 )); then
                        break
                    fi
                    if (($REPLY == 3 )); then
                        echo "Goodbye..."
                        exit 0
                    fi
                else
                    echo "invalid input"
                fi
            done
            clear
            while [[ true ]]; do
                echo "Do you want to specify a souce? (Hostname or IP-Address)"
                echo "1.) Yes"
                echo "2.) No"
                echo "3.) Quit"
                read -p ""
                clear
                if [[ $REPLY =~ ^[1-3]$ ]]; then
                    if (($REPLY == 1 )); then
                        echo "What source do you want to add?"
                        read -p ""
                        cmd+=" -s "$REPLY
                        break
                    fi
                    if (($REPLY == 2 )); then
                        break
                    fi
                    if (($REPLY == 3 )); then
                        echo "Goodbye..."
                        exit 0
                    fi
                else
                    echo "invalid input"
                fi
            done
            clear
            while [[ true ]]; do
                echo "Do you want to specify a destination port?"
                echo "1.) Yes"
                echo "2.) No"
                echo "3.) Quit"
                read -p ""
                clear
                if [[ $REPLY =~ ^[1-3]$ ]]; then
                    if (($REPLY == 1 )); then
                        echo "What dport do you want to add? (Examples: 22 (SSH), 443 (https), etc)"
                        read -p ""
                        cmd+=" --dport "$REPLY
                        break
                    fi
                    if (($REPLY == 2 )); then
                        break
                    fi
                    if (($REPLY == 3 )); then
                        echo "Goodbye..."
                        exit 0
                    fi
                else
                    echo "invalid input"
                fi
            done
            clear
            cmd+=" -j"

            while [[ true ]]; do
                echo "Do you want to Accept, Drop or Return connections?"
                echo "1.) Accept"
                echo "2.) Drop"
                echo "3.) Return"
                echo "4.) Quit"
                read -p ""
                clear
                if [[ $REPLY =~ ^[1-4]$ ]]; then
                    if (($REPLY == 1 )); then
                        cmd+=" ACCEPT"
                        break
                    fi
                    if (($REPLY == 2 )); then
                        cmd+=" DROP"
                        break
                    fi
                    if (($REPLY == 3 )); then
                        cmd+=" RETURN"
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
            echo "command: "$cmd
            eval $cmd
            break
        fi
        if (($REPLY == 2 )); then
            cmd="sudo iptables -D"
            while [[ true ]]; do
                echo "What kind of chain would you like to delete?"
                echo "1.) Input"
                echo "2.) Forward"
                echo "3.) Output"
                echo "4.) Quit"
                read -p ""
                if [[ $REPLY =~ ^[1-4]$ ]]; then
                    if (($REPLY == 1 )); then
                        cmd+=" INPUT"
                        break
                    fi
                    if (($REPLY == 2 )); then
                        cmd+=" FORWARD"
                        break
                    fi
                    if (($REPLY == 3 )); then
                        cmd+=" OUTPUT"
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
            echo "What line would you like to delete?"
            read -p ""
            cmd+=" "$REPLY
            #echo $cmd
            eval $cmd
            break
        fi
        if (($REPLY == 3 )); then
            sudo iptables -L --line-numbers
            echo ''
        fi
        if (($REPLY == 4 )); then
            echo "#para{
  border-style: double;
}

#head{
  font-weight: bold;
  text-decoration: underline;
}

#lables{
  text-decoration: underline;
}
" > stylesheet.css
            echo "<!Doctype html>
<html>
<head>
    <title>Firewall Rules</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
</head>
<body>
<h1>The following are the current rules for iptables:</h1>
<br>
<br>
<br>"> rules.html
            num=1
            echo "$(sudo iptables -L --line-number)" | while read line; do
                if (($num==2));then
                    echo "<p id=\"lables\">" >> rules.html
                fi
                if (($num==1));then
                    echo "<div id=\"para\">" >> rules.html
                    echo "<p id=\"head\">" >> rules.html
                fi
                echo "$line" >> rules.html
                echo "<br>" >> rules.html
                if (($num==2));then
                    echo "</p>" >> rules.html
                    num=$num+1
                fi
                if (($num==1));then
                    echo "</p>" >> rules.html
                    num=$num+1
                fi
                if [ -z "$line" ]; then
                    echo "</div>" >> rules.html
                    echo "<br>" >> rules.html
                    num=1
                fi
            done
            echo "</p>
</body>
</html>" >> rules.html
            firefox rules.html
        fi
        if (($REPLY == 5 )); then
          printf "This is a wrapper script for iptables. It is intended to make it easier to make and delete rules.\n\n
To use, simply answer the questions by answering the number from the that corresponds to what you want to do.\n\n
When prompted to enter a specific term such as an ip address, simply type out the term and hit enter.\n\n"
        fi
        if (($REPLY == 6 )); then
            echo "saving changes..."
            sudo /sbin/iptables-save
            clear
            echo "Goodbye..."
            exit 0
        fi
    else
        echo "invalid input"
    fi
done
