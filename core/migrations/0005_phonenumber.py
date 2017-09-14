# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-14 15:28
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_auto_20170912_2244'),
    ]

    operations = [
        migrations.CreateModel(
            name='PhoneNumber',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.CharField(max_length=10, unique=True)),
                ('agent', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.Agent')),
            ],
        ),
    ]