#!/usr/bin/env bash
#setting IP address and hostname
IP="127.0.0.1"
HOST=`ubuntu-xenial`
sed -i "/$IP/ s/.*/$IP\tlocalhost\t$HOST/g" /etc/hosts

#apt-get preamble
sudo apt-get update
sudo apt-get -y upgrade

#add postgresql ppa
#echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee -a /etc/apt/sources.list.d/pgdg.list
#wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
#sudo apt-get update

# install curl
echo "installing curl"
sudo apt-get -y install curl unzip

# install openjdk-8
echo "installing openjdk-8-jdk because 8"
sudo apt-get purge openjdk*
sudo apt-get -y install openjdk-8-jdk

#installing postgresql
#sudo apt-get -y install postgresql-client-9.4 pgadmin3 postgresql-9.4 postgresql-contrib-9.4
sudo apt-get -y install postgresql-client pgadmin3 postgresql postgresql-contrib
