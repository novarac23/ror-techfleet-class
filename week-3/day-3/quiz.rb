class Quiz
  include QA
  attr_accessor :score

  def initialize
    @score = 0
  end

  def check_answer(question_index, user_answer)
    question = QA::QuestionAnswers[question_index]
    if question[:answer] == user_answer
      @score += 1
    end
  end
end
