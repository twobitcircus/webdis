FROM debian
MAINTAINER Nicolas Favre-Felix <n.favrefelix@gmail.com>

RUN apt-get update -y 
RUN apt-get -y --force-yes install wget make gcc libevent-dev

COPY ./ /webdis
RUN cd /webdis && make && make install

CMD /usr/local/bin/webdis /webdis/webdis.json && bash

EXPOSE 7379
