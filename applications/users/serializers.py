from rest_framework import serializers


class LoginMessageSerializer(serializers.Serializer):
    token_id = serializers.CharField(required=True)
