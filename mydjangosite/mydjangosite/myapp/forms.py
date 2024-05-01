from django import forms

# this will create a class for the name form from the imports
class NameForm(forms.Form):
    your_name = forms.CharField(label="Your name", max_length=100)
