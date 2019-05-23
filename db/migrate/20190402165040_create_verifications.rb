class CreateVerifications < ActiveRecord::Migration[5.2]
  def change
    create_table :verifications do |t|
      t.references :employee, foreign_key: {on_delete: :cascade}
      t.references :revision, foreign_key: {on_delete: :cascade}
      t.string :barcode, limit: 20
      t.string :batch, limit: 40
      t.string :first_name, limit: 80
      t.string :last_name, limit: 80
      t.string :middle_name, limit: 25
      t.string :other_name, limit: 80
      t.boolean :s1_signed
      t.date :s1_signed_on
      t.string :s1_signed_identifier
      t.boolean :pt_signed
      t.date :pt_signed_on
      t.string :pt_signed_identifier
      t.boolean :s2_signed
      t.date :s2_signed_on
      t.string :s2_signed_identifier
      t.boolean :s3_signed
      t.date :s3_signed_on
      t.string :s3_signed_identifier
      t.string :addr, limit: 255
      t.string :apt, limit: 10
      t.string :city, limit: 50
      t.string :state, limit: 40
      t.string :zip, limit: 10
      t.date :born_on
      t.string :ssn, limit: 11
      t.string :email, limit: 255
      t.string :phone, limit: 40
      t.integer :cit_status
      t.string :anum_lpr, limit: 20
      t.string :anum_aaw, limit: 20
      t.date :wae_on
      t.string :i94_num, limit: 20
      t.string :fpp_num, limit: 20
      t.string :fpp_auth, limit: 40
      t.boolean :pt
      t.string :pt_full_name, limit: 255
      t.string :pt_first_name, limit: 80
      t.string :pt_last_name, limit: 80
      t.string :pt_full_addr, limit: 255
      t.string :pt_addr, limit: 255
      t.string :pt_city, limit: 50
      t.string :pt_state, limit: 40
      t.string :pt_zip, limit: 10
      t.string :s2_hdr_full_name, limit: 255
      t.string :s2_hdr_first_name, limit: 80
      t.string :s2_hdr_last_name, limit: 80
      t.string :s2_hdr_middle_name, limit: 25
      t.integer :s2_hdr_testify_num
      t.references :a1_doc, index: true, foreign_key: {to_table: :document_types, on_delete: :cascade}
      t.references :a2_doc, index: true, foreign_key: {to_table: :document_types, on_delete: :cascade}
      t.references :a3_doc, index: true, foreign_key: {to_table: :document_types, on_delete: :cascade}
      t.references :b1_doc, index: true, foreign_key: {to_table: :document_types, on_delete: :cascade}
      t.references :c1_doc, index: true, foreign_key: {to_table: :document_types, on_delete: :cascade}
      t.references :s3_doc, index: true, foreign_key: {to_table: :document_types, on_delete: :cascade}
      t.string :a1_doc_title, limit: 255
      t.string :a2_doc_title, limit: 255
      t.string :a3_doc_title, limit: 255
      t.string :b1_doc_title, limit: 255
      t.string :c1_doc_title, limit: 255
      t.string :s3_doc_title, limit: 255
      t.string :a1_doc_auth, limit: 255
      t.string :a2_doc_auth, limit: 255
      t.string :a3_doc_auth, limit: 255
      t.string :b1_doc_auth, limit: 255
      t.string :c1_doc_auth, limit: 255
      t.string :s3_doc_auth, limit: 255
      t.string :a1_doc_num, limit: 255
      t.string :a2_doc_num, limit: 255
      t.string :a3_doc_num, limit: 255
      t.string :b1_doc_num, limit: 255
      t.string :c1_doc_num, limit: 255
      t.string :s3_doc_num, limit: 255
      t.date :a1_doc_expires_on
      t.date :a2_doc_expires_on
      t.date :a3_doc_expires_on
      t.date :b1_doc_expires_on
      t.date :c1_doc_expires_on
      t.date :s3_doc_expires_on
      t.boolean :a1_doc_rcpt
      t.boolean :a2_doc_rcpt
      t.boolean :a3_doc_rcpt
      t.boolean :b1_doc_rcpt
      t.boolean :c1_doc_rcpt
      t.boolean :s3_doc_rcpt
      t.text :doc_added_info
      t.date :hired_on
      t.string :hr_full_name, limit: 255
      t.string :hr_first_name, limit: 80
      t.string :hr_last_name, limit: 80
      t.string :hr_title, limit: 80
      t.string :bus_name, limit: 80
      t.string :bus_full_addr, limit: 255
      t.string :bus_addr, limit: 255
      t.string :bus_city, limit: 50
      t.string :bus_state, limit: 40
      t.string :bus_zip, limit: 10
      t.string :s3_new_name, limit: 255
      t.date :s3_rehired_on
      t.string :s3_full_name, limit: 255
      t.string :s3_first_name, limit: 80
      t.string :s3_last_name, limit: 80

      t.timestamps
    end
  end
end
