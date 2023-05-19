FROM openjdk:20
FROM karthii1530/rmc:latest1
FROM karthii1530/rmc:latest2
RUN docker run -d --name nginx-base1 -p 80:80 nginx:latest
RUN docker cp ~/default.conf nginx base:/etc/nginx/conf.d/default.conf
RUN docker exec nginx-base nginx -t
RUN docker exec nginx-base nginx -s reload
RUN docker run -d --name instance1 -p 8081:8080 karthii15aug/rmc:latest1
RUN docker run -d --name instance1 -p 8082:8080 karthii15aug/rmc:latest1