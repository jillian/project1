class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :role, :password, :password_confirmation

  validates :email, presence: true, uniqueness: true

  def role?(role)
    self.role.to_s == role.to_s
  end

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :enrollments, foreign_key: :student_id
  has_many :studied_cohorts, through: :enrollments, source: :cohort

  has_many :teaching_assignments, foreign_key: :teacher_id
  has_many :taught_cohorts, through: :teaching_assignments,  source: :cohort

  has_many :programs, foreign_key: :producer_id


end

