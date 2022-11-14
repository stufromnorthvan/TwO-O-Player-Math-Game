class Question
  attr_accessor :question, :answer

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

  @question

end

# q = Question.new
# q2 = Question.new
# puts q.question
# puts q2.question