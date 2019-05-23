class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :initials, limit: 3
      t.string :full_name, limit: 255
      t.string :user_name, limit: 25
      t.integer :role
      t.boolean :active

      t.timestamps
    end
  end
end
