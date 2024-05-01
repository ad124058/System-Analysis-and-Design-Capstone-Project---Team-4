from django.db import models
from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from .forms import NameForm
from .models import CustomerProfile
from django.contrib import messages
from django.db import IntegrityError
import json
from django.contrib.auth import authenticate
from django.core import serializers

# Create your views here.
def index(request):

    if (request.session.get('currentUser') is not None):
        print(request.session.get('currentUser'))
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
        return render(request, "myapp/index.html", {'user' : user})
    
    return render(request, "myapp/index.html", {})
# start a play request
def play(request):
    try:
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
        return render(request, "myapp/play.html", {'user' : user})
    except:
        return redirect("loggy")
# start a earn request 
def earn(request):
    try:
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
        return render(request, "myapp/earn.html", {'user' : user})
    except:
        return redirect("loggy")
# start a rehab request
def rehab(request):
    try:
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
        return render(request, "myapp/rehab.html", {'user' : user})
    except:
        return redirect("loggy")
# start a register request 
def register(request):
    if request.method == 'POST':
        # Extract form data from request
        first_name = request.POST.get('first_name')
        last_name = request.POST.get('last_name')
        user_name = request.POST.get('username')
        password = request.POST.get('password')

        print("Received form data:")
        print("First Name:", first_name)
        print("Last Name:", last_name)
        print("User Name:", user_name)
        print("Password:", password)

        try:

        # Create CustomerProfile object and save to database
            CustomerProfile.objects.create(
                first_name=first_name,
                last_name=last_name,
                user_name=user_name,
                password=password,
                chip_count=5000  # Default value for chip_count
            )

            messages.success(request, 'Registration successful!')

            return redirect('register_success')

        except IntegrityError:
             messages.error(request, 'Username already exists. Please choose a different username.')
             return redirect('register')

    return render(request, "myapp/register.html", {})

def register_success(request):
    return render(request, 'myapp/register_success.html')

# start a login request
def loggy(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        if (username):
            # If username is there, check DB for password.
            try:
                user = CustomerProfile.objects.get(user_name=username, password=password)
                request.session['currentUser'] = {'username' : username}
            except:
                return redirect('loggy')
                # Return failed login page

            # If password matches, return index with username
            print(request.session.get('currentUser'))
            return redirect('index')
        
    if (request.session.get('currentUser') is not None):
        return render(request, "myapp/alreadylogged.html", {'username' : request.session.get('currentUser')})
    return render(request, "myapp/loggy.html", {})

# start a logout request
def logout(request):
    try:
        request.session.pop('currentUser')
    except:
        pass
    return redirect("index")

def updateChips(request):
    # add chips to user
    try:
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
    except:
        print('no user')

    chipsToAdd = int(json.loads(request.body)['chips'])
    isPositive = json.loads(request.body)['isPositive']

    if (not bool(isPositive)):
        chipsToAdd = -chipsToAdd

    CustomerProfile.objects.filter(user_name = user.user_name).update(
        chip_count = user.chip_count + chipsToAdd
    )

    user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])

    response_data = {}
    response_data['chips'] = user.chip_count
    return JsonResponse({'chips' : user.chip_count})
# start a testchips request
def testchips(request):
    try:
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
        return render(request, "myapp/testchips.html", {'user' : user})
    except:
        return redirect("loggy")
# start a dummy request
def dummy(request):
    try:
        user = CustomerProfile.objects.get(user_name=request.session.get('currentUser')['username'])
    except:
        pass
    return JsonResponse({"chips" : user.chip_count})
