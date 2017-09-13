from django.dispatch import receiver
from django.db.models.signals import post_save

from ..models import Organization, Agent

import requests

@receiver(post_save, sender=Organization)
def create_or_deactivate_organization(sender, instance, created, **kwargs):
    # sender: <class 'core.models.Organization'>
    # kwargs: {'update_fields': None, 'instance': <Organization: KMA - Neo>, 
    # 'signal': <django.db.models.signals.ModelSignal object at 0x7f3004506a50>, 
    # 'created': False, 'raw': False, 'using': 'default'}

    url = instance.service.url + 'organization'
    if created:
        # post instance data to service
        return requests.post(url, data={'name': instance.name, 'action': 'create'})

    if not instance.is_active:
        # this should be fired only if is_active field changes from True to False
        # but at this time, we are not checking whether the field has changed.
        return requests.post(url, data={'name': instance.name, 'action': 'deac'})

@receiver(post_save, sender=Agent)
def create_or_deactivate_agent(sender, instance, created, **kwargs):
    url = instance.organization.service.url + 'agent'
    data = {'first_name': instance.first_name, 'last_name': instance.last_name}
    if created:
        data.update({'action': 'create'})
        return requests.post(url, data=data)

    if not instance.is_active:
        data.update({'action': 'deac'})
        return requests.post(url, data=data)