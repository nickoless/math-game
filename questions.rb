class Question

  def initialize()
    @num_one = rand(20)
    @num_two = rand(20)
    @answer = @num_one + @num_two
  end 

  def expression
    "What is #{@num_one} plus #{@num_two}?"
  end

  def validation(answer)
    answer = @answer
  end

end
