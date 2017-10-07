FROM ubuntu:17.04

# Install CrateDB

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://cdn.crate.io/downloads/deb/DEB-GPG-KEY-crate
RUN apt-key add DEB-GPG-KEY-crate
RUN echo "deb https://cdn.crate.io/downloads/deb/stable/ zesty main" > /etc/apt/sources.list.d/crate.list
RUN apt-get install -y apt-transport-https
RUN apt-get update
RUN apt-get install -y crate

# CrateDB data folder
VOLUME /var/lib/crate

# CrateDB config folder
VOLUME /etc/crate

# Install Grafana

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://packagecloud.io/gpg.key
RUN apt-key add gpg.key
RUN echo "deb https://packagecloud.io/grafana/stable/debian/ jessie main" > /etc/apt/sources.list.d/grafana.list
RUN apt-get install -y apt-transport-https
RUN apt-get update
RUN apt-get install -y grafana
RUN grafana-cli plugins install crate-datasource

# Grafana data folder
VOLUME /var/lib/grafana/config

# Grafana config folder
VOLUME /etc/grafana/

# Install NodeRed

RUN apt-get update
RUN apt-get install -y nodejs-legacy npm
RUN npm install -g --unsafe-perm node-red node-red-admin
RUN npm install -g node-red-contrib-crate
RUN npm install -g node-red-contrib-ttn

# NodeRed data folder
VOLUME /root/.node-red

# Expose NodeRed Port, Grafana Port and CrateDB Ports,
EXPOSE 1880 3000 4200 4300 5432-5532

# Run everything
CMD service crate start && service grafana-server start && node-red && /bin/bash
