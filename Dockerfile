# Use the official Ubuntu base image
FROM ubuntu

# Update the package lists
RUN apt-get update 

# Install Apache
RUN apt-get install -y apache2

# Copy the current directory contents into the container at /var/www/html/
ADD . /var/www/html/

# Inform Docker that the container is listening on port 80
EXPOSE 80

# Start Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
