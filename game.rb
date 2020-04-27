class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @number_of_turns = 0
    @current_player = rand(@p1, @p2)
  end

  def next_turn
    @number_of_turns += 1
    turn = Turn.new(@current_player)    
  end

  def game_over?
    @p1.dead? || @p2.dead?
  end

  def ending
    winner = @p1.dead? ? @p2: @p1
    "-----GAME OVER-----\n" +
    "#{winner.name} wins with #{winner.lives} remaining!"
  end
end
