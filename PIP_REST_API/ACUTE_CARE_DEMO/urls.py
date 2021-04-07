from django.urls import path
from . import views

urlpatterns = [
    #path('attribute-provider/', include('rest_framework.urls'))
    path('call-centre', views.call_centre, name='call_centre'),
    path('call-centre/read', views.call_centre_read, name='call_centre_read'),
    path('call-centre/upload', views.call_centre_upload, name='call_centre_upload'),
    path('call-centre/start_es', views.start_es, name='start_es'),
    path('ambulance', views.ambulance, name='ambulance'),
    path('ambulance/read', views.ambulance, name='ambulance'),
    path('ambulance/upload', views.ambulance, name='ambulance'),
    path('hospital', views.hospital, name='hospital'),
    path('hospital/start_es', views.start_es, name='start_es'),
    path('hospital/end_es', views.end_es, name='end_es'),
]