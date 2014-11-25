# Generic 89n salt masterless minion.

# Base image.
FROM ubuntu:14.04

MAINTAINER Charl Matthee charl@89n.com

# Set timezone to Etc/UTC.
ADD configs/timezone /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

# Update the base to a starting state.
RUN aptitude update
RUN aptitude -y install software-properties-common curl git
RUN add-apt-repository ppa:saltstack/salt
RUN aptitude update

# Install saltstack.
RUN aptitude -y install salt-minion python-apt
ADD configs/minion /etc/minion
RUN service salt-minion restart

EXPOSE 80

CMD /bin/bash
