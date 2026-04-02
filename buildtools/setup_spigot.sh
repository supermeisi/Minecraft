#!/bin/bash

set -e  # Stop on error

# Stop server
systemctl stop spigot || true

# Update system and install dependencies
apt update && apt upgrade -y
apt install -y openjdk-21-jdk git python3 screen wget

# Compile Spigot
sudo -u $MC_USER wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
sudo -u $MC_USER java -jar BuildTools.jar --rev "$SPIGOT_VERSION"
