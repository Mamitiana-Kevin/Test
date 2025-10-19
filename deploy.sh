#!/bin/bash

# ==============================
# Variables à modifier
# ==============================
PROJECT_NAME="Test"                # Nom du projet
SOURCE_DIR="/home/mamitiana/Documents/GitHub/$PROJECT_NAME"   # Dossier local de ton projet
TOMCAT_DIR="/opt/tomcat"                    # Dossier Tomcat
TOMCAT_USER="tomcat"                         # Utilisateur qui fait tourner Tomcat
WEBAPPS_DIR="$TOMCAT_DIR/webapps"
# ==============================

echo "🚀 Déploiement du projet $PROJECT_NAME sur Tomcat"

# 1️⃣ Supprimer l'ancien déploiement
if [ -d "$WEBAPPS_DIR/$PROJECT_NAME" ]; then
    echo "Suppression de l'ancien déploiement..."
    sudo rm -rf "$WEBAPPS_DIR/$PROJECT_NAME"
fi

# 2️⃣ Copier le projet
echo "Copie du projet dans Tomcat..."
sudo cp -r "$SOURCE_DIR" "$WEBAPPS_DIR/"

# 3️⃣ Changer le propriétaire
echo "Changement du propriétaire pour $TOMCAT_USER..."
sudo chown -R $TOMCAT_USER:$TOMCAT_USER "$WEBAPPS_DIR/$PROJECT_NAME"

# 4️⃣ Ajuster les permissions
echo "Ajustement des permissions..."
sudo chmod -R 755 "$WEBAPPS_DIR/$PROJECT_NAME"

# 5️⃣ Redémarrer Tomcat
echo "Redémarrage de Tomcat..."
sudo systemctl restart tomcat

echo "✅ Déploiement terminé. Vérifie dans le navigateur : http://localhost:8080/$PROJECT_NAME/"
