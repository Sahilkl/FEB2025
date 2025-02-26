FROM ubuntu:latest

# Update system and install Apache
RUN apt update && apt upgrade -y
RUN apt install apache2 -y

# Set the working directory
WORKDIR /var/www/html

# Ensure index.html is copied correctly
ADD index.html .

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
