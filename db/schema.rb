# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140521123904) do

  create_table "bookings", :force => true do |t|
    t.integer  "cohort_id"
    t.integer  "classroom_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "bookings", ["classroom_id"], :name => "index_bookings_on_classroom_id"
  add_index "bookings", ["cohort_id"], :name => "index_bookings_on_cohort_id"

  create_table "classrooms", :force => true do |t|
    t.integer  "location_id"
    t.integer  "capacity"
    t.text     "facilities"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "classrooms", ["location_id"], :name => "index_classrooms_on_location_id"

  create_table "cohorts", :force => true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cohorts", ["course_id"], :name => "index_cohorts_on_course_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "producer_id"
    t.integer  "location_id"
    t.integer  "program_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "courses", ["location_id"], :name => "index_courses_on_location_id"
  add_index "courses", ["producer_id"], :name => "index_courses_on_producer_id"
  add_index "courses", ["program_id"], :name => "index_courses_on_program_id"

  create_table "enrollments", :force => true do |t|
    t.integer  "cohort_id"
    t.integer  "student_id"
    t.boolean  "confirmed"
    t.boolean  "paid"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "enrollments", ["cohort_id"], :name => "index_enrollments_on_cohort_id"
  add_index "enrollments", ["student_id"], :name => "index_enrollments_on_student_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teaching_assignments", :force => true do |t|
    t.integer  "cohort_id"
    t.integer  "teacher_id"
    t.integer  "salary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "teaching_assignments", ["cohort_id"], :name => "index_teaching_assignments_on_cohort_id"
  add_index "teaching_assignments", ["teacher_id"], :name => "index_teaching_assignments_on_teacher_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
