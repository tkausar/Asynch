PLATFORM.
	DistAlgo version - pyDistAlgo-1.0.9-py3.5.egg-info
	Python version - 3.6.3
	operating system - MacOS, Windows
	types of hosts - laptop only
	multiple hosts are running on same laptop only

INSTRUCTIONS.
	After installing all above depenedencies, run the follwing commands:
		python3 -m da -n node2 -D replica.da	#creates replicas at host node2
		python3 -m da -n node3 -D client.da		#creates clients at host node3
		python3 -m da -n node1 -D olympus.da	#creates olympus at host node1
		python3 -m da -n node0 init.da ../config/config1.txt	#this runs the main process of our system for the testcase file named config1.txt
		
WORKLOAD GENERATION.
	We kept a list of diverse operation requests in a list. 
	We inititate a random geneartor with testCase seed value using :
	random.seed(seedVal)
	For testCase provided n number of operations, we generate index using random.randint that gives random value, in a loop.
	We take mod of index with length of the list of diverse operations and pick the operation. We save the generated operations in this way in a list
	and send it to the clients.
	
CONTRIBUTIONS.
	Pratik:
		head: handle new request: assign slot, sign order stmt & result stmt, send shuttle
		head: handle retransmitted request as described in paper 
		handle shuttle: check validity of order proof (incl. signatures), add signed order 
		statement and signed result statement, send updated shuttle
		tail: send result to client; send result shuttle to predecessor 
		handle result shuttle: validate, save, and forward it 
		non-head: handle request: send cached result, send error, or forward request
		timeout and send request to all replicas if timely response not received 
		logging
		configuration files
		
	Tanwee:
		dictionary object: support put, get, slice, append
		generate pseudorandom workload with good diversity using specified seed 
		generate request sequence specified in config file 
		handle result: check signatures and hashes in result proof 
		check that dictionary contains expected content at end of test case 
		creates initial configuration: create keys, create, setup, and start processes
		hashing and public-key cryptography
		multiple hosts
		Readme and testing.txt
	
MAIN FILES.
	./src/replica.da
	./src/client.da
	./src/olympus.da
	./src/init.da 

CODE SIZE.
	./src/replica.da - Algo LOC ~ 207 ; Other LOC ~ 83 ; Total non blank LOC ~ 290 
	./src/client.da -  Algo LOC ~ 92  ; Other LOC ~ 28 ; Total non blank LOC ~ 120
	./src/olympus.da - Algo LOC ~ 53  ; Other LOC ~ 36 ; Total non blank LOC ~ 89
	./src/init.da -    Algo LOC ~ 10  ; Other LOC ~ 16 ; Total non blank LOC ~ 26

LANGUAGE FEATURE USAGE.
	list comprehensions - 11
	dictionary comprehensions - 19
	set comprehensions - 4
		
	
	
