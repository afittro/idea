class CreateMistakes < ActiveRecord::Migration[5.2]
  def change
    create_table :mistakes do |t|
      t.string :abbr, limit: 20
      t.string :text, limit: 255
      t.boolean :active
      t.boolean :correctable
      t.integer :area
      t.integer :subarea
      t.integer :sort
      t.integer :responsible
      t.integer :severity
      t.string :description, limit: 255

      t.timestamps
    end
  end
end
