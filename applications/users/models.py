from django.db import models


# Create your models here.

class User(models.Model):
    id_fb = models.CharField(max_length=120)
    email = models.CharField(max_length=40, blank=True)
    name = models.CharField(max_length=40, blank=True)
    phoneNumber = models.CharField(max_length=20, blank=True)

    def __str__(self):
        return self.id_fb
