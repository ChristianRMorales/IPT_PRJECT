from django.urls import path
from api import views


urlpatterns =[
    path('Account/',views.AccountList.as_view())
]