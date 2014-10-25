FROM ubuntu:12.04
MAINTAINER parasquid <tristan.gomez@gmail.com>

RUN apt-get update

RUN apt-get -y install software-properties-common python-software-properties
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update

RUN apt-get -y install nginx
ADD ./docker/nginx.conf /etc/nginx/nginx.conf
ADD ./docker/default /etc/nginx/sites-available/default
