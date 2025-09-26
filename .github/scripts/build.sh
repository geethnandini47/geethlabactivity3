#!/bin/bash
set -xe

echo "=== Running AfterInstall script ==="

# Go to home directory
cd /home/ec2-user

# Download the latest WAR file from your S3 Deployment Bucket
aws s3 cp s3://codedeploystack-webappdeploymentbucket-lymvz0np9mjd/spring-boot-hello-world-example.war /home/ec2-user/app.war

# Ensure proper permissions
chmod 755 /home/ec2-user/app.war

echo "=== AfterInstall script completed successfully ==="
