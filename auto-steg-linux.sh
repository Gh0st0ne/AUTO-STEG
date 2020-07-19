#!/bin/bash

logo() {
clear
echo ""
echo -e "\e[92m\e[1m                 ▄▄▄       █    ██ ▄▄▄█████▓ ▒█████  "
echo -e "\e[92m\e[1m                ▒████▄     ██  ▓██▒▓  ██▒ ▓▒▒██▒  ██▒"
echo -e "\e[92m\e[1m                ▒██  ▀█▄  ▓██  ▒██░▒ ▓██░ ▒░▒██░  ██▒"
echo -e "\e[92m\e[1m                ░██▄▄▄▄██ ▓▓█  ░██░░ ▓██▓ ░ ▒██   ██░"
echo -e "\e[92m\e[1m                 ▓█   ▓██▒▒▒█████▓   ▒██▒ ░ ░ ████▓▒░"
echo -e "\e[92m\e[1m                 ▒▒   ▓▒█░░▒▓▒ ▒ ▒   ▒ ░░   ░ ▒░▒░▒░ "
echo -e "\e[92m\e[1m                  ▒   ▒▒ ░░░▒░ ░ ░     ░      ░ ▒ ▒░ "
echo -e "\e[92m\e[1m                  ░   ▒    ░░░ ░ ░   ░      ░ ░ ░ ▒  "
echo -e "\e[92m\e[1m                      ░  ░   ░                  ░ ░  "
echo ""                                    
echo -e "\e[92m\e[1m                  ██████ ▄▄▄█████▓▓█████   ▄████     "
echo -e "\e[92m\e[1m                ▒██    ▒ ▓  ██▒ ▓▒▓█   ▀  ██▒ ▀█▒    "
echo -e "\e[92m\e[1m                ░ ▓██▄   ▒ ▓██░ ▒░▒███   ▒██░▄▄▄░    "
echo -e "\e[92m\e[1m                  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ░▓█  ██▓    "
echo -e "\e[92m\e[1m                ▒██████▒▒  ▒██▒ ░ ░▒████▒░▒▓███▀▒    "
echo -e "\e[92m\e[1m                ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░ ░▒   ▒     "
echo -e "\e[92m\e[1m                ░ ░▒  ░ ░    ░     ░ ░  ░  ░   ░     "
echo -e "\e[92m\e[1m                ░  ░  ░    ░         ░   ░ ░   ░     "
echo -e "\e[92m\e[1m                      ░              ░  ░      ░     "
echo -e "\e[95m           CODED BY: JAYSON CABRILLAS SAN BUENAVENTURA"  
echo ""                              
}

# Embed file to image
embed () {
    logo
    read -p " Enter cover file (image): " cf
    read -p " Enter file to embed (txt): " ef
    read -p " Enter your desired password: " pass
    steghide embed -ef $ef -cf $cf -p $pass 
    sleep 1
    echo "The $ef has been hide successfully."
}

# Extract from image
extract() {
    logo
    read -p " Enter stegofile (image): " sf
    read -p " Enter your password: " pass
    read -p " Enter output file: " xf
    steghide extract -sf $sf -p $pass -xf $xf
    sleep 1
    echo "The $sf has been extracted successfully."
}

# Information
info() {
    logo
    echo "STEGHIDE is a steganography program that is able to hide data in"
    echo "various kinds of image- and audio-files. The color-  respectivly"
    echo "sample-frequencies are not changed thus making the embedding re‐"
    echo "sistant against first-order statistical tests."
}

# Tool menu
menu() {
    logo
    echo -e " [01] Hide data on image"
    echo -e " [02] Extract data on image"
    echo -e " [03] Information"
    echo -e " [00] Exit"
    echo ""
    read -p " Choose action: " act

    if [[ $act == "01" || $act == "1" ]]; then
    embed
    elif [[ $act == "02" || $act == "2" ]]; then
    extract
    elif [[ $act == "03" || $act == "3" ]]; then
    info
    elif [[ $act == "00" || $act == "0" ]]; then
    logo
    sleep 3
    clear
    exit
    fi
}
menu

