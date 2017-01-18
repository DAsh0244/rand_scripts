#!/usr/bin/env bash

# make a more nice update process huh...
echo Starting update process...

# Python2
echo updating Python2 packages...
sudo python update_pack.py
echo updating Python2 packages complete!

#Python3
echo updating Python3 packages ...
sudo python3 update_pack.py
echo updating Python3 packaged complete!

echo Finished updating packages!
