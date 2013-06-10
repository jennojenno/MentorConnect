class Course < ActiveRecord::Base
  attr_accessible :category, :title, :dates, :online, :in_person

  belongs_to :user
end
