# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_14_003840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "audits", force: :cascade do |t|
    t.bigint "verification_id"
    t.bigint "mistake_id"
    t.integer "issue"
    t.integer "responsible"
    t.datetime "recorded_on"
    t.string "auditor", limit: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mistake_id"], name: "index_audits_on_mistake_id"
    t.index ["verification_id"], name: "index_audits_on_verification_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "full_name"
    t.string "alternate_names"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.integer "code"
    t.string "name", limit: 255
    t.string "abbr", limit: 10
    t.boolean "active"
    t.boolean "ev"
    t.boolean "rcpt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name", limit: 80
    t.string "last_name", limit: 80
    t.string "middle_name", limit: 25
    t.string "ssn", limit: 11
    t.date "born_on"
    t.date "hired_on"
    t.bigint "client_id"
    t.string "co_profile", limit: 30
    t.string "other_name", limit: 80
    t.string "title", limit: 80
    t.string "email", limit: 255
    t.string "batch", limit: 40
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_employees_on_client_id"
  end

  create_table "ev_cases", force: :cascade do |t|
    t.bigint "verification_id"
    t.string "first_name", limit: 80
    t.string "last_name", limit: 80
    t.string "middle_name", limit: 25
    t.integer "cit_status"
    t.date "born_on"
    t.string "ssn", limit: 11
    t.date "hired_on"
    t.date "wae_on"
    t.datetime "opened_on"
    t.datetime "closed_on"
    t.string "case_num", limit: 80
    t.string "result", limit: 255
    t.string "overdue_reason", limit: 255
    t.string "overdue_reason_detail", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["verification_id"], name: "index_ev_cases_on_verification_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "item", limit: 255
    t.string "payload0", limit: 255
    t.string "payload1", limit: 255
    t.string "payload2", limit: 255
    t.string "payload3", limit: 255
    t.string "payload4", limit: 255
    t.string "payload5", limit: 255
    t.string "payload6", limit: 255
    t.string "payload7", limit: 255
    t.string "payload8", limit: 255
    t.string "payload9", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mistakes", force: :cascade do |t|
    t.string "abbr", limit: 20
    t.string "text", limit: 255
    t.boolean "active"
    t.boolean "correctable"
    t.integer "area"
    t.integer "subarea"
    t.integer "sort"
    t.integer "responsible"
    t.integer "severity"
    t.string "description", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "revisions", force: :cascade do |t|
    t.date "starts_on"
    t.date "expires_on"
    t.boolean "active"
    t.string "notes", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string "entry", limit: 255
    t.string "setting_type", limit: 255
    t.boolean "value_boolean"
    t.date "value_date"
    t.integer "value_number"
    t.string "value_text", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "initials", limit: 3
    t.string "full_name", limit: 255
    t.string "user_name", limit: 25
    t.integer "role"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verifications", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "revision_id"
    t.string "barcode", limit: 20
    t.string "batch", limit: 40
    t.string "first_name", limit: 80
    t.string "last_name", limit: 80
    t.string "middle_name", limit: 25
    t.string "other_name", limit: 80
    t.boolean "s1_signed"
    t.date "s1_signed_on"
    t.string "s1_signed_identifier"
    t.boolean "pt_signed"
    t.date "pt_signed_on"
    t.string "pt_signed_identifier"
    t.boolean "s2_signed"
    t.date "s2_signed_on"
    t.string "s2_signed_identifier"
    t.boolean "s3_signed"
    t.date "s3_signed_on"
    t.string "s3_signed_identifier"
    t.string "addr", limit: 255
    t.string "apt", limit: 10
    t.string "city", limit: 50
    t.string "state", limit: 40
    t.string "zip", limit: 10
    t.date "born_on"
    t.string "ssn", limit: 11
    t.string "email", limit: 255
    t.string "phone", limit: 40
    t.integer "cit_status"
    t.string "anum_lpr", limit: 20
    t.string "anum_aaw", limit: 20
    t.date "wae_on"
    t.string "i94_num", limit: 20
    t.string "fpp_num", limit: 20
    t.string "fpp_auth", limit: 40
    t.boolean "pt"
    t.string "pt_full_name", limit: 255
    t.string "pt_first_name", limit: 80
    t.string "pt_last_name", limit: 80
    t.string "pt_full_addr", limit: 255
    t.string "pt_addr", limit: 255
    t.string "pt_city", limit: 50
    t.string "pt_state", limit: 40
    t.string "pt_zip", limit: 10
    t.string "s2_hdr_full_name", limit: 255
    t.string "s2_hdr_first_name", limit: 80
    t.string "s2_hdr_last_name", limit: 80
    t.string "s2_hdr_middle_name", limit: 25
    t.integer "s2_hdr_testify_num"
    t.bigint "a1_doc_id"
    t.bigint "a2_doc_id"
    t.bigint "a3_doc_id"
    t.bigint "b1_doc_id"
    t.bigint "c1_doc_id"
    t.bigint "s3_doc_id"
    t.string "a1_doc_title", limit: 255
    t.string "a2_doc_title", limit: 255
    t.string "a3_doc_title", limit: 255
    t.string "b1_doc_title", limit: 255
    t.string "c1_doc_title", limit: 255
    t.string "s3_doc_title", limit: 255
    t.string "a1_doc_auth", limit: 255
    t.string "a2_doc_auth", limit: 255
    t.string "a3_doc_auth", limit: 255
    t.string "b1_doc_auth", limit: 255
    t.string "c1_doc_auth", limit: 255
    t.string "s3_doc_auth", limit: 255
    t.string "a1_doc_num", limit: 255
    t.string "a2_doc_num", limit: 255
    t.string "a3_doc_num", limit: 255
    t.string "b1_doc_num", limit: 255
    t.string "c1_doc_num", limit: 255
    t.string "s3_doc_num", limit: 255
    t.date "a1_doc_expires_on"
    t.date "a2_doc_expires_on"
    t.date "a3_doc_expires_on"
    t.date "b1_doc_expires_on"
    t.date "c1_doc_expires_on"
    t.date "s3_doc_expires_on"
    t.boolean "a1_doc_rcpt"
    t.boolean "a2_doc_rcpt"
    t.boolean "a3_doc_rcpt"
    t.boolean "b1_doc_rcpt"
    t.boolean "c1_doc_rcpt"
    t.boolean "s3_doc_rcpt"
    t.text "doc_added_info"
    t.date "hired_on"
    t.string "hr_full_name", limit: 255
    t.string "hr_first_name", limit: 80
    t.string "hr_last_name", limit: 80
    t.string "hr_title", limit: 80
    t.string "bus_name", limit: 80
    t.string "bus_full_addr", limit: 255
    t.string "bus_addr", limit: 255
    t.string "bus_city", limit: 50
    t.string "bus_state", limit: 40
    t.string "bus_zip", limit: 10
    t.string "s3_new_name", limit: 255
    t.date "s3_rehired_on"
    t.string "s3_full_name", limit: 255
    t.string "s3_first_name", limit: 80
    t.string "s3_last_name", limit: 80
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["a1_doc_id"], name: "index_verifications_on_a1_doc_id"
    t.index ["a2_doc_id"], name: "index_verifications_on_a2_doc_id"
    t.index ["a3_doc_id"], name: "index_verifications_on_a3_doc_id"
    t.index ["b1_doc_id"], name: "index_verifications_on_b1_doc_id"
    t.index ["c1_doc_id"], name: "index_verifications_on_c1_doc_id"
    t.index ["employee_id"], name: "index_verifications_on_employee_id"
    t.index ["revision_id"], name: "index_verifications_on_revision_id"
    t.index ["s3_doc_id"], name: "index_verifications_on_s3_doc_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "audits", "mistakes", on_delete: :cascade
  add_foreign_key "audits", "verifications", on_delete: :cascade
  add_foreign_key "employees", "clients", on_delete: :cascade
  add_foreign_key "ev_cases", "verifications", on_delete: :cascade
  add_foreign_key "verifications", "document_types", column: "a1_doc_id", on_delete: :cascade
  add_foreign_key "verifications", "document_types", column: "a2_doc_id", on_delete: :cascade
  add_foreign_key "verifications", "document_types", column: "a3_doc_id", on_delete: :cascade
  add_foreign_key "verifications", "document_types", column: "b1_doc_id", on_delete: :cascade
  add_foreign_key "verifications", "document_types", column: "c1_doc_id", on_delete: :cascade
  add_foreign_key "verifications", "document_types", column: "s3_doc_id", on_delete: :cascade
  add_foreign_key "verifications", "employees", on_delete: :cascade
  add_foreign_key "verifications", "revisions", on_delete: :cascade
end
