FROM ubuntu:17.04

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

VOLUME /var/lib/grafana/config

ADD config/grafana.ini /etc/grafana/grafana.ini

EXPOSE 3000

# Run everything
ENTRYPOINT service grafana-server start && /bin/bash

CMD ["true"]
