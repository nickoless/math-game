class Game
  def initialize()
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
    @game_exists = true
    start_game
  end

  def start_game
    while @game_exists do

      puts '----- NEW TURN -----'
      question = Question.new
      puts "#{@current_player.name}: #{question.expression}"
      @answer = gets.chomp.to_i

      if question.correct? (@answer)
        puts 'CORRECT!'
        puts"P1: #{@player1.score} vs P2: #{@player2.score}"
        switch_player

      else
        puts 'INCORRECT!'
        @current_player.life_down
        puts"P1: #{@player1.score} vs P2: #{@player2.score}"
        
        if @current_player.life == 0
          switch_player
          puts "#{@current_player.name} wins with a score of #{@current_player.score}"
          puts "----- GAME OVER -----"
          game_over
        else
          switch_player
        end
      end
    end
  end

  def game_over
    puts "Good bye!"
    @game_exists = false
  end

  def switch_player
   @current_player = @current_player == @player1 ? @player2 : @player1
  end
end


