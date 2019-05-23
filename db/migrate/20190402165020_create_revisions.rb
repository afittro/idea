class CreateRevisions < ActiveRecord::Migration[5.2]
  def change
    create_table :revisions do |t|
      t.date :starts_on
      t.date :expires_on
      t.boolean :active
      t.string :notes, limit: 100

      t.timestamps
    end
  end
end
