class Question 
  attr_accessor :number, :number2

  def initialize
    @number = rand(1..20)
    @number2 = rand(1..20)
    @sum = number + number2
  end

  def ask_question
    puts "Player: What is #{number} + #{number2} equal to?"
  end

  def answer(user_answer)
    @sum == user_answer
  end
end

def ask_question
  question = Question.new
  question.ask_question
  user_answer = gets.chomp.to_i
end

#ask_question