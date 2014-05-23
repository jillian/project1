class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # unless user.nil?

    if user.role? :student
        can :read, [Location, Program, Course]
        can :create, Enrollment
        # can :read, Cohort do |cohort|
        #   student_ids = cohort.enrollments.map(&:student_id)
        #   student_ids.include? user.id
        # end
    elsif user.role? :teacher
        can :manage, Cohort
        cannot :destroy, Cohort
        can :read, TeachingAssignment do |ta|
          ta.teacher == user
        end
    elsif user.role? :producer
        # can :manage, [Program, Course, Cohort, Booking, Classroom, User, TeachingAssignment]
        can :read, Location
        can :read, Program

        can :read, Course
        can :manage, Course do |course|
          course.producer == user
        end
        can :create, Course

        can :manage, Cohort do |cohort|
          cohort.course.producer == user
        end   
        can :create, Cohort

        can :manage, Booking do |booking|
          booking.cohort.course.producer == user
        end
        can :create, Booking

        can :manage, User do |users|
          users.cohort.course.producer == user
        end
        can :create, User

        can :manage, TeachingAssignment do |teaching_assignment|
          teaching_assignment.cohort.course.producer == user
        end


    elsif user.role? :admin
        can :manage, :all
        can :create, :all
    else 
        can :read, [Location, Program, Course]
    end
  end

end
