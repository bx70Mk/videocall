#!/usr/bin/env bash

# Function to check the latest version of ngrok
function get_latest_ngrok_version() {
    latest_version=$(curl -s https://ngrok.com/download | grep -oP 'Stable version: \K[0-9]+\.[0-9]+\.[0-9]+')
    echo "$latest_version"
}

# Check if ngrok is installed
if command -v ngrok &> /dev/null; then
    installed_version=$(ngrok version | grep -oP 'version \K[0-9]+\.[0-9]+\.[0-9]+')
    echo "ngrok is already installed (version $installed_version)"
else
    echo "ngrok is not found, installing..."
    wget -q -nc https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
    unzip -qq -n ngrok-stable-linux-amd64.zip
    echo "ngrok installed successfully"
fi

# Check for the latest version of ngrok
latest_version=$(get_latest_ngrok_version)
echo "Latest ngrok version available: $latest_version"
