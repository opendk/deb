# Initialize variables
. /etc/derby/variables.conf

# Start a h2 instance
java -cp $DERBYLIB -Dderby.system.home=$DERBYDATADIR org.apache.derby.drda.NetworkServerControl start -h $DERBYTCPHOST -p $DERBYTCPPORT
