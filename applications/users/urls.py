from django.urls import path
from . import views

app_name = 'app_users'

urlpatterns = [
    path('auth/', views.LoginUser.as_view(), name='loginUser'),
    path('api-auth/', views.LoginView.as_view(), name='loginView'),
]
