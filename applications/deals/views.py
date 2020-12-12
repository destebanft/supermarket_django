from django.shortcuts import render
from rest_framework.generics import ListAPIView
from .serializers import DealsSerializers
from .models import Deals


class DealsListApiView(ListAPIView):
    serializer_class = DealsSerializers

    def get_queryset(self):
        return Deals.objects.all()
