from django.shortcuts import render
from django.views.generic import TemplateView
from rest_framework.generics import ListAPIView
from .serializers import StoresSerializers
from .models import Stores
# Create your views here.

class PrubeView(TemplateView):
    template_name = 'prueba.html'


class StoreListApiView(ListAPIView):
    serializer_class = StoresSerializers

    def get_queryset(self):
        return Stores.objects.all()
