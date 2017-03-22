until /opt/mssql-tools/bin/sqlcmd -U sa -P $SA_PASSWORD /usr/share/mssql/rancher-seed/config.sql
do
	echo "."
done