from django import forms
from .models import Owners

class FormOwners(forms.ModelForm):
    class Meta:
        model= Owners
        fields= ["spz", "jmeno", "prijmeni"]