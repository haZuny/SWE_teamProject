# Generated by Django 3.2.16 on 2022-12-12 13:39

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Trash',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('latitude', models.FloatField()),
                ('longitude', models.FloatField()),
                ('registeredTime', models.DateTimeField(auto_now=True)),
                ('posDescription', models.CharField(max_length=500)),
                ('image', models.ImageField(null=True, upload_to='')),
                ('deviceId', models.CharField(max_length=500)),
            ],
        ),
    ]
