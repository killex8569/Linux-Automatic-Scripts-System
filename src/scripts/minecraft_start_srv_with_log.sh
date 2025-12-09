#!/bin/bash

JAVA=java
XMS=2G
XMX=4G
FICHIER_JAR="forge-1.21.10-60.1.0-shim.jar"


LOG_DIR="/root/logs_serveur" # Chemin vers les logs
mkdir -p "$LOG_DIR" # Creation du chemin vers les logs si pas creer

user_start="$USER" # Permet de capturer le user qui start
chemin_serveur="$(pwd)" # permet de prendre le chemin du fichier
nom_serveur="$(basename "$chemin_serveur")" # permet de prendre uniquement le nom du serveur sans /root (Avec chatgpt)

# Fichier log avec date + nom du serveur
LOG_FILE="$LOG_DIR/$(date '+%Y-%m-%d_%H-%M-%S')_${nom_serveur}.log"

echo "=== Démarrage du serveur ===" >> "$LOG_FILE"
echo "Date : $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"
echo "Utilisateur : $user_start" >> "$LOG_FILE"
echo "Dossier : $chemin_serveur" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

$JAVA -Xms$XMS -Xmx$XMX -jar $FICHIER_JAR nogui >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "=== Serveur arreter : $(date '+%Y-%m-%d %H:%M:%S') ===" >> "$LOG_FILE" # date et heure de l'arret du serveur(avec Chatgpt)