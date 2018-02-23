FROM nginx:latest
MAINTAINER Henry kangkai-iri@360.cn

ADD 2048-master /usr/share/nginx/html
ADD testfile /root/
ADD default.conf /etc/nginx/conf.d/
EXPOSE 3000

