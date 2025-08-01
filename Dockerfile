# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default web apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to webapps directory
COPY GENERIC\ LANDING\ PAGE.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]