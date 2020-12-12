from django.urls import path
from . import views

app_name = 'brands'

urlpatterns = [
    path('brands/', views.BrandsListApiView.as_view(), name='api_brands'),
]
