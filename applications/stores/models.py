from django.db import models

# Create your models here.

class Stores(models.Model):
    brand = models.IntegerField()
    identifier = models.CharField(max_length=50)
    name = models.CharField(max_length=50)
    thumbnail = models.CharField(max_length=30)
    address = models.CharField(max_length=50)

    def __str__(self):
        return self.identifier
