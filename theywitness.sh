#!/bin/zsh
echo "
    ███        ▄█    █▄       ▄████████ ▄██   ▄         ▄█     █▄   ▄█      ███     ███▄▄▄▄      ▄████████    ▄████████    ▄████████ 
▀█████████▄   ███    ███     ███    ███ ███   ██▄      ███     ███ ███  ▀█████████▄ ███▀▀▀██▄   ███    ███   ███    ███   ███    ███ 
   ▀███▀▀██   ███    ███     ███    █▀  ███▄▄▄███      ███     ███ ███▌    ▀███▀▀██ ███   ███   ███    █▀    ███    █▀    ███    █▀  
    ███   ▀  ▄███▄▄▄▄███▄▄  ▄███▄▄▄     ▀▀▀▀▀▀███      ███     ███ ███▌     ███   ▀ ███   ███  ▄███▄▄▄       ███          ███        
    ███     ▀▀███▀▀▀▀███▀  ▀▀███▀▀▀     ▄██   ███      ███     ███ ███▌     ███     ███   ███ ▀▀███▀▀▀     ▀███████████ ▀███████████ 
    ███       ███    ███     ███    █▄  ███   ███      ███     ███ ███      ███     ███   ███   ███    █▄           ███          ███ 
    ███       ███    ███     ███    ███ ███   ███      ███ ▄█▄ ███ ███      ███     ███   ███   ███    ███    ▄█    ███    ▄█    ███ 
   ▄████▀     ███    █▀      ██████████  ▀█████▀        ▀███▀███▀  █▀      ▄████▀    ▀█   █▀    ██████████  ▄████████▀   ▄████████▀  
                                                                                                                                     


      This is TheyWitness, a command line wrapper built by gr4y-r0se. If you do not have permission to run this, please stop now.

      Beginning scan on $(wc -l < $1) hosts.
"
nmap -p- -Pn -T4 -oX output.xml -iL $1  > /dev/null 2>&1
printf '%s\n' "Y" | eyewitness -x output.xml > /dev/null 2>&1 
rm output.xml
echo "\n\n\nScan complete. The report should open automatically, or you can find it under $(pwd)."