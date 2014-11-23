class Question < ActiveRecord::Base
  belongs_to :poll

  has_many :users_questions

  def start(user)
    if user.admin_for?(self)
      self.start_time = Time.now
      return start_time
    end
  end

  def answer(answer_id, user)
    user_question = UsersQuestion.where(question_id: self.id, user_id: user.id).first_or_initialize
    user_question.answer_id = answer_id
    user_question.save
  end
end
