from django.apps import AppConfig

# this will creat a new class for the app import
class MyappConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'myapp'
