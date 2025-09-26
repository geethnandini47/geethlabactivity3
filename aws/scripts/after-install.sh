#!/bin/bash
set -xe

# Variables
S3_BUCKET="codedeploystack-webappdeploymentbucket-lymvz0np9mdj"
WAR_FILE="SpringBootHelloWorldExampleApplication.war"
TOMCAT_WEBAPPS="/usr/local/tomcat9/webapps"

# Copy WAR file from S3 bucket to Tomcat webapps folder
aws s3 cp s3://$S3_BUCKET/$WAR_FILE $TOMCAT_WEBAPPS/$WAR_FILE

# Ensure the ownership and permissions are correct
chown -R tomcat:tomcat $TOMCAT_WEBAPPS
