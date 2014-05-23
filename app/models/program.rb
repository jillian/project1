class Program < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :courses
  
end


#a user can be a producer if he's associated to a program as the producer
