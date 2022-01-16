from keycloak import KeycloakOpenID
import requests
from pathlib import Path
import os
import shutil
import timeit
import time
import json

def login():
	# Configure client
        keycloak_openid = KeycloakOpenID(server_url="http://10.255.230.159:8181/auth/",
	                    client_id="calls-gateway",
	                    realm_name="ambulance-example",
	                    client_secret_key="supersecret")

	# Get WellKnow
	# config_well_know = keycloak_openid.well_know()

	# Get Token
        token = keycloak_openid.token("user1", "user1")
        #print(token)
	# token = keycloak_openid.token("user", "password", totp="012345")

	# Get Userinfo
        # userinfo = keycloak_openid.userinfo(token['access_token'])
        return token

if __name__ == "__main__":
	print("Starting simulation for scenario 1")
	user_token = login()
	
	endpoint = "http://10.255.230.159/rest/acute-care-demo/call-centre/read"
	params = {
	"ES-ID" : 10,
	"format" : "json",
	"patient-ID" : 100,
	"user-ID" : 10
	}
	headers = {"Authorization": "Bearer {}".format(user_token["access_token"])}

	print("		Warming up...")
	for i in range(10):
		requests.get(url=endpoint, params=params, headers=headers)

	print("		ABAC logs reset...")
	# os.remove('../abac-logs/abac-server.log')
	# Path('../abac-logs/abac-server.log').touch()

	times_dict = {}

	print("		Simulating 100 requests...")
	for i in range(100):
		# start = timeit.default_timer()
		#start = time.perf_counter()
		r = requests.get(url=endpoint, params=params, headers=headers)
		# stop = timeit.default_timer()
		#stop = time.perf_counter()
		#diff = stop - start
		# print('Time: ', stop - start)
		#times_dict[i] = diff*1000

	print("		Saving results...")
	
	#with open('scenario1-from-client.json', 'w', encoding ='utf8') as json_file:
	#    json.dump(times_dict, json_file, allow_nan=True)

	print("Simulation complete!")
