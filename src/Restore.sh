echo "Setting Environment variables."
export ACCEPT_EULA=Y
export SA_PASSWORD=Iqan#123
echo "Environment variables set."
echo "Starting SqlServr"
/opt/mssql/bin/sqlservr &
sleep 60 | echo "Waiting for 60s to start Sql Server"
echo "Restoring DB."
/opt/mssql-tools/bin/sqlcmd -U sa -P Iqan#123 -i $1
echo "DB restored."
echo "Deleting backup files."
rm -rf /work/*.bak
