#!/bin/bash
# =============================================
# MINI FRAMEWORK - BUILD & DEPLOY SCRIPT
# =============================================

APP_NAME="Test"
TOMCAT_WEBAPPS="/opt/tomcat/latest/webapps"  # CHANGE THIS TO YOUR TOMCAT PATH
# Example: /Users/yourname/tomcat/webapps
# Example: /var/lib/tomcat9/webapps

echo "========================================="
echo "   BUILDING $APP_NAME.war"
echo "========================================="

# 1. Clean old build
sudo rm -rf WEB-INF/classes/*
sudo rm -f $APP_NAME.war
sudo rm -f "$TOMCAT_WEBAPPS/$APP_NAME.war"
sudo rm -rf "$TOMCAT_WEBAPPS/$APP_NAME"

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
echo "   Open: http://localhost:8080/$APP_NAME/hello"
echo "   Check logs: $TOMCAT_WEBAPPS/../logs/catalina.out"
echo "========================================="