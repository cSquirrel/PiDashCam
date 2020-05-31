#!/bin/bash

sudo cp dashcam.service /etc/systemd/system/dashcam.service
sudo systemctl enable dashcam.service 

