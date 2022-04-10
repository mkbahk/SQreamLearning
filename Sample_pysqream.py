import pysqream

"""
Connection parameters include:
* IP/Hostname
* Port
* database name
* username
* password
* Connect through load balancer, or direct to worker (Default: false - direct to worker)
* use SSL connection (default: false)
* Optional service queue (default: 'sqream')
"""

# Create a connection object

con = pysqream.connect( host='127.0.0.1'
			, port=3108
			, database='humanresources'
                   	, username='ChangeMe'
			, password='ChangeMe'
                   	, clustered=True )

# Create a new cursor
cur = con.cursor()

# Prepare and execute a query
cur.execute('select * from regions;')

result = cur.fetchall() # `fetchall` gets the entire data set

#print (f"Version: {result[0][0]}")
print ("region id	", "region_name")

for data in result:
   print(data[0]," 		", data[1])

# This should print the SQream DB version. For example ``Version: v2020.1``.
# Finally, close the connection
con.close()

#
# End of codes
#
