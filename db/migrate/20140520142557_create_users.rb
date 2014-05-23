class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end


#scope called teachers that says go and get me all the users that have teachign assignments - would be in model