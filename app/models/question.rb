class Question < ActiveRecord::Base
  belongs_to :poll

  def start(user)
    if user.admin_for?(self)
      self.start_time = Time.now
      return start_time
    end
  end
end
