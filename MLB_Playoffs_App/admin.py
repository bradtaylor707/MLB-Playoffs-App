from django.contrib import admin
from MLB_Playoffs_App.models import *

class ManagerAdmin (admin.ModelAdmin):
    list_display = ['name','team']
    # list_filter = ['name','team']
    fieldsets = [
        (None, {'fields':['name','team']}),
    ]
    search_fields = ['name','team']
    ordering = ['team']

class TeamAdmin (admin.ModelAdmin):
    list_display = ['name','location','manager']
    # list_filter = ['name','location']
    fieldsets = [
        (None, {'fields':['name','location','manager']}),
        
    ]
    search_fields = ['name','location','manager']
    ordering = ['name']

class GameAdmin (admin.ModelAdmin):
    list_display = ['title','date','awayTeam','homeTeam']
    fieldsets = [
        (None, {'fields':['title','date','awayTeam','homeTeam']}),
        # ('Away Team',{'fields':['awayTeam']}),
        # ('Home Team',{'fields':['homeTeam']}),
    ]
    search_fields = ['title','date','awayTeam','homeTeam']
    ordering = ['date']

admin.site.register(Manager, ManagerAdmin)
admin.site.register(Team, TeamAdmin)
admin.site.register(Player)
admin.site.register(Stadium)
admin.site.register(Umpire)
admin.site.register(Game, GameAdmin)
admin.site.register(Boxscore)
admin.site.register(Game_Has_Umpire)
admin.site.register(Player_PlaysIn_Game)
admin.site.register(Schedule)
admin.site.register(startingLineup)
