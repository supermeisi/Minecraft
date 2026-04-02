#!/bin/bash

SPIGOT_VERSION=latest

set -e  # Stop on error

# Compile Spigot
wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev "$SPIGOT_VERSION"
