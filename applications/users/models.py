from django.db import models

# Create your models here.

class User(models.Model):
    idfb = models.CharField(max_length=60)
    email = models.EmailField()
    #name = models.CharField(max_length=20)


    def __str__(self):
        return self.email
