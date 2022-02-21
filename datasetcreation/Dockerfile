# set base image (host OS)
FROM docker.io/debian:10

ENV LANG="en_US.utf8"

ENV TZ=Asia/Kolkata \
    DEBIAN_FRONTEND=noninteractive

COPY install.sh .

RUN chmod +x install.sh
RUN ./install.sh

WORKDIR /src/genie-toolkit/genie-toolkit

RUN npm ci
    
RUN npm link

