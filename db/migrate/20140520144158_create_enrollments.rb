class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :cohort
      t.references :student
      t.boolean :confirmed
      t.boolean :paid
      t.decimal :price


      t.timestamps
    end
    add_index :enrollments, :cohort_id
    add_index :enrollments, :student_id
  end
end
