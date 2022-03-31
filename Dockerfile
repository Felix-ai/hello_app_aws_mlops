# Fetch Ubuntu image
FROM public.ecr.aws/lts/ubuntu:latest

# Maintainer
LABEL AUTHOR "Felix-ai"

# Turn off questions
ARG DEBIAN_FRONTEND=noninteractive

# Update and install packages you need
RUN apt-get -y update && apt-get install -y apache2

# Copy message.py to local folder
RUN echo "<h1>Hello world from $(hostname -f)!</h1>" > /var/www/html/index.html

# Start the server
CMD ["apachectl", "-D", "FOREGROUND"]