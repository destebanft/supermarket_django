from .models import User
from django import forms

class UserRegisterForm(forms.ModelForm):
    class Meta:
        model = User
        fields = (
            'email',
            'name',
            'phoneNumber'
        )
