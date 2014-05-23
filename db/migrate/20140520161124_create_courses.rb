class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.references :producer
      t.references :location
      t.references :program

      t.timestamps
    end
    add_index :courses, :producer_id
    add_index :courses, :location_id
    add_index :courses, :program_id
  end
end
