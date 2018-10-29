FROM node:10-jessie
MAINTAINER Adrian Gschwend <adrian.gschwend@zazuko.com>

RUN echo 'deb http://ftp.debian.org/debian jessie-backports main' >> /etc/apt/sources.list 
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y -t jessie-backports  openjdk-8-jre-headless locales
RUN sed -i -e 's/# \(en_US\.UTF-8 .*\)/\1/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8    

