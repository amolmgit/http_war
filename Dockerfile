FROM ubuntu:latest
MAINTAINER Amol Manderkar <amolsup2311@gmail.com>

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g http-server

ADD index.html /usr/apps/http/sample.war
WORKDIR /usr/apps/http/

CMD ["http-server", "-s"]
