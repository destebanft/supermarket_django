from django.db import models
from djmoney.models.fields import MoneyField

# Create your models here.

class Deals(models.Model):
    name = models.CharField(max_length=80)
    store = models.IntegerField()
    image = models.CharField(max_length=300)
    price = models.FloatField()

    def __str__(self):
        return self.name
