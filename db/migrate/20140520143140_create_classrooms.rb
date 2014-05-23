class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.references :location
      t.integer :capacity
      t.text :facilities
      t.string :name

      t.timestamps
    end
    add_index :classrooms, :location_id
  end
end
