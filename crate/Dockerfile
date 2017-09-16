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

VOLUME /var/lib/crate

ADD config/crate.yml /etc/crate/crate.yml
ADD config/log4j2.properties /etc/crate/log4j2.properties

EXPOSE 4200 4300 5432-5532

# Run everything
ENTRYPOINT service crate start && /bin/bash

CMD ["true"]
