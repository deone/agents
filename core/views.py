# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

from rest_framework import status
from rest_framework.response import Response
from rest_framework.decorators import api_view

from models import PhoneNumber

@api_view(['POST'])
def get(request):
    number = '0' + request.data['number'][3:]
    try:
        phone_number = PhoneNumber.objects.get(number=number)
    except PhoneNumber.DoesNotExist:
        return Response({'message': 'Agent does not exist'}, status=status.HTTP_404_NOT_FOUND)

    service = phone_number.agent.organization.service
    return Response({'number': number, 'service_name': service.name, 'service_url': service.url})