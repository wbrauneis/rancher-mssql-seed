#!/bin/bash

while [ ! -f /usr/share/mssql/rancher-seed/config.sql ]; do
    echo 'config.sql not found!'
    sleep 1
done

/opt/mssql/bin/sqlservr.sh

sqlcmd -U sa -P $SA_PASSWORD /usr/share/mssql/rancher-seed/config.sql
