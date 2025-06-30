#!/bin/bash

clear
echo "🔧 Starting Fox VPS Setup..."
sleep 1

# Run root shell simulation message (لكن ما يدخلش فعليًا)
echo "🔄 Switching to root user..."
sleep 1

# Check if running as root, لو مش root نقول له يشغل sudo
if [[ $EUID -ne 0 ]]; then
    echo "❌ This script needs root access. Please run it using: sudo bash install.sh"
    exit 1
fi

echo "📦 Updating system packages..."
apt update -y
sleep 1

echo "⬆️ Upgrading system..."
apt upgrade -y
sleep 1

echo "🐳 Installing Docker Compose..."
apt install docker-compose -y
sleep 1

echo "📟 Installing Neofetch..."
apt install neofetch -y
sleep 1

echo "🖥️ Running Neofetch..."
neofetch
sleep 2

echo "✅ Fox VPS Setup Complete!"
