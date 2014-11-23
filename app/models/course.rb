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

  def admins
    # XXX: Holy shit this is jank and inefficient as hell
    courses_and_users.where(admin: true).map(&:user)
  end
end
