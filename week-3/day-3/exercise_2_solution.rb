# Set of questions
# set of answers
# a way to evaluate the answers from user
require "./qa"
require "./quiz"

quiz = Quiz.new

QA::QuestionAnswers.each_with_index do |qa, index|
  puts qa[:question]
  user_answer = gets.chomp
  quiz.check_answer(index, user_answer)
end

puts "Your score is #{quiz.score}"

