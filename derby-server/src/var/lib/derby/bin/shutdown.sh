# Initialize variables
. /etc/derby/variables.conf

# Shutdown a h2 instance
java -cp $DERBYLIB org.apache.derby.drda.NetworkServerControl shutdown
