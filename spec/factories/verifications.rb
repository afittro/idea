# == Schema Information
#
# Table name: verifications
#
#  id                   :bigint(8)        not null, primary key
#  a1_doc_auth          :string(255)
#  a1_doc_expires_on    :date
#  a1_doc_num           :string(255)
#  a1_doc_rcpt          :boolean
#  a1_doc_title         :string(255)
#  a2_doc_auth          :string(255)
#  a2_doc_expires_on    :date
#  a2_doc_num           :string(255)
#  a2_doc_rcpt          :boolean
#  a2_doc_title         :string(255)
#  a3_doc_auth          :string(255)
#  a3_doc_expires_on    :date
#  a3_doc_num           :string(255)
#  a3_doc_rcpt          :boolean
#  a3_doc_title         :string(255)
#  addr                 :string(255)
#  anum_aaw             :string(20)
#  anum_lpr             :string(20)
#  apt                  :string(10)
#  b1_doc_auth          :string(255)
#  b1_doc_expires_on    :date
#  b1_doc_num           :string(255)
#  b1_doc_rcpt          :boolean
#  b1_doc_title         :string(255)
#  barcode              :string(20)
#  batch                :string(40)
#  born_on              :date
#  bus_addr             :string(255)
#  bus_city             :string(50)
#  bus_full_addr        :string(255)
#  bus_name             :string(80)
#  bus_state            :string(40)
#  bus_zip              :string(10)
#  c1_doc_auth          :string(255)
#  c1_doc_expires_on    :date
#  c1_doc_num           :string(255)
#  c1_doc_rcpt          :boolean
#  c1_doc_title         :string(255)
#  cit_status           :integer
#  city                 :string(50)
#  doc_added_info       :text
#  email                :string(255)
#  first_name           :string(80)
#  fpp_auth             :string(40)
#  fpp_num              :string(20)
#  hired_on             :date
#  hr_first_name        :string(80)
#  hr_full_name         :string(255)
#  hr_last_name         :string(80)
#  hr_title             :string(80)
#  i94_num              :string(20)
#  last_name            :string(80)
#  middle_name          :string(25)
#  other_name           :string(80)
#  phone                :string(40)
#  pt                   :boolean
#  pt_addr              :string(255)
#  pt_city              :string(50)
#  pt_first_name        :string(80)
#  pt_full_addr         :string(255)
#  pt_full_name         :string(255)
#  pt_last_name         :string(80)
#  pt_signed            :boolean
#  pt_signed_identifier :string
#  pt_signed_on         :date
#  pt_state             :string(40)
#  pt_zip               :string(10)
#  s1_signed            :boolean
#  s1_signed_identifier :string
#  s1_signed_on         :date
#  s2_hdr_first_name    :string(80)
#  s2_hdr_full_name     :string(255)
#  s2_hdr_last_name     :string(80)
#  s2_hdr_middle_name   :string(25)
#  s2_hdr_testify_num   :integer
#  s2_signed            :boolean
#  s2_signed_identifier :string
#  s2_signed_on         :date
#  s3_doc_auth          :string(255)
#  s3_doc_expires_on    :date
#  s3_doc_num           :string(255)
#  s3_doc_rcpt          :boolean
#  s3_doc_title         :string(255)
#  s3_first_name        :string(80)
#  s3_full_name         :string(255)
#  s3_last_name         :string(80)
#  s3_new_name          :string(255)
#  s3_rehired_on        :date
#  s3_signed            :boolean
#  s3_signed_identifier :string
#  s3_signed_on         :date
#  ssn                  :string(11)
#  state                :string(40)
#  wae_on               :date
#  zip                  :string(10)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  a1_doc_id            :bigint(8)
#  a2_doc_id            :bigint(8)
#  a3_doc_id            :bigint(8)
#  b1_doc_id            :bigint(8)
#  c1_doc_id            :bigint(8)
#  employee_id          :bigint(8)
#  revision_id          :bigint(8)
#  s3_doc_id            :bigint(8)
#
# Indexes
#
#  index_verifications_on_a1_doc_id    (a1_doc_id)
#  index_verifications_on_a2_doc_id    (a2_doc_id)
#  index_verifications_on_a3_doc_id    (a3_doc_id)
#  index_verifications_on_b1_doc_id    (b1_doc_id)
#  index_verifications_on_c1_doc_id    (c1_doc_id)
#  index_verifications_on_employee_id  (employee_id)
#  index_verifications_on_revision_id  (revision_id)
#  index_verifications_on_s3_doc_id    (s3_doc_id)
#
# Foreign Keys
#
#  fk_rails_...  (a1_doc_id => document_types.id) ON DELETE => cascade
#  fk_rails_...  (a2_doc_id => document_types.id) ON DELETE => cascade
#  fk_rails_...  (a3_doc_id => document_types.id) ON DELETE => cascade
#  fk_rails_...  (b1_doc_id => document_types.id) ON DELETE => cascade
#  fk_rails_...  (c1_doc_id => document_types.id) ON DELETE => cascade
#  fk_rails_...  (employee_id => employees.id) ON DELETE => cascade
#  fk_rails_...  (revision_id => revisions.id) ON DELETE => cascade
#  fk_rails_...  (s3_doc_id => document_types.id) ON DELETE => cascade
#

FactoryBot.define do
  factory :verification do
    employee { Employee.offset(rand(Employee.count)).first }
    revision { Revision.offset(rand(Revision.count)).first }
    a1_doc { DocumentType.offset(rand(DocumentType.count)).first }
    a2_doc { DocumentType.offset(rand(DocumentType.count)).first }
    a3_doc { DocumentType.offset(rand(DocumentType.count)).first }
    b1_doc { DocumentType.offset(rand(DocumentType.count)).first }
    c1_doc { DocumentType.offset(rand(DocumentType.count)).first }
    s3_doc { DocumentType.offset(rand(DocumentType.count)).first }
    barcode {Faker::Number.unique.leading_zero_number(8)}
    batch {Faker::Alphanumeric.alpha 10}
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    middle_name {Faker::Name.middle_name}
    other_name {Faker::FunnyName.name}
    s1_signed {true}
    s1_signed_on {Faker::Date.between(5.years.ago, Date.today)}
    pt_signed {false}
    s2_signed {true}
    s2_signed_on {Faker::Date.between(5.years.ago, Date.today)}
    s3_signed {false}
    addr {Faker::Address.street_address}
    apt {Faker::Address.secondary_address}
    city {Faker::Address.city}
    state {Faker::Address.state}
    zip {Faker::Address.postcode}
    born_on {Faker::Date.birthday(18, 65)}
    ssn {Faker::IDNumber.unique.valid}
    email {Faker::Internet.email}
    phone {Faker::PhoneNumber.cell_phone}
    cit_status {Faker::Number.number(1)}
    anum_lpr {Faker::Number.number(9)}
    anum_aaw {Faker::Number.number(9)}
    wae_on {Faker::Date.between(20.years.ago, Date.today)}
    i94_num {Faker::Company.swedish_organisation_number}
    fpp_num {Faker::Number.number}
    fpp_auth {Faker::Address.country.truncate(40)}
    pt {false}
    s2_hdr_full_name {Faker::Name.name}
    s2_hdr_first_name {Faker::Name.first_name}
    s2_hdr_last_name {Faker::Name.last_name}
    s2_hdr_middle_name {Faker::Name.middle_name}
    s2_hdr_testify_num {Faker::Number.within(1..4)}
    hired_on {Faker::Date.between(20.years.ago, Date.today)}
    hr_full_name {Faker::Name.name}
    hr_first_name {Faker::Name.first_name}
    hr_last_name {Faker::Name.last_name}
    hr_title {Faker::Job.title}
    bus_name {Faker::Company.name}
    bus_full_addr {Faker::Address.full_address}
    bus_addr {Faker::Address.street_address}
    bus_city {Faker::Address.city}
    bus_state {Faker::Address.state}
    bus_zip {Faker::Address.zip}
  end
end
