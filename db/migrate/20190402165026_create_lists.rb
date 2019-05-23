class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name, limit: 255
      t.string :item, limit: 255
      t.string :payload0, limit: 255
      t.string :payload1, limit: 255
      t.string :payload2, limit: 255
      t.string :payload3, limit: 255
      t.string :payload4, limit: 255
      t.string :payload5, limit: 255
      t.string :payload6, limit: 255
      t.string :payload7, limit: 255
      t.string :payload8, limit: 255
      t.string :payload9, limit: 255

      t.timestamps
    end
  end
end
