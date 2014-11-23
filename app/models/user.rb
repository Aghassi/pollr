class User < ActiveRecord::Base
  has_and_belongs_to_many :courses

  def admin_for?(object)
    case object
    when Course
      self.admin? || CoursesUser.exists?(course_id: object.id, user_id: self.id, admin: true)
    when Poll
      self.admin_for?(object.course)
    when Question
      self.admin_for?(object.poll.course)
    else
      raise(ArgumentError, "Users can only be admins of Courses, Polls, and Questions")
    end
  end
end
