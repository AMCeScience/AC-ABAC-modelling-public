# AC-ABAC Experiment scenario 6
# The healthcare professionals does not belong 
# to an active healthcare team


from datetime import datetime
from datetime import timedelta
from pip_attr_provider.models import Organization, Users, Care_Team, Care_Team_Participants, Encounter, Episode_Of_Care
#import django
#django.setup()


print("\nScenario 6 SETUP")
print("Deleting all entries")
Organization.objects.all().delete()
Users.objects.all().delete()
Care_Team.objects.all().delete()
Care_Team_Participants.objects.all().delete()
Encounter.objects.all().delete()
Episode_Of_Care.objects.all().delete()

print("Populating PIP\n")
# ORG just to fulfll the database
user_org = Users.objects.create(
	user_type=5,
	identifier=1,	
)

org = Organization.objects.create(
	user=user_org,
	identifier=0
)

# Users professionals has ID length 2
shift_start = datetime.now() - timedelta(hours=4)
shift_end = datetime.now() + timedelta(hours=4)
user_professional = Users.objects.create(
	user_type=4,
	identifier=10,
	shift_start=shift_start,
	shift_end=shift_end,	
)

# Patient has ID length 3
user_patient = Users.objects.create(
	user_type=1,
	identifier=100,	
)

# Teams has ID length 4
team = Care_Team.objects.create(
	organization=org,
	extra_time=1500
)

#team_participants = Care_Team_Participants.objects.create(
	#team=team,
	#participant=user_professional
#)

# Encounter
encounter = Encounter.objects.create(
	identifier=1000,
	patient=user_patient,
	active=True
)

# Episode of Care

timestamp_invite = (datetime.now() - timedelta(hours=1))
timestamp_revoke = (datetime.now() + timedelta(hours=1))

episode = Episode_Of_Care.objects.create(
	encounter=encounter,
	team=team,
	timestamp_invite=timestamp_invite,
	timestamp_treat=datetime.now(),
	timestamp_revoke=timestamp_revoke,
)