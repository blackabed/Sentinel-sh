#!/bin/bash

# Prompt user for SiteToken
read -p "Please enter the SiteToken: " site_token

# Create directory
mkdir -p sent1
cd sent1

# Download Sentinel Agent
wget https://github.com/samphoerna/Sentinel-Repo/raw/main/Linux/SentinelAgent_linux_x86_64_v24_2_1_8.rpm

# Install Sentinel Agent
sudo rpm -i --nodigest SentinelAgent_linux_x86_64_v24_2_1_8.rpm

# Set the management token with user input
/opt/sentinelone/bin/sentinelctl management token set "$site_token"

# Start the Sentinel agent
/opt/sentinelone/bin/sentinelctl control start
