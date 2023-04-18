# This may be needed for using nvidia-drivers in docker. 
# The sytem was having a few issues and with some research this seemed to be the best 
# solution. 
#
# Nvidia Docker
cd ${HOME}
sudo apt update
sudo apt install curl
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
sudo systemctl restart docker

# RECOMMEND TO RESTART SYSTEM AFTER THIS INSTALLATION
