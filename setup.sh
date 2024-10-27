#!/bin/bash

echo "Installing Sinpwnzorz's Try-Hack-Me toolbox!"

# Install Rshells
echo "Installing Rshells..."
{
    # Attempt to remove old Rshells directory
    rm -rf /tmp/Rshells && echo "Old Rshells directory removed."
} || {
    echo "Failed to remove old Rshells directory."
    exit 1
}
{
    # Create a new Rshells directory
    mkdir /tmp/Rshells && echo "Rshells directory created."
} || {
    echo "Failed to create Rshells directory."
    exit 1
}
{
    # Copy Rshell files
    cp Rshells/* /tmp/Rshells/ && echo "Rshells files copied."
} || {
    echo "Failed to copy Rshells files."
    exit 1
}
{
    # Update PATH
    export PATH="$PATH:/tmp/Rshells/" && echo "PATH updated to include Rshells."
} || {
    echo "Failed to update PATH."
    exit 1
}
{
    # Set executable permissions
    chmod +x /tmp/Rshells/* && echo "Executable permissions set for Rshells."
} || {
    echo "Failed to set executable permissions."
    exit 1
}

# Final success message
echo "Rshells installation DONE - type \"rshell\" for help."
