# Pull the desired base image from Docker Hub
FROM nginx:latest

# Run commands to create containers or perform other operations
RUN docker create --name nginx-base -p 8080:80 nginx:latest
RUN docker start mycontainer
RUN docker cp ~/default.conf nginx base:/etc/nginx/conf.d/default.conf
RUN docker exec nginx-base nginx -t
RUN docker exec nginx-base nginx -s reload
