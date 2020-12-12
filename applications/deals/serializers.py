from rest_framework import serializers
from .models import Deals


class DealsSerializers(serializers.ModelSerializer):
    class Meta:
        model = Deals
        fields = (
            'id',
            'name',
            'store',
            'image',
            'price',
            'price_currency',
        )
