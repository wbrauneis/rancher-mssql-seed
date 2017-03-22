#!/bin/bash

while [ ! -f /usr/share/mssql/rancher-seed/config.sql ]; do
    echo 'config.sql not found!'
    sleep 1
done

/usr/share/mssql/rancher-seed/provision.sh &

/opt/mssql/bin/sqlservr.sh
