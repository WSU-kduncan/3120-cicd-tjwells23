#!/bin/bash


sudo docker pull tjwells023/tjwellsdocker:latest
sudo docker stop $(sudo docker ps -q --filter ancestor=my-website)
sudo docker rm $(sudo docker ps -a -q --filter ancestor=my-website)
sudo docker run tjwells023/tjwellsdocker:latest
