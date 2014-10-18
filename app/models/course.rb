class Course < ActiveRecord::Base
  has_many :polls
end
