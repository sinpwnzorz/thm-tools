#!/bin/bash

# Handle rshell tools
echo "Installing Sinpwnzorz's Try-Hack-Me toolbox!"
echo "Installing Rshells"
rm -f /tmp/Rshells && mkdir /tmp/Rshells && cp Rshells/* /tmp/Rshells/ && export PATH="$PATH:/tmp/Rshells/" && rm -f Rshells/ && echo "Rshells DONE - type \"rshell\" for help"
# Contains:
# Rshells/rshell
# Rshells/genrshell-php
# Rshells/other shells etc.

# Handle OTHER tools
# Contains:
# Othertool/asdf1.sh
# Othertool5/bla.txt
