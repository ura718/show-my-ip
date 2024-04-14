#!/bin/bash

#
# Checks your ip and organization assigned it to you
#

if [ -f /usr/bin/grep ]; then
    GREP='/usr/bin/grep'
else 
    GREP='/bin/grep'
fi


# Get your assigned ip
myip=$(/usr/bin/curl -s http://checkip.amazonaws.com)

# Identify which organization assigned you ip
orgname=$(/usr/bin/whois $myip | $GREP -E 'Privado|OrgName' | /usr/bin/cut -d: -f2- )

printf "$myip $orgname \n"  
