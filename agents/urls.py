from django.conf.urls import url
from django.contrib import admin

from core import views

urlpatterns = [
    url(r'^get', views.get),
    url(r'^admin/', admin.site.urls),
]
