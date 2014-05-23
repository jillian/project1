class Course < ActiveRecord::Base
  attr_accessible :name, :producer_id, :location_id, :program_id, :program, :location, :producer

  belongs_to :producer, class_name: "User"
  belongs_to :location
  belongs_to :program
  has_many :cohorts
end
