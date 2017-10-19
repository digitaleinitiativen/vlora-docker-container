FROM ubuntu:17.04

# Install NodeRed
RUN apt-get update
RUN apt-get install -y nodejs-legacy npm
RUN apt-get install -y iputils-ping
RUN npm install -g --unsafe-perm node-red node-red-admin
RUN npm install -g node-red-contrib-crate
RUN npm install -g node-red-contrib-ttn
RUN npm install -g node-red-node-mysql
# NodeRed data folder
VOLUME /root/.node-red
ADD nodered/config/Demo.json /Demo.json

# Expose Port
EXPOSE 1880

CMD mkdir -p /root/.node-red/lib/flows/ && cp /Demo.json /root/.node-red/lib/flows/Demo.json && node-red | wc -
