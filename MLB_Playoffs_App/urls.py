from django.conf.urls import patterns, url

from MLB_Playoffs_App import views

urlpatterns = patterns('',
    url (r'^$', views.index, name = 'index')
#    url (r'^/boxscore/$', name = 'boxScore')
#    url (r'^/game/$', name = 'game')
)
