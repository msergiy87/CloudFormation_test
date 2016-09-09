#!/bin/bash
#export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:$PATH

apt-get update
apt-get upgrade -y
echo "sucess upgrade" >> /tmp/rezalt

# Install node-js
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get -y install nodejs
apt-get -y install build-essential
echo "sucess nodejs and build-essential" >> /tmp/rezalt

node /root/hello.js &

#npm install pm2 -g
#pm2 startup ubuntu
#echo "step 1" >> /tmp/rezalt
#pm2 start /root/hello.js
#echo "sucess pm2 and run script" >> /tmp/rezalt

# Install nginx, php5-fpm
apt-get update
apt-get -y install nginx php5-fpm

cat /root/default > /etc/nginx/sites-available/default
service nginx restart
echo "sucess nginx" >> /tmp/rezalt
