# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-11 19:24
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='organization',
            name='service',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='core.Service'),
            preserve_default=False,
        ),
    ]
