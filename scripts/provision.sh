#!/bin/bash

#INSTALLABLES
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
apt-get install -y dos2unix git nodejs build-essential g++ imagemagick

#REDIS
cd ~
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make test
make install
mkdir /etc/redis
mkdir /var/redis
mkdir /var/redis/6379
yes | cp ~/redis-stable/utils/redis_init_script /etc/init.d/redis_6379
yes | cp /vagrant/scripts/redis/6379.conf /etc/redis/6379.conf
dos2unix /etc/redis/6379.conf
update-rc.d redis_6379 defaults
/etc/init.d/redis_6379 start

#NODEBB
mkdir /var/nodebb
cd /var/nodebb
git clone -b v0.8.x https://github.com/NodeBB/NodeBB.git .
npm install
chown -R vagrant:vagrant /var/nodebb
cat /vagrant/scripts/completed.txt