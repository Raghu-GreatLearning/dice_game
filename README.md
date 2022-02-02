# Dice Game

## Requirements

> Let us code “The Game of Dice"

The "Game of Dice" is a 4 player game where 4 players roll a 6 faced dice in a round-robin
fashion. Each time a player rolls the dice their points increase by the number (1 to 6) achieved
by the roll.

As soon as a player accumulates 30 points they complete the game and are assigned a rank.
The remaining players continue to play the game till they accumulate at least 30 points. The game
ends when all players have accumulated at least 30 points.

> Rules of the game

- The order in which the users roll the dice is decided randomly at the start of the game.
- If a player rolls the value "6" then they immediately get another chance to roll again and move
ahead in the game.

> Implementation Details

- Implement a standalone program in ruby programming language.
- Name the players as Player-1 to Player-4 and randomly assign the order in which they
will roll the dice.
- When it's the turn for Player-X to roll the dice prompt a message like “Player-3 its your
turn (press ‘r’ to roll the dice)
- Randomly simulate a dice roll, display the points achieved and add the points to the
user’s score.
- Print the current rank table which displays the points of all users and their rank after
each roll.
- If the user gets another chance because they rolled a ‘6’ then print an appropriate message on standard output to
inform the user.
- If a user completes the game, print an appropriate message on the output displaying
their rank.
