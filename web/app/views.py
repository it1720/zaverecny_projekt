from django.shortcuts import render,redirect
from app.models import Data,Owners
from .forms import FormOwners

def showData(request):
    data = Data.objects.all()
    return render(request,"index.html",{'auta': data})

def showOwners(request):
    owners = Owners.objects.all()
    return render(request,"owners.html",{'vlastnici':owners})

def showForm(response):
    form= FormOwners(response.POST)
    if form.is_valid():
        form.save()
    context= {'form': form }
    return render(response, 'ownersform.html', context)

def delOwner(request,id):
    owners = Owners.objects.get(id=id)
    owners.delete()
    return redirect("/showowners")
