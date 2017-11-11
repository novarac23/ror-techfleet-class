QA = [
  {question: "How many days does a year have?", answer: "365"},
  {question: "Who is the best basketball player currently?", answer: "LeBron James"}
]

class Quiz
  attr_accessor :score

  def initialize
    @score = 0
  end

  def check_answer(question_index, user_answer)
    question = QA[question_index]
    if question[:answer] == user_answer
      @score += 1
    end
  end
end

quiz = Quiz.new

QA.each_with_index do |qa, index|
  puts qa[:question]
  user_answer = gets.chomp
  quiz.check_answer(index, user_answer)
end

puts "Your score is #{quiz.score}"
