# Generated by Django 5.0.3 on 2024-04-16 03:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customerprofile',
            name='chip_count',
            field=models.IntegerField(db_default=5000),
        ),
    ]
