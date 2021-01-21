FROM ubuntu:14.04
MAINTAINER "Suho Park <sooho410@dshub.cloud>"
LABEL "purpose"="webserver practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo heelo >>test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
