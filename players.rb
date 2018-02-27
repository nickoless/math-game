class Player
  attr_accessor :name
  def initialize(number)
    @name = "Player #{number}"
    @number = number
    @life = 3
  end

  def life_down
    @life -= 1
  end

  def score
    "P#{@number} : #{@life}/3"
  end
end


