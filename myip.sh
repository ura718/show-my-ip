#!/bin/bash

myip=$(/usr/bin/curl -s http://checkip.amazonaws.com)

orgname=$(/usr/bin/whois $myip | /usr/bin/grep -E 'Privado|OrgName' | /usr/bin/cut -d: -f2- )

printf "$myip $orgname \n"  
