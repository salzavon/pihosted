# spicyservers ~ Pi Hosted
This repository is a collection of scripts for hosting a variety of server applications using Docker and Portainer onto Raspberry Pi's.

## Docker/Portainer Installation
Create a folder called 'docker' and use this folder for any docker installs.

Then run `docker-install.sh`, to install docker, docker-compose, and add the current user to the docker usergroup.

After a reboot, run `portainer-install.sh`, to install Portainer.io

Docker and Portainer should now be succesfully installed.

## Commissioning
Each role detailed below should be appointed to an individual pi, the roles are listed in order of importance:

### 1. Network Pi
