#!/bin/sh

# echo to strip whitespace
USER=$1
GAMENAME=$2

if [ "$PASS" = "" ]; then
PASS=`echo "SELECT delegation FROM auth_user AS u JOIN game_joined j ON (u.id = j.user_id) JOIN player_player p ON p.id = j.user_id WHERE lower(username) = lower('$USER') AND game_id = '$GAMENAME'" | psql -t longturn longturn | head -n 1`
PASS=`echo $PASS`
fi
echo $PASS
