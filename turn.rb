#require "./player"
#require "./question"

class Turn
  #attr_reader :player, :question
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def prompt    
    "-----New Turn----- \n" +
    "#{@player.name}: #{@question}"
  end

  def result(answer)
    if @question.correct_answer?(answer)
      "#{@player.name}: Correctamundo!"
    else
      "#{@player.name}: Wrong answer! Go back to kindergarten!"
    end
  end
end
