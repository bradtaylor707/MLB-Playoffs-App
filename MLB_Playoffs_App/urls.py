from django.conf.urls import patterns, url

from MLB_Playoffs_App import views

urlpatterns = patterns('',
    #index page url
    url (r'^$', views.index, name = 'index'),

    #sql table data views
    url (r'^boxscore/?$', views.boxScore, name = 'boxScore'),
    url (r'^game/?$', views.game, name = 'game'),
    url (r'^game_has_umpire/?$', views.game_has_umpire, name = 'game_has_umpire'),
    url (r'^manager/?$', views.manager, name = 'manager'),
    url (r'^player/?$', views.player, name = 'player'),
    url (r'^player_playsin_game/?$', views.player_playsin_game, name = 'player_playsin_game'), 
    url (r'^schedule/?$', views.schedule, name = 'schedule'),
    url (r'^stadium/?$', views.stadium, name = 'stadium'),
    url (r'^startinglineup/?$', views.startingLineup, name = 'startingLineup'),
    url (r'^team/?$', views.team, name = 'team'),
    url (r'^umpire/?$', views.umpire, name = 'umpire'),

    #forms urls
    url(r'^addplayerform/?$', views.AddPlayer, name="add_player_form"),
)
