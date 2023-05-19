# Pull the desired base image from Docker Hub
FROM nginx:latest

# Run commands to create containers or perform other operations
COPY default.conf default.conf
RUN docker create --name nginx-base1 -p 80:80 nginx:latest
RUN docker start nginx-base1
RUN docker cp /default.conf nginx-base1:/etc/nginx/conf.d/default.conf
RUN docker exec nginx-base1 nginx -t
RUN docker exec nginx-base1 nginx -s reload
