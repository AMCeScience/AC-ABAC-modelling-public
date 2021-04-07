from django.shortcuts import render
from keycloak import KeycloakOpenID
from pip_attr_provider.models import *

def init_keycloak():
	# Configure client
	keycloak_openid = KeycloakOpenID(server_url="http://192.168.0.223:8181/auth",
                    client_id="calls-gateway",
                    realm_name="ambulance-example",
                    client_secret_key="supersecret")

	return keycloak_openid

# Create your views here.
def call_centre(request):

	if request.method == "POST":
		user = Users.objects.get(identifier=10)
		user_team_part = Care_Team_Participants.objects.get(participant=user)
		team = user_team_part.team
		episode_of_care = Episode_Of_Care.objects.all().filter(team=team)[0]

		response = {
			"user_identifier" : 10,
			"team_identifier" : team,
			"episode_of_care" : episode_of_care
		}

		if episode_of_care is not None:
			encounter = episode_of_care.encounter
			response["encounter"] = encounter

		response["EMR"] = "Your request to UPLOAD the EMR was successful"
		response["EMR_response"] = True
	  
		return render(request, 'ACUTE_CARE_DEMO/call_centre.html', response)

	if request.method == "GET":
		user = Users.objects.get(identifier=10)
		user_team_part = Care_Team_Participants.objects.get(participant=user)
		team = user_team_part.team
		episode_of_care = Episode_Of_Care.objects.all().filter(team=team)[0]

		response = {
			"user_identifier" : 10,
			"team_identifier" : team,
			"episode_of_care" : episode_of_care
		}

		if episode_of_care is not None:
			encounter = episode_of_care.encounter
			response["encounter"] = encounter


		return render(request, 'ACUTE_CARE_DEMO/call_centre.html', response)

def call_centre_read(request):
	if request.method == "GET":
		user = Users.objects.get(identifier=10)
		user_team_part = Care_Team_Participants.objects.get(participant=user)
		team = user_team_part.team
		episode_of_care = Episode_Of_Care.objects.all().filter(team=team)[0]

		response = {
			"user_identifier" : 10,
			"team_identifier" : team,
			"episode_of_care" : episode_of_care
		}

		if episode_of_care is not None:
			encounter = episode_of_care.encounter
			response["encounter"] = encounter

		response["EMR"] = "Your request to READ the EMR was successful"
		response["EMR_response"] = True
	 
		return render(request, 'ACUTE_CARE_DEMO/call_centre.html', response)

def call_centre_upload(request):
	if request.method == "POST":
		user = Users.objects.get(identifier=10)
		user_team_part = Care_Team_Participants.objects.get(participant=user)
		team = user_team_part.team
		episode_of_care = Episode_Of_Care.objects.all().filter(team=team)[0]

		response = {
			"user_identifier" : 10,
			"team_identifier" : team,
			"episode_of_care" : episode_of_care
		}

		if episode_of_care is not None:
			encounter = episode_of_care.encounter
			response["encounter"] = encounter

	response["EMR"] = "Your request to UPLOAD the EMR was successful"
	response["EMR_response"] = True
  
	return render(request, 'ACUTE_CARE_DEMO/call_centre.html', response)

def start_es(request):
	if request.method == "POST":
		pass
	return render(request, 'ACUTE_CARE_DEMO/call_centre.html')

def end_es(request):
	if request.method == "POST":
		pass
	return render(request, 'ACUTE_CARE_DEMO/call_centre.html')

def ambulance(request):
	user = request.user
	print(request.user)
	return render(request, 'ACUTE_CARE_DEMO/ambulance.html')

def hospital(request):
	user = request.user
	print(request.user)
	return render(request, 'ACUTE_CARE_DEMO/hospital.html')