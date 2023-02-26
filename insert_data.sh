#! /bin/bash

if [[ $1 == "test" ]]
then
    PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
    PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
    ##################################
    #INSERT DATA INTO THE TEAMS TABLE#
    ##################################
    
    # Insert Winner
    if [[ $WINNER != "winner" ]]
    then
        # Get team id
        TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        # If not found
        if [[ -z $TEAM_ID ]]
        then
            INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
            if [[ $INSERT_WINNER == "INSERT 0 1" ]]
            then
                echo Inserted into teams, $WINNER
            fi
        fi
    fi
    # Insert Opponent
    if [[ $OPPONENT != "opponent" ]]
    then
        # Get team id
        TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        # If not found
        if [[ -z $TEAM_ID ]]
        then
            INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
            if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
            then
                echo Inserted into teams, $OPPONENT
            fi
        fi
    fi
    ##############################
    #INSERT DATA INTO GAMES TABLE#
    ##############################

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    INSERT_GAME_RESULT="$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES($YEAR,'$ROUND',$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID)")"
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
    echo Inserted into games, $YEAR $ROUND $WINNER_GOALS $OPPONENT_GOALS $WINNER_ID $OPPONENT_ID
    fi
done
