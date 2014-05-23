class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.references :course
      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
    add_index :cohorts, :course_id
  end
end
