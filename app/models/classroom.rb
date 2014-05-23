class Classroom < ActiveRecord::Base
  attr_accessible :capacity, :facilities, :name, :location, :location_id

  belongs_to :location

  has_many :bookings
  
end
