from django.shortcuts import render
from app.models import Data

def show(request):
    data = Data.objects.all()
    return render(request,"index.html",{'auta': data})
