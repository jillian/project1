class Location < ActiveRecord::Base
  attr_accessible :name

  has_many :classrooms
  has_many :courses
  
end
