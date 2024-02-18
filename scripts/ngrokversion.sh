#!/bin/bash

get_ngrok_version() {
    # Shell script to get ngrok version
    ngrok_version=$(ngrok --version | grep -oP '(?<=ngrok version )[^ ]+')
    echo "$ngrok_version"
}

# Call the function
get_ngrok_version
