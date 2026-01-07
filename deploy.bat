@echo off
setlocal

:: --- CONFIGURATION ---
:: Modifiez ce chemin vers votre dossier Tomcat
set "TOMCAT_WEBAPPS=C:\utils\apache-tomcat-10.1.28\webapps"

:: 1. Build avec Maven
echo 1. Building with Maven...
call mvn clean package

if %ERRORLEVEL% neq 0 (
    echo MAVEN BUILD FAILED!
    pause
    exit /b %ERRORLEVEL%
)

:: 2. Nettoyage de l'ancienne version
echo 2. Cleaning old deployment...
if exist "%TOMCAT_WEBAPPS%\Test.war" del /f /q "%TOMCAT_WEBAPPS%\Test.war"
if exist "%TOMCAT_WEBAPPS%\Test" rd /s /q "%TOMCAT_WEBAPPS%\Test"

:: 3. Déploiement du nouveau WAR
echo 3. Copying new WAR to Tomcat...
copy "target\Test.war" "%TOMCAT_WEBAPPS%\"

echo.
echo DEPLOYED SUCCESSFULLY!
echo Open: http://localhost:8080/Test
pause