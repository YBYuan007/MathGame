require './players'
require './questions'

class Games 
  def initialize() 
    @p1 = Player.new
    puts p1.enter_name 

    @p2 = Player.new 
    puts p2.enter_name

    puts "lets start the game!!"
    play

    @game_running = true 
  end 


  def play 
    current_player = @p1
    while continue_game  
      puts "#{current_player.name} now playing"
        puts "===== #{current_player.name} turn ======== "
        question = Question.new()

        puts " What does #{question.num1} plus #{question.num2} equal? "
        ans = gets.chomp
        if (ans.to_i == question.ans) 
          puts "YES! You are correct."
          puts "#{p1.name}: #{p1.score}/3 vs #{p2.name}: #{p2.score}/3"
        else 
          puts "Seriously? No!"
          current_player.reduce_score
          puts "#{p1.name}: #{p1.score}/3 vs #{p2.name}: #{p2.score}/3"
        end 
      if (current_player == @p1)
        current_player = @p2
      else 
         current_player = @p1
      end 
    end

    if @p1.score >= 0 
      puts "#{@p1.name} wins with a score of #{@p1.score}/3"
    else 
      puts "#{@p2.name} wins with a score of #{@p2.score}/3"
    end 
  end 

  def continue_game 
    if @p1.score == 0 || @p2.score == 0 
      return false 
    else 
      return true
    end 
  end 

  attr_accessor :current_player, :a , :p1, :p2, :game_running

end 

