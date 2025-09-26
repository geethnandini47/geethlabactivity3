#!/bin/bash
set -xe

# Copy WAR file from S3 bucket to Tomcat webapps folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-lymvz0np9mdj/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war

# Ensure the ownership and permissions are correct
chown -R tomcat:tomcat /usr/local/tomcat9/webapps
