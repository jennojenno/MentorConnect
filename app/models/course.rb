class Course < ActiveRecord::Base
  attr_accessible :category, :desc, :title, :dates, :online, :in_person, :user_id

  belongs_to :user
  has_many :favorites
end
