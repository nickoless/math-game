class Player
  attr_accessor :name, :life
  def initialize(name)
    @name = name
    @life = 3
  end

  def life_down
    @life -= 1
  end

  def score
    "#{@life}/3"
  end
end


