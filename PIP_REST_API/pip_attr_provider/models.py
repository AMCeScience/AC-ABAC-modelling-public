from django.db import models
from django.contrib.auth.models import User
#from phonenumber_field.modelfields import PhoneNumberField
import uuid
from django.contrib.auth.models import AbstractUser
#from .codes import ALLERG_INT_CODES, CONDITION_CODE, CONDITION_BODY_SITE


class Users(models.Model):
    USER_TYPE_CHOICES = (
      (1, 'patient'),
      (2, 'ambulance'),
      (3, 'call_centre'),
      (4, 'hospital'),
      (5, 'org_admin'),
    )

    user_type = models.PositiveSmallIntegerField(choices=USER_TYPE_CHOICES, null=True, default=USER_TYPE_CHOICES[0][0])
    identifier = models.IntegerField(null=True, unique=True)
    shift_start = models.DateTimeField(null=True)
    shift_end = models.DateTimeField(null=True)

class Organization(models.Model):
    ORG_TYPE_CHOICES = (
        (1, 'Unspecified'),
        (2, 'Ambulance Service'),
        (3, 'Call Centre Service'),
        (4, 'Hospital Service'),
    )
    
    user = models.OneToOneField(Users, on_delete=models.CASCADE)
    identifier = models.IntegerField(null=True, unique=True)
    organization_active = models.BooleanField(null=True)


class Care_Team(models.Model):
    identifier = models.IntegerField(null=True, unique=True)
    organization = models.ForeignKey(Organization, on_delete=models.CASCADE, null=True)
    tag = models.CharField(null=True, max_length=100, default="")
    is_active = models.BooleanField(null=True)    
    extra_time = models.IntegerField(null=True, default=30)


class Encounter(models.Model):
    ENC_STATUS = (
        ('planned', 'Planned'),
        ('arrived', 'Arrived'),
        ('triaged', 'Triaged'),
        ('in-progress', 'In Progress'),
        ('onleave', 'On Leave'),
        ('finish', 'Finish'),
        ('cancelled', 'Cancelled'),
        ('entered-in-error', 'Entered in Error'),
        ('unknown', 'Unknown')
    )

    ENC_CLASS = (
        ('AMB', 'Ambulatory'),
        ('EMER', 'Emergency'),
        ('FLD', 'Field'),
        ('HH', 'Home health'),
        ('IMP', 'Impatient encounter'),
        ('ACUTE', 'Impatient acute'),
        ('NONAC', 'Impatient non-acute'),
        ('OBSENC', 'Observation encounter'),
        ('PRENC', 'Pre-admission'),
        ('SS', 'Short stay'),
        ('VR', 'Virtual'),
    )

    identifier = models.IntegerField(null=True, unique=True)
    patient = models.ForeignKey(Users, on_delete=models.CASCADE, null=True)
    active = models.BooleanField(null=True)
    user_starter = models.OneToOneField(Users, on_delete=models.CASCADE, related_name="user_starter", null=True)

# Episode of care
class Episode_Of_Care(models.Model):
    WHO_CALLED = (
        ('unknown', 'Unknown'),
        ('relative', 'Relative'),
        ('patient', 'Patient'),
        ('other', 'Other'),
    )

    SERVICE = (
      (1, 'call_centre'),
      (2, 'ambulance'),
      (3, 'hospital'),
    )

    encounter = models.ForeignKey(Encounter, on_delete=models.CASCADE)
    service = models.PositiveSmallIntegerField(choices=SERVICE, null=True, default=SERVICE[0][0])
    team = models.ForeignKey(Care_Team, null=True, on_delete=models.CASCADE)
    timestamp_invite = models.DateTimeField(null=True)
    timestamp_treat = models.DateTimeField(null=True)
    timestamp_revoke = models.DateTimeField(null=True)


# Relationship who is participating in each care team
class Care_Team_Participants(models.Model):
    team = models.ForeignKey(Care_Team, on_delete=models.CASCADE, related_name="care")
    participant = models.ForeignKey(Users, on_delete=models.CASCADE)    