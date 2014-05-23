class CreateTeachingAssignments < ActiveRecord::Migration
  def change
    create_table :teaching_assignments do |t|
      t.references :cohort
      t.references :teacher
      t.integer :salary

      t.timestamps
    end
    add_index :teaching_assignments, :cohort_id
    add_index :teaching_assignments, :teacher_id
  end
end
