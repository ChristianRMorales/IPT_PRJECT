from django.contrib import admin
from .models import Account

# Register your models here.
@admin.register(Account)
class userAdmin(admin.ModelAdmin):
    list_display=['user','password']
