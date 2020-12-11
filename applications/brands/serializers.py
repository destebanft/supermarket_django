from rest_framework import serializers
from .models import Brands


class BrandsSerializers(serializers.ModelSerializer):
    class Meta:
        model = Brands
        fields = (
            'id',
            'name',
            'logo',
        )
