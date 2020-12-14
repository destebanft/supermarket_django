from firebase_admin import auth
from rest_framework.views import APIView
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from .serializers import LoginMessageSerializer
from django.shortcuts import render
from django.views.generic import TemplateView, CreateView
from .models import User
from .forms import UserRegisterForm
# Create your views here.





class LoginView(APIView):
    serializer_class = LoginMessageSerializer
    def post(self, request):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        id_token = serializer.data.get('token_id')
        decoded_token = auth.verify_id_token(id_token)
        id_fb = decoded_token['uid']
        email = '***'
        phoneNumber = '***'
        name = '***'
        new_user, created = User.objects.get_or_create(
            id_fb=id_fb,
            defaults={
                'id_fb': id_fb,
                'name': name,
                'email': email,
                'phoneNumber': phoneNumber
            }
        )
        print('NEW USER', type(new_user), new_user)
        if created:
            print('CREADO')
            token = Token.objects.create(user=new_user.id_fb)
        else:
            print('NO CREADO')
            token = Token.objects.get(user=new_user.id_fb)

        userGet = {
            'id_fb': new_user.id_fb,
            'name': new_user.name,
            'email': new_user.email,
            'phoneNumber': new_user.phoneNumber
            }
        return None

class UserRegisterView(CreateView):
    template_name = 'register.html'
    form_class = UserRegisterForm

    success_url = 'loginUser'


class UserLoginView(TemplateView):
    template_name = 'login.html'
