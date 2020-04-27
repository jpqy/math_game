require "../turn"
require "../player"
require "../question"

player = Player.new("joe")
turn = Turn.new(player)
puts turn.prompt
answer = $stdin.gets.chomp.to_i
puts turn.result(answer)