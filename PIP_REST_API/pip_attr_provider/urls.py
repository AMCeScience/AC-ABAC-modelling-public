from django.urls import path
from . import views

urlpatterns = [
    #path('attribute-provider/', include('rest_framework.urls'))
    path('attribute-provider/call-centre', views.acute_care_call_centre, name='acute_care_call_centre'),
    path('attribute-provider/ambulance', views.acute_care_ambulance, name='acute_care_ambulance'),
    path('attribute-provider/hospital', views.acute_care_hospital, name='acute_care_hospital'),
    path('attribute-provider/getinfo', views.get_info, name='get_info'),
    path('attribute-provider/getinfov2', views.get_infov2, name='get_infov2'),
]