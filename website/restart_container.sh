#!/bin/bash


sudo docker pull my-website:latest
sudo docker stop $(sudo docker ps -q --filter ancestor=my-website)
sudo docker rm $(sudo docker ps -a -q --filter ancestor=my-website)
sudo docker run -d -p 80:80 my-website:latest
