class Course < ActiveRecord::Base
  has_many :polls
  has_many :courses_users
  
  # This should be `has_many :users, through: :courses_users`, but computers are dumb
  has_and_belongs_to_many :users

  # Adds a user to the course
  def add_user(user)
    # TODO: Potentially do checks here for if the user is allowed to enroll
    if user && !self.users.include?(user)
      self.users << user
      return true
    else
      return false
    end
  end

  def add_admin(user)
    course_user = CoursesUser.where(user_id: user.id, course_id: self.id).first_or_initialize
    course_user.admin = true
    course_user.save
  end
end
