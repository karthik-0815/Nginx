# Pull the desired base image from Docker Hub
FROM nginx:latest

# Copy the custom nginx.conf file to the container
COPY default.conf /etc/nginx/conf.d/default.conf

