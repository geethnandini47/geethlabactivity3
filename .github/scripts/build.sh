#!/bin/bash
set -xe

echo "=== Running Build Script on GitHub Actions ==="

# Navigate into the app folder
cd $GITHUB_WORKSPACE/spring-boot-hello-world-example

# Build the WAR file using Maven
mvn -Dmaven.test.skip=true clean install

echo "=== Build completed. WAR file is in target/ directory ==="
