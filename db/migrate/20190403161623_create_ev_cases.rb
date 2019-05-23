class CreateEvCases < ActiveRecord::Migration[5.2]
  def change
    create_table :ev_cases do |t|
      t.references :verification, foreign_key: {on_delete: :cascade}
      t.string :first_name, limit: 80
      t.string :last_name, limit: 80
      t.string :middle_name, limit: 25
      t.integer :cit_status
      t.date :born_on
      t.string :ssn, limit: 11
      t.date :hired_on
      t.date :wae_on
      t.datetime :opened_on
      t.datetime :closed_on
      t.string :case_num, limit: 80
      t.string :result, limit: 255
      t.string :overdue_reason, limit: 255
      t.string :overdue_reason_detail, limit: 255

      t.timestamps
    end
  end
end
