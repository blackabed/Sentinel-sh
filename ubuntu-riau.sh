#!/bin/bash

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent and SiteToken
wget https://github.com/samphoerna/Sentinel-Repo/raw/main/Linux/SentinelAgent_linux_x86_64_v24_2_1_8.deb
wget https://raw.githubusercontent.com/blackabed/Sentinel-sh/main/riau.txt

# Install Sentinel Agent
sudo dpkg -i SentinelAgent_linux_x86_64_v24_2_1_8.deb

# Set the management token
/opt/sentinelone/bin/sentinelctl management token set $(cat riau.txt)

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start
