from django.shortcuts import render_to_response
from django.template import RequestContext
from django.core.context_processors import csrf
from django.http import HttpResponse

import datetime
from MLB_Playoffs_App.models import *
from MLB_Playoffs_App.forms import *


def index (request):
    context = {}
    return render_to_response ('index.html', context)


def boxScore (request):
    return HttpResponse ("boxScore index.")


def game (request):
    return HttpResponse ("game index.")


def game_has_umpire (request):
#    return HttpResponse ("game_has_umpire index.")
    return AddUmpireToGame (request)

def manager (request):
    return HttpResponse ("manager index.")


def player (request):
#    return HttpResponse ("player index.")
#    return AddPlayer (request)

    players = Player.objects.all()

    context = {'num_players': len(players),
               'players': players,
#               'form': form
               }
    return render_to_response('addplayer.html', context, context_instance=RequestContext(request) )

def player_playsin_game (request):
    return HttpResponse ("player_playsin_game index.")


def schedule (request):
    return HttpResponse ("schedule index.")


def stadium (request):
    return HttpResponse ("stadium index.")


def startingLineup (request):
    return HttpResponse ("startingLineup index.")


def team (request):
#    return HttpResponse ("team index.")
    return AddTeam (request)

def umpire (request):
    return HttpResponse ("umpire index.")


def AddPlayer(request):
    if request.method == 'POST':
        form = AddPlayerForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data

            position    = form.cleaned_data['position']
            team        = form.cleaned_data['team_id']
            status      = form.cleaned_data['status']
            number      = form.cleaned_data['number']
            pname       = form.cleaned_data['name']
            b           = form.cleaned_data['bats']
            t           = form.cleaned_data['throws']
            h           = form.cleaned_data['height']
            w           = form.cleaned_data['weight']
            bday        = form.cleaned_data['birthDate']

            player = Player(position=position,
                            team_id=team,
                            status=status,
                            number=number,
                            name=pname,
                            bats=b,
                            throws=t,
                            height=h,
                            weight=w,
                            birthDate=bday)
            player.save()
            return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application. </body></html>".format(cd['name']) )
    else:
        form = AddPlayerForm()

    players = Player.objects.all()

    context = {'num_players': len(players),
               'players': players,
               'form': form
               }
    return render_to_response('addplayerform.html', context, context_instance=RequestContext(request) )


def AddTeam(request):
    if request.method == 'POST':
        form = AddTeamForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data

            name        = form.cleaned_data['position']
            location    = form.cleaned_data['team_id']
            manager     = form.cleaned_data['status']

            team = Player(name=name,
                            location=location,
                            manager=manager)
            team.save()
            return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application. </body></html>".format(cd['name']) )
    else:
        form = AddTeamForm()

    teams = Team.objects.all()

    context = {'num_teams': len(teams),
               'team': teams,
               'form': form
               }
    return render_to_response('addteamform.html', context, context_instance=RequestContext(request) )

def AddUmpireToGame(request):

    if request.method == 'POST':
        form = AddUmpireToGameForm(request.POST)
        if form.is_valid():
            cd      = form.cleaned_data
            ump     = Umpire.objects.filter(umpire = cd['umpirename'])[0]
            umppos  = form.cleaned_data['umpireposition']
            game    = Game.objects.filter(gameTitle = cd['game'])[0]
            game_has_umpire = Game_Has_Umpire(umpire=ump, umpireposition=umppos, game=game)
            game_has_umpire.save()
            return HttpResponse( "<html><body> {} works on {} for {} hours.</body></html>".format(cd['employee_name'], cd['project'], cd['hours']) )
    else:
        form = AddUmpireToGameForm()

    umpires = Umpire.objects.all()
    games = Game.objects.all()
    gamehasumpire = Game_Has_Umpire.objects.all()

    context = {'num_umpires': len(umpires),
               'umpires': umpires,
               'games': games,
               'gamehasumpire': gamehasumpire,
               'num_games': len(games),
               'num_gamehasumpire': len(gamehasumpire),
               'form': form
               }
    return render_to_response('addumpiretogameform.html', context, context_instance=RequestContext(request) )
