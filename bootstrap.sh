#!/usr/bin/env bash
#setting IP address and hostname
IP="127.0.0.1"
HOST=`ubuntu-xenial`
sed -i "/$IP/ s/.*/$IP\tlocalhost\t$HOST/g" /etc/hosts

#apt-get preamble
echo "apt-get preamble"
sudo apt-get update
sudo apt-get upgrade

# install curl
echo "installing curl"
sudo apt-get -y install curl unzip

# install openjdk-8
echo "installing openjdk-8-jdk because 8"
sudo apt-get purge openjdk*
sudo apt-get -y install openjdk-8-jdk

#installing postgresql
sudo apt-get install postgresql-client pgadmin3 postgresql postgresql-contrib
