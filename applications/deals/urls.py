from django.urls import path
from . import views

app_name = 'deals'

urlpatterns = [
    path('deals/', views.DealsListApiView.as_view(), name='api_deals'),
]
