from django.shortcuts import render_to_response
from django.template import RequestContext
from django.core.context_processors import csrf
from django.http import HttpResponse

import datetime
from MLB_Playoffs_App.models import Player, Team
from MLB_Playoffs_App.forms import AddPlayerForm, AddTeamForm


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

