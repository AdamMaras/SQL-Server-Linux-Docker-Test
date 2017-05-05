#start SQL Server, start the script to create the DB and data
/opt/mssql/bin/sqlservr.sh &
SQLSERVER_PID=$!

./SqlCmdStartup.sh # run the startup command while SQL Server is in the background...
wait $SQLSERVER_PID # ...and then once it's done, wait on the SQL Server process
