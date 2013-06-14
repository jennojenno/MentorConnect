class Favorite < ActiveRecord::Base
  attr_accessible :course_id, :user_id
  belongs_to :user
  belongs_to :course
  validates_uniqueness_of :user_id, :scope => [:course_id]
end
