class Question 
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20) 
    @ans = @num1+@num2
  end 

  attr_accessor :num1, :num2, :ans

end 