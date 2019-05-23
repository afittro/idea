class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name, limit: 80
      t.string :last_name, limit: 80
      t.string :middle_name, limit: 25
      t.string :ssn, limit: 11
      t.date :born_on
      t.date :hired_on
      t.references :client, foreign_key: {on_delete: :cascade}
      t.string :co_profile, limit: 30
      t.string :other_name, limit: 80
      t.string :title, limit: 80
      t.string :email, limit: 255
      t.string :batch, limit: 40

      t.timestamps
    end

    # add_foreign_key :employees, :clients, on_delete: :cascade
  end
end
