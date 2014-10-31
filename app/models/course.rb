class Course < ActiveRecord::Base
  has_many :polls
  has_and_belongs_to_many :users

  # Adds a user to the course
  def add_user(user)
    # TODO: Potentially do checks here for if the user is allowed to enroll
    if user && (user not in self.users)
      self.users << user
      return true
    else
      return false
    end
  end
end
