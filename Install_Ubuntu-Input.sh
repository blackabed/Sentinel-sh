#!/bin/bash

# Prompt user for SiteToken
read -p "Please enter the SiteToken: " site_token

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent
wget https://github.com/samphoerna/Sentinel-Repo/raw/main/Linux/SentinelAgent_linux_x86_64_v24_2_1_8.deb

# Install Sentinel Agent
sudo dpkg -i SentinelAgent_linux_x86_64_v24_2_1_8.deb

# Set the management token with user input
/opt/sentinelone/bin/sentinelctl management token set "$site_token"

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start
