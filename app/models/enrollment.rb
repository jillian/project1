class Enrollment < ActiveRecord::Base
  attr_accessible :confirmed, :paid, :student, :student_id, :cohort, :cohort_id

  belongs_to :cohort
  belongs_to :student, class_name: "User"

end

# map all teaching assignments and unique it
# @teachers = teaching_assignments.all.map(&:teacher).uniq


# migration - user id to student id