require "../player"

player = Player.new("joe")

puts "Created player-> #{player}"
puts "Is #{player.name} dead? #{player.dead?}"
puts "Penalizing #{player.name} twice"
player.penalize
player.penalize
puts "#{player.name}'s current stats: #{player}"
puts "Penalizing #{player.name} twice"
player.penalize
player.penalize
puts player
puts "Is #{player.name} dead? #{player.dead?}"