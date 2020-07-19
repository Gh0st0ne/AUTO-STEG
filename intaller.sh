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

# Installation menu
menu() {
    logo
    echo -e " [01] Install in Termux"
    echo -e " [02] Install in Linux"
    echo -e " [00] Abort"
    echo ""
    read -p " Choose environment: " act

    if [[ $act == "01" || $act == "1" ]]; then
    pkg install steghide
    elif [[ $act == "02" || $act == "2" ]]; then
    sudo apt install steghide
    elif [[ $act == "00" || $act == "0" ]]; then
    logo
    sleep 3
    clear
    exit
    fi
}
menu
