#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

function check_internet() {
  printf "Checking if you are online..."
  wget -q --spider http://github.com
  if [ $? -eq 0 ]; then
    echo "Server is online. Continuing."
  else
    error "Server is offline. Connect to the internet and run this script again."
  fi
}

check_internet

#docker install
curl -sSL https://get.docker.com | sh || error "Failed to install Docker."
sudo usermod -aG docker $USER || error "Failed to add user to the Docker usergroup."

#docker compose prerequisites
sudo apt-get install libffi-dev libssl-dev || error "Failed to install libffi/libssl."
sudo apt install python3-dev || error "Failed to install Python ."
sudo apt-get install -y python3 python3-pip || error "Failed to install Pip."

#docker compose install
sudo pip3 install docker-compose || error "Failed to install Docker Compose."

#enable docker autostart
sudo systemctl enable docker || error "Failed to enable Docker autostart."

#complete
echo "Setup Complete. Logout or Reboot for changes to take effect."