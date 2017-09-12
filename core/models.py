# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

from agent.models import Entity, NeoAgent

# Don't delete Organization and Agent instances. De-activate them instead.
# Update instances on services when either of these actions happen.

class Service(Entity):
    description = models.CharField(max_length=50)
    url = models.URLField()

    def __str__(self):
        return '{}, {}'.format(self.name, self.description)

class Organization(Entity):
    service = models.ForeignKey(Service)

    def __str__(self):
        return '{} - {}'.format(self.name, self.service.name)

class Agent(NeoAgent):
    organization = models.ForeignKey(Organization)

    def __str__(self):
        return self.get_full_name()