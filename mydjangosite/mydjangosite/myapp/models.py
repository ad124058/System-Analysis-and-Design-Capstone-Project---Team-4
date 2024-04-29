from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class CustomerProfile(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=50, null=False)
    last_name = models.CharField(max_length=50, null=False)
    user_name = models.CharField(max_length=50, null=False, unique=True)
    password = models.CharField(max_length=50, default='', null=False)
    chip_count = models.IntegerField(db_default=5000, null=False)

    def __str__(self):
        return self.alias
    
    # def authenticate(self, request, username=None, password=None):
    #     if (username):
    #         # If username is there, check DB for password.
    #         try:
    #             user = CustomerProfile.objects.get(user_name=username, password=password)
    #             return user
    #         except:
    #             return None