FROM node:14-buster
LABEL maintainer="Adrian Gschwend <adrian.gschwend@zazuko.com>"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y default-jre-headless locales
RUN sed -i -e 's/# \(en_US\.UTF-8 .*\)/\1/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8    

