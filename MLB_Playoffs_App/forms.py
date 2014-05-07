from django import forms

class AddPlayerForm(forms.Form):
    position    = forms.CharField()
    team_id     = forms.CharField()
    status      = forms.CharField()
    number      = forms.IntegerField()
    name        = forms.CharField()
    bats        = forms.CharField()
    throws      = forms.CharField()
    height      = forms.CharField()
    weight      = forms.IntegerField()
    birthDate   = forms.DateField()


class AddTeamForm(forms.Form):
    name = forms.CharField()
    location = forms.CharField()
    manager_id = forms.CharField()


class AddUmpireToGameForm(forms.Form):
    umpire = forms.CharField()
    umpirespecialty = forms.CharField()
    game = forms.CharField()


class AddGameForm(forms.Form):
    title               = forms.CharField()
    date                = forms.DateField()
    firstBaseUmpire     = forms.CharField()
    secondBaseUmpire    = forms.CharField()
    thirdBaseUmpire     = forms.CharField()
    homePlateUmpire     = forms.CharField()
    homeTeam            = forms.CharField()
    awayTeam            = forms.CharField()


class AddBoxScoreForGame(forms.Form):
    gameid = forms.CharField()
    awayScore = forms.IntegerField()
    homeScore = forms.IntegerField()
    awayHits = forms.IntegerField()
    homeHits = forms.IntegerField()
    awayErrors = forms.IntegerField()
    homeErrors = forms.IntegerField()
    WP = forms.IntegerField()
    LP = forms.IntegerField()
    SV = forms.IntegerField()


class UpdateBoxScore(forms.Form):
    gameid = forms.CharField()
    awayScore = forms.IntegerField()
    homeScore = forms.IntegerField()
    awayHits = forms.IntegerField()
    homeHits = forms.IntegerField()
    awayErrors = forms.IntegerField()
    homeErrors = forms.IntegerField()
    WP = forms.CharField()
    LP = forms.CharField()
    SV = forms.CharField()

class UpdateManagerForm (forms.Form):
    name = forms.CharField ()
    team = forms.CharField ()

class UpdateStadiumForm (forms.Form):
    name                  = forms.CharField()
    location              = forms.CharField()
    team_id               = forms.CharField()
    capacity              = forms.IntegerField()
    yearEstablished       = forms.IntegerField()
    leftFieldDimension    = forms.IntegerField()
    centerFieldDimension  = forms.IntegerField()
    rightFieldDimension   = forms.IntegerField()

class UpdateUmpireOnGameForm (forms.Form):
    game          = forms.CharField()
    name     = forms.CharField()
    postion        = forms.CharField()
