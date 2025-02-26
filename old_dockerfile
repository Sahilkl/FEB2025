FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install apache2 -y
WORKDIR /var/www/html
COPY index.html .
EXPOSE 80
CMD ["apache2ctl", "-D","FOREGROUND"]
