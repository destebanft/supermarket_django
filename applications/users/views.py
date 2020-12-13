from firebase_admin import auth
from rest_framework.views import APIView
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from .serializers import LoginMessageSerializer
from django.shortcuts import render
from django.views.generic import TemplateView
from .models import User
# Create your views here.


class LoginUser(TemplateView):
    template_name = 'login.html'


class LoginView(APIView):
    serializer_class = LoginMessageSerializer

    def post(self, request):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        id_token = serializer.data.get('token_id')
        decoded_token = auth.verify_id_token(id_token)
        email = decoded_token['email']
        #name = decoded_token['name']
        idfb = decoded_token['uid']
        new_user, created = User.objects.get_or_create(
            email=email,
            defaults={
                #'name': name,
                'email': email,
                'idfb': idfb
            }
        )
        if created:
            token = Token.objects.create(user=new_user)
        else:
            token = Token.objects.get(user=new_user)

        userGet = {
            'id': new_user.pk,
            'email': new_user.email,
            #'name': new_user.name,
            'idfb': new_user.idfb,
            }
        return Response(
        {
            'token': token.key,
            'user': userGet
        }
        )
