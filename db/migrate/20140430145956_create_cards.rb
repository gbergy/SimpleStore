class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :type
      t.integer :number
      t.integer :code
      t.integer :user_id

      t.timestamps
    end
  end
end