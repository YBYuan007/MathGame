
class Player 
  def initialize
    @name = ""
    @score = 3 
  end 

  def enter_name
    puts "please enter your name"
    @name= gets.chomp
    return  "welcome! #{name}" 
  end 

  def reduce_score 
    @score -= 1
  end  

  attr_accessor :name, :score

end 

