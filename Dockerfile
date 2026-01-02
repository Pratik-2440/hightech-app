FROM tomcat:9.0

# Remove default apps (this fixes popup)
RUN rm -rf /usr/local/tomcat/webapps/*

# OPTIONAL: remove tomcat-users.xml (extra safety)
RUN rm -f /usr/local/tomcat/conf/tomcat-users.xml

# Deploy your app
COPY Hightech.war /usr/local/tomcat/webapps/Hightech.war

EXPOSE 8080
