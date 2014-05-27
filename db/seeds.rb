student1 = User.create!(first_name: 'Jillian', last_name: 'Mac', email: 'jillian@mac.com', password: "password", password_confirmation: "password", role: 'student')
student2 = User.create!(first_name: 'Will', last_name: 'Smith', email: 'will@smith.com', password: "password", password_confirmation: "password", role: 'student')
student3 = User.create!(first_name: 'Bruno', last_name: 'Gagliasso', email: 'bruno@gagliasso.com', password: "password", password_confirmation: "password", role: 'student')
student4 = User.create!(first_name: 'Vlady', last_name: 'Putin', email: 'boss@russia.gov', password: "password", password_confirmation: "password", role: 'student')
producer1 = User.create!(first_name: 'Julien', last_name: 'Desl...', email: 'julien@des.com', password: "password", password_confirmation: "password", role: 'producer')
producer2 = User.create!(first_name: 'Bat-', last_name: '-man', email: 'batman@gothamcity.com', password: "password", password_confirmation: "password", role: 'producer')
producer3 = User.create!(first_name: 'Barack', last_name: 'Obama', email: 'potus@whitehouse.gov', password: "password", password_confirmation: "password", role: 'producer')
teacher1 = User.create!(first_name: 'Imran', last_name: 'Elder', email: 'tim_elder@dentistry.com', password: "password", password_confirmation: "password", role: 'teacher')
teacher2 = User.create!(first_name: 'Tim', last_name: 'Cynamon', email: 'confused@ga.com', password: "password", password_confirmation: "password", role: 'teacher')
admin = User.create!(first_name: "Captain Group", last_name: 'Therapy', email: 'musicmaker@ga.com', password: "jill", password_confirmation: "jill", role: 'admin')


program1 = Program.create!(name: 'Early Life Skills', description: "Gigli, a lowly and inept hitman, is assigned a job by the mob to kidnap a mentally retarded brother of a California district attorney. Gigli abducts the brother from his mental hospital and holds him hostage in his apartment. Ricki, a lesbian assassin, is sent to oversee Giglis job and make sure he doesnt screw it up. Comedic high jinks ensue as the two go on the lam and start to fall in love.")
program2 = Program.create!(name: 'Continuing Career Development', description: 'A giant, global-killing asteriod, like the one that killed off the dinosaurs 65 million years ago is 18 days away from hitting the Earth. NASAs been caught with their pants down and needs a new plan to stop the rock. They enlist the help of Harry Stamper, an expert deep core driller, to train their astronauts and help them drill into the asteroid and plant a nuclear bomb.')

location1 = Location.create!(name: 'London')
location2 = Location.create!(name: 'Pandora')
location3 = Location.create!(name: 'Mordor')
location4 = Location.create!(name: 'Canada')


course1 = Course.create!(name: 'Underwater Basket Weaving', location_id: location1.id, producer_id: producer1.id, program_id: program1.id)
course2 = Course.create!(name: 'The Textual Appeal of Tupac Shakur', location_id: location2.id, producer_id: producer2.id, program_id: program2.id)
course3= Course.create!(name: 'Advanced Hackey Sack', location_id: location1.id, producer_id: producer1.id, program_id: program1.id)
course4= Course.create!(name: 'Sport For The Spectator', location_id: location4.id, producer_id: producer2.id, program_id: program2.id)
course5= Course.create!(name: 'Forklift Driving 101', location_id: location3.id, producer_id: producer2.id, program_id: program1.id)
course6= Course.create!(name: 'Maple Syrup: The Real Thing', location_id: location4.id, producer_id: producer3.id, program_id: program2.id)

classroom1 = Classroom.create!(name: 'Spaceship, daytime', capacity: 20, location: location1)
classroom2 = Classroom.create!(name: 'Attic, daytime', capacity: 30, location: location1)
classroom3 = Classroom.create!(name: 'Dungeon, daytime', capacity: 40, location: location1)
classroom4 = Classroom.create!(name: 'Spaceship, weeknights', capacity: 20, location: location1)
classroom5 = Classroom.create!(name: 'Attic, weeknights', capacity: 30, location: location1)
classroom6 = Classroom.create!(name: 'Dungeon, weekend', capacity: 40, location: location1)
classroom7 = Classroom.create!(name: 'Spaceship, weekend', capacity: 20, location: location1)
classroom8 = Classroom.create!(name: 'Attic, weekend', capacity: 30, location: location1)
classroom9 = Classroom.create!(name: 'Dungeon, weekend', capacity: 40, location: location1)

cohort1 = Cohort.create!(name: 'MapleSyrup_London_Apr2014', start_date: 30.days.ago.to_date, end_date: 60.days.from_now.to_date, course_id: course6.id)
cohort2 = Cohort.create!(name: 'Forklift_London_Apr2014', start_date: 30.days.ago.to_date, end_date: 60.days.from_now.to_date, course_id: course5.id)
cohort3 = Cohort.create!(name: 'HackSack_London_Apr2014', start_date: 30.days.ago.to_date, end_date: 60.days.from_now.to_date, course_id: course3.id)

booking1 = Booking.create!(start_date: 30.days.ago.to_date, end_date: 60.days.from_now.to_date, cohort_id: cohort1.id, classroom_id: classroom1.id)
booking2 = Booking.create!(start_date: 30.days.ago.to_date, end_date: 60.days.from_now.to_date, cohort_id: cohort2.id, classroom_id: classroom2.id)
booking3 = Booking.create!(start_date: 30.days.ago.to_date, end_date: 60.days.from_now.to_date, cohort_id: cohort3.id, classroom_id: classroom3.id)

ta1 = TeachingAssignment.create!(cohort_id: cohort1.id, teacher_id: teacher2.id, salary: 6)
ta2 = TeachingAssignment.create!(salary: 8, teacher_id: teacher1.id, cohort_id: cohort2.id)

enroll1 = Enrollment.create!(cohort_id: cohort1.id, student_id: student1.id)
enroll2 = Enrollment.create!(cohort_id: cohort1.id, student_id: student2.id)
enroll3 = Enrollment.create!(cohort_id: cohort1.id, student_id: student3.id)
enroll4 = Enrollment.create!(cohort_id: cohort1.id, student_id: student4.id)



