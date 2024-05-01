"""
URL configuration for mydjangosite project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views
# this is for the different pathways for the game
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('index', views.index, name='index'),
    path('Goated_Casino', views.index, name='index'),
    path('play', views.play, name='play'),
    path('earn', views.earn, name='earn'),
    path('rehab', views.rehab, name='rehab'),

    path('updateChips', views.updateChips, name='updateChips'),
    path('testchips', views.testchips, name='testchips'),
    path('dummy', views.dummy, name='dummy'),

    path('register', views.register, name='register'),
    path('loggy', views.loggy, name='loggy'),
    path('register_success/', views.register_success, name='register_success'),
    path('logout', views.logout, name='logout')

]
