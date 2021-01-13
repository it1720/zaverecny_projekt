from django.db import models
from django.db import connections

class Data(models.Model):   
    spz = models.CharField(max_length=8)
    jmeno = models.CharField(max_length=20)
    prijmeni = models.CharField(max_length=30)
    cas = models.TimeField(auto_now=False, auto_now_add=False)
    datum = models.DateField(auto_now=False, auto_now_add=False)
    class Meta:
        db_table = "data"

class Owners(models.Model):
    spz = models.CharField(max_length=8)
    jmeno = models.CharField(max_length=20)
    prijmeni = models.CharField(max_length=30)
    class Meta:
        db_table = "vlastnici"