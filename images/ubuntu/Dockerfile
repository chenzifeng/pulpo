FROM ubuntu
MAINTAINER Takehiro Iyatomi <iyatomi@gmail.com>
RUN apt-get update
RUN apt-get -y install git
RUN apt-get -y install gcc
RUN apt-get -y install make
RUN apt-get -y install lua5.1
RUN apt-get -y install libssl-dev
RUN apt-get -y install wget
RUN apt-get -y install tar
RUN apt-get -y install zip
RUN apt-get -y install unzip
RUN apt-get -y install sudo
RUN git clone https://github.com/umegaya/pulpo.git /tmp/pulpo
RUN FROM_DOCKER=y bash /tmp/pulpo/test/tools/travis_install.sh