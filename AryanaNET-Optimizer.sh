#!/bin/bash

GREEN='\e[32m'
CYAN='\e[36m'
WHITE='\e[97m'
YELLOW='\e[93m'
if [[ "$(tput colors)" -ge 256 ]]; then
  RED='\e[38;5;196m'
  ORANGE='\e[38;5;202m'
  PINK='\e[38;5;205m'
  RESET='\e[0m'
elif [[ "$(tput colors)" -ge 8 ]]; then
  RED='\e[1;31m'
  ORANGE='\e[1;33m'
  PINK='\e[95m'
  RESET='\e[0m'
else
  RED=''; ORANGE=''; PINK=''; RESET=''
fi

echo -e "${GREEN}======================================================${RESET}"

echo -e "${WHITE}       AryanaNET Optimizer Tool${RESET}"
echo -e "${WHITE}         ${CYAN}https://github.com/your-username/AryanaNET-Optimizer${RESET}"
echo -e "${WHITE}     Developed by: ${CYAN}https://github.com/your-username${RESET}"

echo -e "${GREEN}======================================================${RESET}"

URL="https://raw.githubusercontent.com/your-username/AryanaNET-Optimizer/main/toolbox_1.0.0.deb"

echo -e "\033[36m📥 Downloading toolbox script...\033[0m"
if wget "$URL"; then
    dpkg -i "toolbox_1.0.0.deb"
    echo -e "\033[32m✅ Installed successfully at:\033[0m \033[1m$DEST\033[0m"
    echo -e "\033[36m🚀 You can now run it using:\033[0m \033[1;33mtoolbox\033[0m"
else
    echo -e "\033[31m❌ Failed to download toolbox script.\033[0m"
    exit 1
fi
