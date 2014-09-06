# ubuntu 14.04 LAMP server
#

FROM  akyshr/ubuntu-sshd
MAINTAINER akyshr "akyshr@gmail.com"

# Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

# make sure the package repository is up to date
RUN apt-get update

RUN apt-get install -y mysql-server apache2 php5
RUN apt-get install -y  php5-mysql php5-intl php5-apcu php5-gd

# Copy the files into the container
ADD start_lamp.sh /src/start_lamp.sh
ADD README.md     /src/README.md
ADD init.sh     /src/init.sh

EXPOSE 80

# Start ssh services.
CMD ["/src/init.sh"]

