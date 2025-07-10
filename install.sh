#!/bin/bash

# 😈 HCO-LOVE-RAT ❤️ by Hackers Colony

echo -e "\e[91m"
echo "┌─────────────────────────────────────────────┐"
echo "│        😈 HCO - LOVE - RAT  INSTALLER       │"
echo "└─────────────────────────────────────────────┘"
echo -e "\e[0m"

echo -e "\e[96m[★] Setting up Hackers Colony Environment...\e[0m"
sleep 1

echo -e "\e[92m[+] Updating packages...\e[0m"
apt update -y && apt upgrade -y

echo -e "\e[92m[+] Installing Git & Python...\e[0m"
pkg install git -y
pkg install python -y

# 🔐 KEY CHECK SYSTEM
echo -e "\n\e[93m[!] This tool is protected by a key.\e[0m"
read -p "🔐 Enter your HCO Access Key: " key

if [ "$key" != "HCO-KEY-8420611159" ]; then
    echo -e "\e[91m❌ Invalid key! Access denied.\e[0m"
    echo -e "\n\e[96m📩 To request access, DM Azhar:\e[0m"
    echo -e "📱 WhatsApp: https://wa.me/918420611159"
    echo -e "💬 Telegram: https://t.me/hackersColony"
    exit 1
fi

echo -e "\e[92m✅ Key accepted. Continuing setup...\e[0m"

# Add alias after key verification
echo -e "\e[93m[+] Creating command: \e[92mloveRat\e[0m"
echo 'alias loveRat="am start -a android.intent.action.VIEW -d https://pokaing7.github.io/Subscribe-hacker-colony-/"' >> ~/.bashrc
source ~/.bashrc

echo -e "\e[92m[✔] Done! Type \e[93mloveRat\e[92m to open Hackers Colony Subscribe Page.\e[0m"
