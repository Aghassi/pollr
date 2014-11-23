class Poll < ActiveRecord::Base
  belongs_to :course
  has_many :questions

  validates :course, presence: true
end
