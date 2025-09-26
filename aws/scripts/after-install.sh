version: 0.0
os: linux

files:
  - source: /
    destination: /home/ec2-user

hooks:
  AfterInstall:
    - location: aws/scripts/after-install.sh
      timeout: 300
      runas: root
  ApplicationStart:
    - location: aws/scripts/start-server.sh
      timeout: 300
      runas: root
  ApplicationStop:
    - location: aws/scripts/stop-server.sh
      timeout: 300
      runas: root
