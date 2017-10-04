# Initialize variables
. /etc/hsqldb/variables.conf
# Read list of databases
DBNAMES=$(cat $HSQLDBLIST)

# Shutdown a hsqldb instance
# For doing that, shutdown every single database
for DBNAME in $DBNAMES; do
	java -jar $HSQLDBUTIL --rcfile $HSQLDBRCFILE --sql "SHUTDOWN;" $DBNAME
done
