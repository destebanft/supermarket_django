from django.urls import path
from . import views

app_name = 'app_users'

urlpatterns = [
    path('auth/', views.UserLoginView.as_view(), name='loginUser'),
    path('register/', views.UserRegisterView.as_view(), name='registerUser'),
    path('api-auth/', views.LoginView.as_view(), name='loginView'),

]
