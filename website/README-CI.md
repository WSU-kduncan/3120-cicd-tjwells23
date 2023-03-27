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