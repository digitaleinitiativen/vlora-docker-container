FROM ubuntu:17.04

# Install NodeRed

RUN apt-get update
RUN apt-get install -y nodejs-legacy npm
RUN npm install -g --unsafe-perm node-red node-red-admin
RUN npm install -g node-red-contrib-crate
RUN npm install -g node-red-contrib-ttn

VOLUME /root/.node-red

EXPOSE 1880

# Run everything
ENTRYPOINT node-red && /bin/bash

CMD ["true"]
