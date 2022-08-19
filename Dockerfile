FROM centos:latest 
COPY /c/Users/SRS/micro_service/srs-demo/target/*.war /opt/apache-tomcat-9.0.65/webapps/
