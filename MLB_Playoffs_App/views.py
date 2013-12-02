from django.http import HttpResponse

def index (request):
    return HttpResponse ("Hello, world. You're at the MLB App index.")

def boxScore (request):
    return HttpResponse ("boxScore index.")

def game (request):
    return HttpResponse ("game index.")

def game_has_umpire (request):
    return HttpResponse ("game_has_umpire index.")

def manager (request):
    return HttpResponse ("manager index.")

def player (request):
    return HttpResponse ("player index.")

def player_playsin_game (request):
    return HttpResponse ("player_playsin_game index.")

def schedule (request):
    return HttpResponse ("schedule index.")

def stadium (request):
    return HttpResponse ("stadium index.")

def startingLineup (request):
    return HttpResponse ("startingLineup index.")

def team (request):
    return HttpResponse ("team index.")

def umpire (request):
    return HttpResponse ("umpire index.")
