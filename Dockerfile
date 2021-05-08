FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://apt.puppet.com/puppet-tools-release-focal.deb
RUN dpkg -i puppet-tools-release-focal.deb
RUN apt-get update

RUN apt-get install puppet-bolt -y
RUN apt-get purge wget -y
RUN rm puppet-tools-release-focal.deb

WORKDIR /home/bolt

CMD ["bash"]
