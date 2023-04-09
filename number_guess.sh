#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'";)

#if new user
if [[ -z $USER_ID ]]
then
  # insert new user
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')";)
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'";)
  echo -e "Welcome, $USERNAME! It looks like this is your first time here.\n"
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID;";)
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID;";)
  # return user message
  echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
fi

NUMBER_GUESS() {
  NUMBER=$(( $RANDOM % 1000 + 1 ))
  GUESSES=0
  echo $NUMBER #reveal the answer
  echo Guess the secret number between 1 and 1000:
  read USER_GUESS
  ((GUESSES++))

  #while USER_GUESS != NUMBER
  while [[ $USER_GUESS != NUMBER ]]
  do
    #if guess is not an integer
    if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
      echo That is not an integer, guess again:
      read USER_GUESS
      ((GUESSES++))
    fi

    #if guess is low
    if [[ $USER_GUESS -lt $NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      read USER_GUESS
      ((GUESSES++))
    fi

    # if guess is high
    if [[ $USER_GUESS -gt $NUMBER ]] 
    then
      echo "It's lower than that, guess again:"
      read USER_GUESS
      ((GUESSES++))
    fi

    # if guess is accurate
    if [[ $USER_GUESS = $NUMBER ]] 
    then
      echo You guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!
      INSERT_GAME_DATA=$($PSQL "INSERT INTO games(user_id, number, guesses) VALUES($USER_ID, $NUMBER, $GUESSES)";)
      break
    fi
  done
  
  #echo bingo
}

NUMBER_GUESS
