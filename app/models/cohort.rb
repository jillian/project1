class Cohort < ActiveRecord::Base
  attr_accessible :end_date, :name, :start_date, :course_id

  belongs_to :course

  has_many :enrollments
  has_many :students, through: :enrollments

  has_many :teaching_assignments
  has_many :teachers, through: :teaching_assignments

  has_many :bookings

end
