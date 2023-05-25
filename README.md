# (In Ubuntu)Clone my git and build docker image 
## Make sure you are in the Nginx directory that you cloned.
## Run these commands 
 - docker build -t test .
 - docker run -d --name nginx-base --network host test
## Create RMC application containers also as below
 - docker run -d --name container-name --network host image-name
 - Don't forget to replace 'container-name' with the container name of your choice and 'image-name' with the image name that you build
 - Make sure you have rmc applications running on localhost:8080 and localhost:8081 port numbers for load balancing to happen.

## Create TSC Application Containers same as above.
 - Make sure your application runs on locahost:8083 port number
