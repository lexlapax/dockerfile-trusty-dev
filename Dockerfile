FROM ubuntu:trusty
MAINTAINER Lex Lapax <lexlapax@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://us.archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu trusty-updates main universe" >> /etc/apt/sources.list
RUN \ 
	apt-get update ;\
	apt-get upgrade -y ;\
	apt-get install build-essential libtool libssl-dev python-distutils-extra python-software-properties wget curl git -y

ONBUILD RUN apt-get update; apt-get upgrade -y

CMD ["/bin/bash", "-i"]
