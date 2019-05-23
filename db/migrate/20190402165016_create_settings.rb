class CreateSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :settings do |t|
      t.string :entry, limit: 255
      t.string :setting_type, limit: 255
      t.boolean :value_boolean
      t.date :value_date
      t.integer :value_number
      t.string :value_text, limit: 255

      t.timestamps
    end
  end
end
