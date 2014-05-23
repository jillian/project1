class TeachingAssignment < ActiveRecord::Base
  attr_accessible :salary, :teacher_id, :cohort_id

  belongs_to :cohort
  belongs_to :teacher, class_name: "User"
  
end