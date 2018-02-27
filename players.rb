class Player
  attr_accessor :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def

  def score_up
    @lives += 1
  end

  def score_down
    @lives -= 1
  end

  def status
    "#{self.name} now has a "
  end
end


