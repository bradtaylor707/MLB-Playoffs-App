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
    boxscores = Boxscore.objects.all()

    context = {'num_boxscores': len(boxscores),
              'boxscores':boxscores,
              }
    return render_to_response('boxscore.html', context, context_instance=RequestContext(request) )

def game (request):
    games = Game.objects.all ().order_by('date','title')

    context = {'num_games':len(games),
               'games':games,
               }
    return render_to_response('game.html', context, context_instance=RequestContext (request))


def game_has_umpire (request):
    ghus = Game_Has_Umpire.objects.all ().order_by('game','umpirePosition')

    context = {'num_ghus':len(ghus),
               'ghus':ghus,
               }
    return render_to_response ('gamehasumpire.html', context, context_instance=RequestContext (request))

def manager (request):
    managers = Manager.objects.all ().order_by('team')

    context = {'num_managers':len(managers),
               'managers':managers,
               }
    return render_to_response('manager.html', context, context_instance=RequestContext (request))


def player (request):
    players = Player.objects.all().order_by('team','position','name')

    context = {'num_players': len(players),
               'players': players,
               }
    return render_to_response('addplayer.html', context, context_instance=RequestContext(request) )

def player_playsin_game (request):
    ppgs = Player_PlaysIn_Game.objects.all().order_by ('game','name')

    context = {'num_ppgs':len(ppgs),
               'ppgs':ppgs,
               }
    return render_to_response('playerplaysingame.html', context, context_instance=RequestContext (request))


def schedule (request):
    games = Schedule.objects.all().order_by('gameDate','gameTitle')

    context = {'num_games':len(games),
               'games':games,
               }
    return render_to_response('schedule.html', context, context_instance=RequestContext (request))


def stadium (request):
    stadiums = Stadium.objects.all().order_by('team')

    context = {'num_stadiums':len(stadiums),
               'stadiums':stadiums,
               }
    return render_to_response('stadium.html', context, context_instance=RequestContext (request))


def startinglineup (request):
    startinglineups = startingLineup.objects.all().order_by('gameTitle','date')

    context = {'num_startinglineups':len(startinglineups),
               'startinglineups':startinglineups,
               }
    return render_to_response('startinglineup.html', context, context_instance=RequestContext (request))


def team (request):
    teams = Team.objects.all().order_by('name')

    context = {'num_teams':len(teams),
               'teams':teams,
               }
    return render_to_response('team.html', context, context_instance=RequestContext (request))

def umpire (request):
    umpires = Umpire.objects.all().order_by('name')

    context ={'num_umpires':len(umpires),
              'umpires':umpires,
              }
    return render_to_response('umpire.html', context, context_instance=RequestContext (request))



def AddPlayer(request):
    try:
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
                
        players = Player.objects.all().order_by('team','position','name')
                
        context = {'num_players': len(players),
                   'players': players,
                   'form': form
                   }
        return render_to_response('addplayerform.html', context, context_instance=RequestContext(request) )
    except:
        players = Player.objects.all().order_by('team','position','name')

        context = {'num_players': len(players),
                   'players': players,
                   'form': form
                   }
        return HttpResponse('<html><body>There was a problem. Please try again.</body></html>')

def AddGame(request):
    try:
        if request.method == 'POST':
            form = AddGameForm(request.POST)
            if form.is_valid():
                cd = form.cleaned_data

                title        = form.cleaned_data['title']
                date         = form.cleaned_data['date']
                firstbaseump = form.cleaned_data['first base umpire']
                secondbaseump= form.cleaned_data['second base umpire']
                thirdbaseump = form.cleaned_data['third base umpire']
                homeplateump = form.cleaned_data['home plate umpire']
                hometeam     = form.cleaned_data['home team']
                awayteam     = form.cleaned_data['away team']
                
                game = Game(title=title,
                            date=date,
                            firstBaseUmpire=firstbaseump,
                            secondBaseUmpire=secondbaseump,
                            thirdBaseUmpire=thirdbaseump,
                            homePlateUmpire=homeplateump,
                            homeTeam=hometeam,
                            awayTeam=awayteam)
                game.save()
                return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application. </body></html>".format(cd['title']) )
        else:
            form = AddGameForm()

        games = Game.objects.all().order_by('date','title')

        context = {'num_games': len(games),
                   'games': games,
                   'form': form
                   }
        return render_to_response('gameform.html', context, context_instance=RequestContext(request) )
    except:
        games = Game.objects.all().order_by('date','title')

        context = {'num_games': len(games),
                   'games': games,
                   'form': form
                   }

        return HttpResponse('<html><body>There was a problem. Please try again.</body></html>')


def UpdateBoxscore(request):
    try:
        if request.method == 'POST':
            form = UpdateBoxScore(request.POST)
            if form.is_valid():
                cd = form.cleaned_data
                
                game_id       = form.cleaned_data['game title']
                awayscore     = form.cleaned_data['away score']
                homescore     = form.cleaned_data['home score']
                awayhits      = form.cleaned_data['away hits']
                homehits      = form.cleaned_data['home hits']
                awayerrors    = form.cleaned_data['away errors']
                homeerrors    = form.cleaned_data['home errors']
                wp            = form.cleaned_data['winning pitcher']
                lp            = form.cleaned_data['losing pitcher']
                sv            = form.cleaned_data['save?']
                
                boxscore = Boxscore(game=game_id,
                                    awayScore=awayscore,
                                    homeScore=homescore,
                                    awayHits=awayhits,
                                    homeHits=homehits,
                                    awayErrors=awayerrors,
                                    homeErrors=homeerrors,
                                    WP=wp,
                                    LP=lp,
                                    SV=sv)
                boxscore.save()
                return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application. </body></html>".format(cd['game title']) )
        else:
            form = UpdateBoxScore()

        boxscores = Boxscore.objects.all()

        context = {'num_boxscores': len(boxscores),
                   'boxscores': boxscores,
                   'form': form
                   }
        return render_to_response('boxscoreform.html', context, context_instance=RequestContext(request) )
    except:
        boxscores = Boxscore.objects.all()

        context = {'num_boxscores': len(boxscores),
                   'boxscores': boxscores,
                   'form': form
                   }

        return HttpResponse('<html><body>There was a problem. Please try again.</body></html>')

def UpdateManager (request):
    try:
        if request.method == 'POST':
            form = UpdateManagerForm(request.POST)
            if form.is_valid():
                cd = form.cleaned_data
                
                name        = form.cleaned_data['name']
                team         = form.cleaned_data['team']
                
                manager = Manager(name=name,
                                  team=team)
                
                manager.save()
                return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application. </body></html>".format(cd['name']) )
        else:
            form = UpdateManagerForm()

        managers = Manager.objects.all().order_by('team')

        context = {'num_managers': len(managers),
                   'managers': managers,
                   'form': form
                   }
        return render_to_response('managerform.html', context, context_instance=RequestContext(request) )
    except:
        managers = Manager.objects.all().order_by('team')

        context = {'num_managers': len(managers),
                   'managers': managers,
                   'form': form
                   }
        return HttpResponse('<html><body>There was a problem. Please try again.</body></html>')

def UpdateStadium (request):
    try:
        if request.method == 'POST':
            form = UpdateStadiumForm(request.POST)
            if form.is_valid():
                cd = form.cleaned_data
                
                name        = form.cleaned_data['name']
                location    = form.cleaned_data['location']
                team        = form.cleaned_data['team']
                capacity    = form.cleaned_data['capacity']
                yearestablished = form.cleaned_data['year established']
                leftfield   = form.cleaned_data['left field']
                centerfield = form.cleaned_data['center field']
                rightfield  = form.cleaned_data['right field']
                
                stadium = Stadium (name=namem,
                                   location=location,
                                   team=team,
                                   capacity=capacity,
                                   yearEstablished=yearestablished,
                                   leftFieldDimension=leftfield,
                                   centerFieldDimension=centerfield,
                                   rightFieldDimension=rightfield)
                
                
                stadium.save()
                return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application. </body></html>".format(cd['name']) )
        else:
            form = UpdateStadiumForm()

        stadiums = Stadium.objects.all().order_by('team')

        context = {'num_stadiums': len(stadiums),
                   'stadiums':stadiums,
                   'form': form
                   }
        return render_to_response('stadiumform.html', context, context_instance=RequestContext(request) )
    except:
        stadiums = Stadium.objects.all().order_by('team')

        context = {'num_stadiums': len(stadiums),
                   'stadiums':stadiums,
                   'form': form
                   }
        return HttpResponse('<html><body>There was a problem. Please try again.</body></html>')

def UpdateUmpireOnGame (request):
    try:
        if request.method == 'POST':
            form = UpdateUmpireOnGameForm(request.POST)
            if form.is_valid():
                cd = form.cleaned_data
                
                game        = form.cleaned_data['game']
                name        = form.cleaned_data['name']
                position   = form.cleaned_data['position']
                
                ghu = Game_Has_Umpire (game_id=game,
                                       umpire_id=name,
                                       umpirePostion=postion,)
                
                ghu.save()
                return HttpResponse( "<html><body> {} has been added to the MLB_Playoffs_Application on {}. </body></html>".format(cd['name'], cd['game']) )
        else:
            form = UpdateUmpireOnGameForm()

            ghus = Game_Has_Umpire.objects.all().order_by('game','umpire')

            context = {'num_ghus': len(ghus),
                       'ghus':ghus,
                       'form': form
                       }
            return render_to_response('gamehasumpireform.html', context, context_instance=RequestContext(request) )
    except:
        ghus = Game_Has_Umpire.objects.all().order_by('game','umpire')

        context = {'num_ghus': len(ghus),
                   'ghus':ghus,
                   'form': form
                   }
        

        return HttpResponse('<html><body>There was a problem. Please try again.</body></html>')        
