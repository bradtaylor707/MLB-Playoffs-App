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
    url (r'^startinglineup/?$', views.startinglineup, name = 'startingLineup'),
    url (r'^team/?$', views.team, name = 'team'),
    url (r'^umpire/?$', views.umpire, name = 'umpire'),

    #forms urls
    url(r'^addplayerform/?$', views.AddPlayer, name="add_player_form"),
<<<<<<< HEAD
    url(r'^addteamform/?$', views.AddTeam, name="add_team_form"),
=======
    url(r'^boxscoreform/?$', views.UpdateBoxscore, name="update_boxscore"),
    url(r'^gameform/?$', views.AddGame, name ="add_game"),
    url(r'^managerform/?$', views.UpdateManager, name="update_manager"),
    url(r'^stadiumform/?$', views.UpdateStadium, name="update_stadium"),
    url(r'^gamehasumpireform/?$', views.UpdateUmpireOnGame, name="update_umpire"),
>>>>>>> 99ca764f3880bf79b4b991e79d23af7c50d7eabb
)
