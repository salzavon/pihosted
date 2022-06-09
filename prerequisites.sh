#!/bin/bash

function error {
  echo -e "\\e[91m$1\\e[39m"
  exit 1
}

#make docker directory
echo "Creating directory..."
sudo mkdir -p /docker || error "Failed to create docker folder!"

#complete
echo "Setup complete."