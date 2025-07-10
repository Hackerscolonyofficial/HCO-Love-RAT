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

# ✅ ADDING HCO SHORTCUT COMMANDS
echo -e "\e[92m[+] Adding shortcut commands...\e[0m"
{
echo 'alias loveRat="am start -a android.intent.action.VIEW -d https://pokaing7.github.io/Subscribe-hacker-colony-/"'
echo 'alias hcoTelegram="am start -a android.intent.action.VIEW -d https://t.me/hackersColony"'
echo 'alias hcoInsta="am start -a android.intent.action.VIEW -d https://instagram.com/hackers_colony_official"'
echo 'alias hcoDiscord="am start -a android.intent.action.VIEW -d https://discord.gg/Xpq9nCGD"'
echo 'alias hcoWebsite="am start -a android.intent.action.VIEW -d https://hackerscolonyofficial.blogspot.com/?m=1"'
} >> ~/.bashrc

source ~/.bashrc

echo -e "\n\e[92m[✔] Setup complete!\e[0m"
echo -e "Type \e[93mloveRat\e[0m to open Hackers Colony subscription."
echo -e "Type \e[93mhcoTelegram\e[0m, \e[93mhcoInsta\e[0m, \e[93mhcoDiscord\e[0m, or \e[93mhcoWebsite\e[0m anytime for quick access.\n"
