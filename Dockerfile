FROM nginx:latest

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "git"]
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "tomcat"]
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "jenkins"]
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "https"]
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "httpd"]

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "java"]

EXPOSE 80 443 444

CMD ["nginx", "-g", "daemon off;"]
