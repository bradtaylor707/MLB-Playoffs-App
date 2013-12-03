from django.db import models

class Manager(models.Model):
    class Meta:
        db_table = 'manager'

    name    = models.CharField(max_length=80, primary_key=True)
    #team    = models.ForeignKey(Team, related_name="manage_manages_team")
    team    = models.CharField(max_length=50)

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.name


class Team(models.Model):
    class Meta:
        db_table = 'team'

    name        = models.CharField(max_length=50, primary_key=True)
    location    = models.CharField(max_length=50)
    manager     = models.ForeignKey(Manager, related_name="managerName")

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.name


class Player(models.Model):
    class Meta:
        db_table = 'player'

    position    = models.CharField(max_length=8)
    team        = models.ForeignKey(Team, related_name="playerOnTeam")
    status      = models.CharField(max_length=50)
    number      = models.IntegerField(default=0)
    name        = models.CharField(max_length=80, primary_key=True)
    bats        = models.CharField(max_length=1)
    throws      = models.CharField(max_length=1)
    height      = models.CharField(max_length=10)
    weight      = models.CharField(max_length=10)
    birthDate   = models.DateField('date born')

    def __unicode__(self):
        return self.name


class Stadium(models.Model):

    class Meta:
        db_table = 'stadium'

    name                    = models.CharField(max_length=50, primary_key=True)
    location                = models.CharField(max_length=50)
    team                    = models.ForeignKey(Team, related_name="teamName")
    capacity                = models.IntegerField(default=10000)
    yearEstablished         = models.DateField(default=0)
    leftFieldDimension      = models.IntegerField(default=300)
    centerFieldDimension    = models.IntegerField(default=300)
    rightFieldDimension     = models.IntegerField(default=300)
    pitcherOrHitterStadium  = models.CharField(max_length=10)

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.name


class Umpire(models.Model):
    class Meta:
        db_table = 'umpire'

    name        = models.CharField(max_length=80, primary_key=True)
    specialty   = models.CharField(max_length=50)
    salary      = models.IntegerField(default=10000)

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.name

class Game(models.Model):
    class Meta:
        db_table = 'game'

    title               = models.CharField(max_length=80, primary_key=True)
    date                = models.DateField('date played')
    firstBaseUmpire     = models.ForeignKey(Umpire, related_name="umpireName1")
    secondBaseUmpire    = models.ForeignKey(Umpire, related_name="umpireName2")
    thirdBaseUmpire     = models.ForeignKey(Umpire, related_name="umpireName3")
    homePlateUmpire     = models.ForeignKey(Umpire, related_name="umpireName4")
    homeTeam            = models.ForeignKey(Team, related_name="homeTeam")
    awayTeam            = models.ForeignKey(Team, related_name="awayTeam")

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.title


class Boxscore(models.Model):
    class Meta:
        db_table = 'boxScore'

    game        = models.ForeignKey(Game, primary_key=True)
    awayScore   = models.IntegerField(default=0)
    homeScore   = models.IntegerField(default=0)
    awayHits    = models.IntegerField(default=0)
    homeHits    = models.IntegerField(default=0)
    awayErrors  = models.IntegerField(default=0)
    homeErrors  = models.IntegerField(default=0)
    WP          = models.ForeignKey(Player, related_name="winningPitcher")
    LP          = models.ForeignKey(Player, related_name="losingPitcher")
    SV          = models.ForeignKey(Player, related_name="savingPitcher")

    def __unicode__(self):  # Python 3: def __str__(self):
        return 'Boxscore for game: ' + self.game.title



class Game_Has_Umpire(models.Model):
    class Meta:
        db_table = 'game_has_umpire'

    umpire          = models.ForeignKey(Umpire, related_name="umpireName")
    umpirePosition  = models.CharField(max_length=50)
    game            = models.ForeignKey(Game, related_name="gameTitle")

    def __unicode__(self):  # Python 3: def __str__(self):
        return self.umpire.name + 'umped game: ' + self.game.title 
        # return "Umped game: %s" % self.game.title
        # return "%s umped game: %s" % (self.umpire.name, self.game.title)



class Player_PlaysIn_Game(models.Model):
    class Meta:
        db_table = 'player_playsin_game'

    name    = models.ForeignKey(Player, related_name="playerName")
    game    = models.ForeignKey(Game, related_name="gameTitleForPlayer")

    def __unicode__(self):
        return self.name.name + ' played in game: ' + self.game.title


class Schedule(models.Model):
    class Meta:
        db_table = 'schedule'

    gameDate    = models.DateField('game date')
    stadium     = models.ForeignKey(Stadium, related_name="stadiumName")
    awayTeam    = models.ForeignKey(Team, related_name="playingAwayTeam")
    homeTeam    = models.ForeignKey(Team, related_name="playingHomeTeam")
    winner      = models.ForeignKey(Team, related_name="winningTeam")
    gameTitle   = models.ForeignKey(Game, related_name="gameTitleForSchedule")

    def __unicode__(self):
        return self.gameTitle.title


class startingLineup(models.Model):
    class Meta:
        db_table = 'startingLineup'

    gameTitle       = models.ForeignKey(Game, related_name="lineup_For_Game")
    date            = models.DateField('gameDate')
    awayTeam        = models.ForeignKey(Team, related_name="awayTeamName")
    awayPitcher     = models.ForeignKey(Player, related_name="awayTeamPitcher")
    awayCatcher     = models.ForeignKey(Player, related_name="awayTeamCatcher")
    away1B          = models.ForeignKey(Player, related_name="awayTeam1B")
    away2B          = models.ForeignKey(Player, related_name="awayTeam2B")
    awaySS          = models.ForeignKey(Player, related_name="awayTeamSS")
    away3B          = models.ForeignKey(Player, related_name="awayTeam3B")
    awayLF          = models.ForeignKey(Player, related_name="awayTeamLF")
    awayCF          = models.ForeignKey(Player, related_name="awayTeamCF")
    awayRF          = models.ForeignKey(Player, related_name="awayTeamRF")
    awayDH          = models.ForeignKey(Player, related_name="awayTeamDH")
    homeTeam        = models.ForeignKey(Team, related_name="homeTeamName")
    homePitcher     = models.ForeignKey(Player, related_name="homeTeamPitcher")
    homeCatcher     = models.ForeignKey(Player, related_name="homeTeamCatcher")
    home1B          = models.ForeignKey(Player, related_name="homeTeam1B")
    home2B          = models.ForeignKey(Player, related_name="homeTeam2B")
    homeSS          = models.ForeignKey(Player, related_name="homeTeamSS")
    home3B          = models.ForeignKey(Player, related_name="homeTeam3B")
    homeLF          = models.ForeignKey(Player, related_name="homeTeamLF")
    homeCF          = models.ForeignKey(Player, related_name="homeTeamCF")
    homeRF          = models.ForeignKey(Player, related_name="homeTeamRF")
    homeDH          = models.ForeignKey(Player, related_name="homeTeamDH")

    def __unicode__(self):
        return  'Starting Lineup for ' + self.gameTitle.title + ' ' + \
                self.awayPitcher.name + ' vs ' + \
                self.homePitcher.name
