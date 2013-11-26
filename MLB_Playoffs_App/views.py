from django.http import HttpResponse

def index (request):
    return HttpResponse ("Hello, world. You're at the MLB App index.")

def boxScore (request):
    return HttpResponse ("boxScore index.")

def game (request):
    return HttpResponse ("game index.")
