require "./game"
require "./player"
require "./turn"
require "./question"

# Get players' names
print "Enter name for Player 1: "
p1 = Player.new(gets.chomp)
print "Enter name for Player 2: "
p2 = Player.new(gets.chomp)

game = Game.new(p1, p2)
while (!game.game_over?)
  puts game.status
  turn = game.next_turn
  puts turn.prompt
  answer = gets.chomp.to_i
  puts turn.result(answer)
end

puts game.ending_message
