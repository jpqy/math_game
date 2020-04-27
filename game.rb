class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @number_of_turns = 0
    @current_player = [@p1, @p2].sample
  end

  def next_turn
    @number_of_turns += 1
    turn = Turn.new(@current_player)

    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end

    return turn
  end

  def status
    "Current status: #{@p1} vs #{@p2}"
  end

  def game_over?
    @p1.dead? || @p2.dead?
  end

  def ending_message
    winner = @p1.dead? ? @p2 : @p1
    "-----GAME OVER-----\n" +
    "#{winner.name} wins with #{winner.lives} lives remaining in turn #{@number_of_turns}!"
  end
end
