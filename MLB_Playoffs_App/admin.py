from django.contrib import admin
from MLB_Playoffs_App.models import *

class ManagerAdmin (admin.ModelAdmin):
    list_display = ['name','team']
    list_filter = ['name','team']
    fieldsets = [
        (None, {'fields':['name','team']}),
    ]
    search_fields = ['name','team']
    ordering = ['team']

admin.site.register(Manager, ManagerAdmin)
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
