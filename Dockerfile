FROM nginx:latest
MAINTAINER Henry kangkai-iri@360.cn

ADD 2048-master /usr/share/nginx/html
ADD testfile /root/
EXPOSE 80

