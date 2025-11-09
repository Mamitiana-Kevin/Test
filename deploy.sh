APP_NAME="Test"
TOMCAT_WEBAPPS="/opt/tomcat/webapps"  # CHANGE THIS TO YOUR TOMCAT PATH


echo "========================================="
echo "   BUILDING $APP_NAME.war"
echo "========================================="

# 1️⃣ Supprimer l'ancien déploiement
sudo rm -rf WEB-INF/classes/*
if [ -d "$WEBAPPS_DIR/$PROJECT_NAME" ]; then
    echo "Suppression de l'ancien déploiement..."
    sudo rm -rf "$WEBAPPS_DIR/$PROJECT_NAME"
fi

# 2. Compile controllers
echo "Compiling controllers..."
javac -cp "WEB-INF/lib/*" \
      -d WEB-INF/classes \
      src/test/controllers/*.java

if [ $? -ne 0 ]; then
    echo "COMPILATION FAILED!"
    exit 1
fi

# 3. Build WAR
echo "Creating $APP_NAME.war..."
jar cf $APP_NAME.war \
    WEB-INF \
    index.html

# 4. Deploy to Tomcat
echo "Deploying to Tomcat: $TOMCAT_WEBAPPS/"
sudo cp $APP_NAME.war "$TOMCAT_WEBAPPS/"

echo "========================================="
echo "   SUCCESS! DEPLOYED!"
echo "   Open: http://localhost:8080/$APP_NAME/"
echo "   Check logs: $TOMCAT_WEBAPPS/../logs/catalina.out"
echo "========================================="