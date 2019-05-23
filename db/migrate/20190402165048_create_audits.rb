class CreateAudits < ActiveRecord::Migration[5.2]
  def change
    create_table :audits do |t|
      t.references :verification, foreign_key: {on_delete: :cascade}
      t.references :mistake, foreign_key: {on_delete: :cascade}
      t.integer :issue
      t.integer :responsible
      t.datetime :recorded_on
      t.string :auditor, limit: 3

      t.timestamps
    end
  end
end
