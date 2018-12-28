FROM nginx:latest 
MAINTAINER rajdev43@gmail.com 
COPY index.html /usr/share/nginx/html/
COPY scorekeeper.js /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
FROM ubuntu:15.04
COPY . /app
RUN make /app
CMD python /app/app.py
