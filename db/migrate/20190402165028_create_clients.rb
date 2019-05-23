class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :full_name
      t.string :alternate_names
      t.boolean :active

      t.timestamps
    end
  end
end
