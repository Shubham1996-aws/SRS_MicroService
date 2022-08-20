FROM tomcat:8.0.20-jre8
COPY target/srs-demo.war /usr/local/tomcat/webapps/srs-demo.war
