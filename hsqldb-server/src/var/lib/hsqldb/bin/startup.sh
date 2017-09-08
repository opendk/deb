# Initialize variables
. /etc/hsqldb/variables.conf
# Read list of databases
DBNAMES=$(cat $HSQLDBLIST)

# Start a hsqldb instance with several databases
# Start building the startup command
CMD="java -classpath $HSQLDBLIB org.hsqldb.server.Server"

# Add list of databases to the command
DBID=0
for DBNAME in $DBNAMES; do
    CMD="$CMD --database.$DBID file:$HSQLDBDATADIR/$DBNAME --dbname.$DBID $DBNAME"
	DBID=$(($DBID + 1));
done

# Execute startup command
$CMD
