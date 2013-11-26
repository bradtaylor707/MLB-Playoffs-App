#! /bin/bash

echo 'Creating DB schema starts'
mysql --password='003678368' --user=btaylor  < MLB_Playoffs_2013.sql
echo 'Creating DB schema ends'

for dataFile in game_has_umpire.sql player.sql startingLineup.sql team.sql umpire.sql stadium.sql boxScore.sql game.sql schedule.sql manager.sql; do
    echo "Poplulating table $(echo $dataFile | sed 's/\.sql//')."
    mysql --password='003678368' --user=btaylor  < $dataFile
    echo "Poplulating table $(echo $dataFile | sed 's/\.sql//') completed."
done
