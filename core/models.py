# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from agent.models import Entity, NeoAgent

class Service(Entity):
    description = models.CharField(max_length=50)
    url = models.URLField()

    def __str__(self):
        return '{}, {}'.format(self.name, self.description)

class Organization(Entity):
    def __str__(self):
        return self.name

class Agent(NeoAgent):
    def __str__(self):
        return self.get_full_name()