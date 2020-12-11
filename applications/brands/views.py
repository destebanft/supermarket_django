from django.shortcuts import render
from rest_framework.generics import ListAPIView
from .serializers import BrandsSerializers
from .models import Brands


class BrandsListApiView(ListAPIView):
    serializer_class = BrandsSerializers

    def get_queryset(self):
        return Brands.objects.all()
