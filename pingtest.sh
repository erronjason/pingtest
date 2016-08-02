#!/bin/bash

LASTSTATUS=""
while true; do
    ping -c 1 -t 200 8.8.8.8 > /dev/null
    STATUS=$?
    NOW=$(date)
    if [ $STATUS -ne 0 ]; then
        if [ "$LASTSTATUS" != 'down' ]; then
            echo "Down as of $NOW" >> /vagrant/status.log
            LASTSTATUS="down"
        fi
    elif [ $STATUS -ne 1 ]; then
        if [ "$LASTSTATUS" != 'up' ]; then
            echo "Up as of   $NOW" >> /vagrant/status.log
            LASTSTATUS="up"
        fi
        sleep 3
    fi
done
