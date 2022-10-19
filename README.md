# Phalcon-Docker

## Getting started with Docker

 1. Download docker-desktop from the link: 
[Docker Hub](https://hub.docker.com/)
 2. Install and setup docker according to the setup wizard
 3. Launch the Docker service

## Setting up environment (vscode)

 1. Clone git environment
 2. Within the IDE (vscode) , install the following extensions
	 a. Docker
	 b. Dev Containers
 3. docker-compose up -d
 4. Enter the command`Ctrl + shift + p` 
 5. Type `Dev Containers: Attach to running container` this will open an IDE instance within the docker container. 
 6. Once this has been completed, a virtual link between the folder on your machine and the folder in the virtual machine is created. This means that any change to either folders will by synced unless set to be ignored by docker. 
 7. Navigate to localhost:8080 to see the phpinfo of the current set up
 8.  Guide followed to help with phalcon-docker setup [medium article](https://medium.com/@rogsilva/working-with-phalcon-framework-and-docker-fef3fe5b85c8)
 9.  For more information on docker [docker documentation](https://docs.docker.com/)