# Generated by Django 3.1.4 on 2020-12-07 19:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Data',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('spz', models.CharField(max_length=10)),
                ('jmeno', models.CharField(max_length=20)),
                ('prijmeni', models.CharField(max_length=30)),
            ],
        ),
    ]
