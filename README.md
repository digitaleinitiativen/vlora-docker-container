# Thingslogic Docker Container

All instructions can be found here: https://github.com/thingslogic/thingslogic-scd/blob/master/docs.pdf

## Software Requirements
### Kitematik:
- Windows: https://download.docker.com/win/stable/DockerToolbox.exe
- Mac OSX: https://download.docker.com/mac/stable/DockerToolbox.pkg

## Installation Steps

### Steps only needed for Windows
1. Open Kitematik
2. Open VirtualBox on Windows
3. You should see a Linux machine named “default”
4. Open the machine default by clicking twice on it, now a window should open
5. In the window you can insert some commands. Run the following command:
```sudo sysctl -w vm.max_map_count=262144```

### General Steps for Windows and MacOSX
Run the following steps in order to get the thingslogic stack running.
1. **Open Kitematik** and choose to create a new container (top left corner)
2. Then type **“thingslogic-grafana”** in the search bar and choose to create a new container of “thingslogic-grafana”. It should automatically start to download the image.
3. Then type **“thingslogic-nodered”** in the search bar and choose to create a new container of “thingslogic-nodered”. It should automatically start to download the image.
4. Then type **“thingslogic-crate”** in the search bar and choose to create a new container of “thingslogic-crate”. It should automatically start to download the image.
5. If the containers are running, you have to make some settings in every container.
6. **thinglogic-grafana**
a. choose the thingslogic-grafana container
b. in the right column click on every volume and select **enable volume**, to allow the container to save some data on your drive.
c. go to the settings tab and choose **network**
d. set the port forward to **port number 3000** and save your settings
7. **thinglogic-nodered**
a. choose the thingslogic-nodered container
b. in the right column click on every volume and select **enable volume**, to allow the container to save some data on your drive.
c. go to the settings tab and choose **network**
d. set the port forward to **port number 1880** and save your settings
8. **thinglogic-crate**
a. choose the thingslogic-crate container
b. in the right column click on every volume and select **enable volume**, to allow the container to save some data on your drive.
c. go to the settings tab and choose **network**
d. set the port forward to **port number 4200** and save your settings
9. Now you should be able to access the services via the given urls.

### Access URLs
- NodeRed: http://{{conatiner-ip}}:1880
- Grafana: http://{{container-ip}}:3000
- CrateDB: http://{{container-ip}}:4200

## Description

### Docker
Docker is a software container platform. With Docker you can create Containers, where your whole development environment is installed. That is what we have done for you. This Docker Image contains NodeRed, CrateDB and Grafana.

### The thingsnetwork
The things network is a community based Internet of Things Network, which allows IOT devices to connect to the internet without 3G or WIFI. The Used Technology is called LoRaWAN, a long range and low power radio frequency protocol.

### NodeRed
NodeRed is a visual tool for wiring the Internet of Things. It can also be used for other applications to quickly assemble flows of services. NodeRed has multiple plugins for many different services, e.g. Database connection or HTTP Requests.

### CrateDB
CrateDB is a distributed SQL database built on top of a NoSQL foundation. It combines the familiarity of SQL with the scalability and data flexibility of NoSQL.

### Grafana
Grafana is an open source metric analytics & visualization suite. It is most commonly used for visualizing time series data for infrastructure and application analytics.
