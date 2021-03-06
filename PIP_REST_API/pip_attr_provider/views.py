from django.shortcuts import render
from django.http import HttpResponse
from rest_framework.decorators import api_view
from rest_framework.response import Response
from datetime import datetime
from datetime import timedelta
from .models import *

# Create your views here.
@api_view(['GET'])
def acute_care_call_centre(request):
    if request.method == 'GET':
        try:
            professional_id = request.GET['professional-id']
            encounter_id = request.GET['encounter-id']
            episoode_of_care_id = request.GET['episode-of-care-id']            
        except:
            return HttpResponse(status=404)

        response = {
            "status" : 200,
            "encounter" : {
                "found" : True,
                "end_timestamp" : datetime.now(),
                "episode_of_care" : {
                    "found" : True,
                    "end_timestamp" : datetime.now(),
                    "origin_phonenumber" : "0623347405",
                    "professional_id" : 10
                }
            }
        }
        return Response(response)

# Create your views here.
@api_view(['GET'])
def acute_care_ambulance(request):
    if request.method == 'GET':
        try:
            professional_id = request.GET['professional-id']
            encounter_id = request.GET['encounter-id']
            episoode_of_care_id = request.GET['episode-of-care-id']            
        except:
            return HttpResponse(status=404)

        response = {
            "status" : 200,
            "assigned_team_ids" : [10, 20, 30]            
        }
        return Response(response)

# Create your views here.
@api_view(['GET'])
def acute_care_hospital(request):
    if request.method == 'GET':
        try:
            professional_id = request.GET['professional-id']
            encounter_id = request.GET['encounter-id']
            episoode_of_care_id = request.GET['episode-of-care-id']            
        except:
            return HttpResponse(status=404)

        response = {
            "status" : 200,
        }
        return Response(response)

# Create your views here.
@api_view(['GET'])
def get_info(request):
    if request.method == 'GET':
        try:
            patient_ID = request.GET['patient-ID']
            ES_ID = request.GET['ES-ID']
            user_ID = request.GET['user-ID']
            
        except:
        	response = {
        		"status" : 404,
        		"error" : "Request error"
        	}
        	return HttpResponse(status=404)

        response = {
            "status" : 200,
            "timestamp_shift_start" : datetime.now(),
            "timestamp_shift_end" : datetime.now(),
            "emergency_section" : {
            	"ID" : ES_ID,
            	"patient_ID" : patient_ID,
            	"active" : True
            },
            "list_of_teams" : {
            	"team_ID" : 10,
            	"team_Members_ID" : [10],
            	"timestamp_invite" : datetime.now(),
            	"timestamp_treat" : datetime.now(),
            	"timestamp_revoke" : datetime.now(),
            	"timestamp_revoke_extra" : datetime.now(),

            }
        }
        print("Returning response = ", response)
        return Response(response)

# Create your views here.
@api_view(['GET'])
def get_infov2(request):
    if request.method == 'GET':
        try:
            patient_ID = request.GET['patient-ID']
            ES_ID = request.GET['ES-ID']
            user_ID = request.GET['user-ID']
            
        except:
            response = {
                "status" : 404,
                "error" : "Request error, missing parameters"
            }
            return HttpResponse(status=404)

        response = {}

        ### Get User
        user = Users.objects.get(identifier=user_ID)
        response["timestamp_shift_start"] = user.shift_start
        response["timestamp_shift_end"] = user.shift_end

        ### Get Patient
        patient = Users.objects.get(identifier=patient_ID)

        ### Get Teams of User
        team = Care_Team_Participants.objects.get(participant=user)
        team = team.team

        ### Get Encounters of patient
        try:
            encounter = Encounter.objects.get(patient=patient, active=True)
        except ObjectDoesNotExist:
            encounter = None

        if encounter != None:
            response["under_emergency"] = "1"
            ### Episodes of care of encounter
            episodes = Episode_Of_Care.objects.all().filter(encounter=encounter)
            print(episodes[0].team)
            print(team)

            for episode in episodes:
                if episode.team == team:
                    response["team_under_emergency"] = str(episode.team.identifier)
                    response["timestamp_invite"] = episode.timestamp_invite
                    response["timestamp_treat"] = episode.timestamp_treat
                    response["timestamp_revoke"] = episode.timestamp_revoke
                    response["timestamp_revoke_extra"] = episode.timestamp_revoke + timedelta(minutes=team.extra_time)
                    

            print("Returning response = ", response)
            return Response(response)
        else:
            print("Returning response = ", response)
            return Response(response)
