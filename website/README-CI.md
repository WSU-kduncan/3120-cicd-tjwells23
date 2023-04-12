## Tyler Wells

# CI Project Overview
- The goal of the first part of this project was to dockerize the website by installing docker and creating a container for the website

# Install Docker Desktop
- Head to docker website and install docker desktop
- follow directions on enabling WSL2 Instnace


# Extract tar file and execute website

- extracting the tar file to get access to the html files and contents
- make sure docker is installed with WSL2 instance
- creating a dockerfile with instructions on creating an image
- I copied the Index.html file into the dockerfile then used the command  docker build -t my-website . and docker run --name some-nginx -d -p 8080:32768 my-website to run the website

- added site content to repo


# Run Project Locally
- Follow instructions of installing docker to your machine and enabling wsl2

- build the docker container using the dockerfile 
- run the commands docker build -t my-website . to build website
- run the command  docker run --name some-nginx -d -p 8080:32768 my-website
- http://localhost:8080/ should be the location of website

# How to create public repo

- on docker hub website you can hit create repository
- set to public

# Aunthenticate
- use the docker login command in your local terminal
- to push a container use docker push command and tag with username and docker image name


# Secrets
- in github settings of repo select 'secrets'
- click 'new repository secret' and name both secrets DOCKER_USERNAME and DOCKER_PASSWORD

# GitHub Workflow
- defined in docker-build.yml
- logs into dockerhub using the DOCKER_USERNAME and DOCKER_PASSWORD
- pushes the image to the docker hub with the tag 'latest'. then pushed to the main branch


# Continuous Deployment Setup
- This project uses a continuous deployment (CD) setup to automate the process of building, testing, and deploying changes to a running application.

# Installing Docker on the Instance
- Install docker on your EC2 Instance
- Ubuntu: https://docs.docker.com/engine/install/ubuntu/

# Container Restart
- Included in the deployment folder of this project is a shell script restart-container.sh that pulls the latest version of the Docker image from DockerHub and restarts the container. 

# Webhook Setup
- Follow instructions on adnanh's webhook (https://github.com/adnanh/webhook) to set up the webhook 

# Webhook task definition file
- create a new file named webhook.json in the /etc/webhook/ directory...create a script that defines a webhook that will execute the restart_container.sh script located in the /home/ubuntu/deployment/ directory when a request is received. 

# Configure GitHub or DockerHub to message the webhook0

- For GitHub, we can go to the repository settings, click on "Webhooks", and then click on "Add webhook". We need to enter the URL of the webhook listener, which should be in the form http://<INSTANCE_IP>:9000/hooks/<WEBHOOK_ID>, where <INSTANCE_IP> is the public IP address of the instance and <WEBHOOK_ID> is the ID of the webhook defined in the webhook.json file.

- For DockerHub, we can go to the repository settings, click on "Webhooks", and then click on "Create webhook". We need to enter the URL of the webhook listener, which should be in the form http://<INSTANCE_IP>:9000/hooks/<WEBHOOK_ID>, where <INSTANCE_IP> is the public IP address of the instance and <WEBHOOK_ID> is the ID of the webhook defined in the webhook.json file.
