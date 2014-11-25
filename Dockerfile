# Generic manageflitter salt masterless minion.

# Base image.
FROM ubuntu:14.04

MAINTAINER Charl Matthee charl@manageflitter.com

# Set timezone to Etc/UTC.
ADD configs/timezone /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

# Update the base to a starting state.
RUN apt-get update
RUN apt-get -y install software-properties-common curl git
RUN add-apt-repository ppa:saltstack/salt
RUN apt-get update

# Install saltstack.
RUN apt-get -y install salt-minion python-apt
ADD configs/minion /etc/minion
RUN service salt-minion restart

EXPOSE 80

CMD /bin/bash
