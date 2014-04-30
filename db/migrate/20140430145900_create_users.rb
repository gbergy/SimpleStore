class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.string :address
      t.string :state
      t.string :city
      t.integer :zip

      t.timestamps
    end
  end
end
