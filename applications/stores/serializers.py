from rest_framework import serializers
from .models import Stores


class StoresSerializers(serializers.ModelSerializer):
    class Meta:
        model = Stores
        fields = (
            'id',
            'brand',
            'identifier',
            'thumbnail',
            'address',
        )
