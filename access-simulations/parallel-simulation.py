from keycloak import KeycloakOpenID
import requests
from pathlib import Path
import os
import ray
import time
import asyncio
import json

ray.init()


def login():
	# Configure client
	keycloak_openid = KeycloakOpenID(server_url="http://192.168.1.83:8181/auth/",
	                    client_id="calls-gateway",
	                    realm_name="ambulance-example",
	                    client_secret_key="supersecret")

	# Get WellKnow
	# config_well_know = keycloak_openid.well_know()

	# Get Token
	token = keycloak_openid.token("user1", "user1")
	# token = keycloak_openid.token("user", "password", totp="012345")

	# Get Userinfo
	# userinfo = keycloak_openid.userinfo(token['access_token'])
	return token

@ray.remote
def perform_request():
	# start = time.perf_counter()
	r = requests.get(url=endpoint, params=params, headers=headers)
	# stop = time.perf_counter()	
	return

def perform_request2():
	start = time.perf_counter()
	r = requests.get(url=endpoint, params=params, headers=headers)
	stop = time.perf_counter()	
	return

if __name__ == "__main__":
	print("Starting simulation for scenario 1")
	user_token = login()
	
	endpoint = "http://192.168.1.83/rest/acute-care-demo/call-centre/read"
	params = {
	"ES-ID" : 10,
	"format" : "json",
	"patient-ID" : 100,
	"user-ID" : 10
	}
	headers = {"Authorization": "Bearer {}".format(user_token["access_token"])}

	time_total = {}
	################# ============ ##################
	print("		Warming up...")
	for i in range(10):
		requests.get(url=endpoint, params=params, headers=headers)

	print("		ABAC logs reset...")
	# os.remove('../abac-logs/abac-server.log')
	# Path('../abac-logs/abac-server.log').touch()

	print("		Simulating 10 rounds of 60 simultaneous requests...")
	for j in range(10):
		start1 = time.perf_counter()
		reqs = []
		for i in range(60):
			reqs.append(perform_request.remote())
		started_when = time.perf_counter()
		ray.get(reqs)
		stop1 = time.perf_counter()
		time_total[j] = stop1 - start1

	# loop = asyncio.get_event_loop()

	# for i in range(30):
	# 	loop.run_in_executor(None, perform_request2)


	print("		Saving results...")
	# shutil.move('../abac-logs/abac-server.log', 'scenario1.logs.txt')

	with open('parallel-client-total-60.json', 'w', encoding ='utf8') as json_file:
	    json.dump(time_total, json_file, allow_nan=True)
	