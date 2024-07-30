#!/bin/bash

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent and SiteToken
wget https://github.com/samphoerna/Sentinel-Repo/raw/main/Linux/SentinelAgent_linux_x86_64_v24_2_1_8.rpm
wget https://raw.githubusercontent.com/alfianaas/swag/main/SiteToken.txt

# Install Sentinel Agent
sudo rpm -i --nodigest SentinelAgent_linux_x86_64_v24_2_1_8.rpm

# Set the management token
/opt/sentinelone/bin/sentinelctl management token set $(cat SiteToken.txt)

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start
