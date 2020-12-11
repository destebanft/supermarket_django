from django.db import models

# Create your models here.

class Brands(models.Model):
    name = models.CharField(max_length=50)
    logo = models.CharField(max_length=200)

    def __str__(self):
        return self.name
