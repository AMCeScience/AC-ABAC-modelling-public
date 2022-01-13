from keycloak import KeycloakOpenID
import requests


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

if __name__ == "__main__":
	print("Starting simulation for scenario 7")
	user_token = login()

	endpoint = "http://192.168.1.83/rest/acute-care-demo/call-centre/read"
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

	print("		Simulating 100 requests...")
	for i in range(100):
		requests.get(url=endpoint, params=params, headers=headers)