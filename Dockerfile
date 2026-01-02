FROM tomcat:9.0

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
