#!/bin/bash

clear
echo "🔧 Starting Fox VPS Setup..."
sleep 1

echo "🔄 Switching to root user..."
sudo su
sleep 1

echo "📦 Updating system packages..."
sudo apt update
sleep 1

echo "⬆️ Upgrading system..."
sudo apt upgrade -y
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
