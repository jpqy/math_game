class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def penalize
    @lives -= 1
  end

  def dead?
    return @lives < 0
  end

  def to_s
    "#{self.name}: #{@lives}/3"
  end
end
