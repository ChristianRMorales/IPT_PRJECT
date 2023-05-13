from .models import Account
from .serializers import AccountSerializer
from rest_framework.generics import ListAPIView

# Create your views here.

class AccountList(ListAPIView):
    queryset = Account.objects.all()
    serializer_class = AccountSerializer

