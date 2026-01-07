
# Build
mvn clean package
sudo cp target/Test.war /opt/tomcat/latest/webapps/

mvn install:install-file ^
    -Dfile="C:\Users\Mamitiana\Documents\GitHub\Test\src\main\webapp\WEB-INF\lib\framework.jar" ^
    -DgroupId=mg.school ^
    -DartifactId=mini-framework ^
    -Dversion=1.0 ^
    -Dpackaging=jar