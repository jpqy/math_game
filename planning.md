# 1. Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.
- Player
- Question
- Turn
- Game

# 2. Write out a brief paragraph describing the role that class will play in your app.

## Player
An object representing a player of the game

**State**: track the player's `name` and their `remaining_lives`

**Behaviour**:
- `initialize` - only need the `name`, set `remaining_lives` variable to 3
- `penalize` - decrement `remaining_lives` by 1
- `to_s` - format the string as `name: life`

## Question
An object representing a math question

**State**: track the 2 randomly generated `number`s that make the question

**Behaviour**:
- `initialize` - no parameters, just generate two random numbers and store them as instance variables
- `to_s` - print out the question in formatted string (i.e. `What does 5 plus 3 equal?`)
- `right_answer?` - check if the supplied answer parameter is correct

## Turn
An object representing a single turn in the game

**State**: track the `current player` and the `question` that is asked. May also track `answered_correctly` boolean.

**Behaviour**:
- `initialize` - Only parameter = current player. Also generates a question object.
- `to_s` - print out the question in formatted string (i.e. `What does 5 plus 3 equal?`)
- `right_answer?` - check if the supplied answer parameter is correct

## Game
An object representing the current game. Tracks the players and handles the progression of the game.

**State**: store the two `player` objects who are playing, track whose turn it is, the number of turns elapsed (maybe store an array of `turn` objects), and if the game is over

**Behaviour**
- `initialize` - need the two players as parameters. Randomly select who goes first
- `status` - outputs the name of the players and their lives (i.e. `P1 2/3 vs P2: 3/3`)
- `next_turn` - outputs `---NEW TURN---` and makes a new `turn` object
- `game_over?` - checks if any player lost all their lives
- `end_message` - outputs `---GAME OVER---` and the winner details