class CreateDocumentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :document_types do |t|
      t.integer :code
      t.string :name, limit: 255
      t.string :abbr, limit: 10
      t.boolean :active
      t.boolean :ev
      t.boolean :rcpt

      t.timestamps
    end
  end
end
