from django.urls import path
from . import views

app_name = 'store'

urlpatterns = [
    path('stores/', views.StoreListApiView.as_view(), name='api_store'),
]
