from django.contrib import admin
from MLB_Playoffs_App.models import *

admin.site.register(Manager)
admin.site.register(Team)
admin.site.register(Player)
admin.site.register(Stadium)
admin.site.register(Umpire)
admin.site.register(Game)
admin.site.register(Boxscore)
admin.site.register(Game_Has_Umpire)
admin.site.register(Player_PlaysIn_Game)
admin.site.register(Schedule)
admin.site.register(startingLineup)
