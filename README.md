#clone my git and build docker image 
## Make sure you are in the Nginx directory that you cloned.
## Run these commands 
 - docker build -t test .
 - docker run -d --name nginx-base -p 80:80 test
## Create RMC application containers in 8081:8080 and 8082:8080 ports

## Create TSC Application Containers in 8083:8080 port.
