#!/usr/bin/env bash

# make a more nice update process huh...
echo "Starting update process..."

# Python2
echo "updating Python2 packages..."
sudo python -c "exec('import pip \nfrom subprocess import call \nfor dist in pip.get_installed_distributions(): \n\tcall(\"python -m pip install --upgrade \" + dist.project_name, shell=True)')"
echo "updating Python2 packages complete!"

#Python3
echo "updating Python3 packages ..."
sudo python3 -c "exec('import pip \nfrom subprocess import call \nfor dist in pip.get_installed_distributions(): \n\tcall(\"python3 -m pip install --upgrade \" + dist.project_name, shell=True)')"
echo "updating Python3 packaged complete!"

echo "Finished updating packages!"

