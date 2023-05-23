#clone my git and build docker image 
## Make sure you are in the Nginx directory that you cloned.
## Run these commands 
 - docker build -t test .
 - docker run -d --name nginx-base --network host test
## Create RMC application containers also as below
 - docker run -d --name <container-name> --network host <image-name>
 - Don't forget to replace '<container-name>' with your container name and '<image-name>' with your image name 

## Create TSC Application Containers same as above.
