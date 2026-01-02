FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR
COPY Hightech.war /usr/local/tomcat/webapps/Hightech.war

# Expose default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
