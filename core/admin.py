# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from models import *

class PhoneNumberInline(admin.StackedInline):
    model = PhoneNumber

class AgentAdmin(admin.ModelAdmin):
    inlines = (PhoneNumberInline, )

admin.site.register(Service)
admin.site.register(Organization)
admin.site.register(PhoneNumber)
admin.site.register(Agent, AgentAdmin)