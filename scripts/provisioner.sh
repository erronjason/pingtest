#!/bin/bash

#apt-get update
#apt-get -y upgrade

# This tells apt not to overwrite any existing config files
{
    echo "Dpkg::Options {"
    echo "    \"--force-confold\";"
    echo "}"
} > /etc/apt/apt.conf.d/local

cp /vagrant/scripts/pingtest.sh /etc/init/
cp /vagrant/scripts/pingtest /etc/init.d/
chmod ugo+x /etc/init.d/pingtest

{
    echo "/vagrant/pingtest.sh || exit 1"
    echo "exit 0"
} > /etc/apt/apt.conf.d/local
