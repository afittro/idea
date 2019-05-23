# == Schema Information
#
# Table name: employees
#
#  id          :bigint(8)        not null, primary key
#  batch       :string(40)
#  born_on     :date
#  co_profile  :string(30)
#  email       :string(255)
#  first_name  :string(80)
#  hired_on    :date
#  last_name   :string(80)
#  middle_name :string(25)
#  other_name  :string(80)
#  ssn         :string(11)
#  title       :string(80)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  client_id   :bigint(8)
#
# Indexes
#
#  index_employees_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id) ON DELETE => cascade
#

FactoryBot.define do
  factory :employee do
    client { Client.offset(rand(Client.count)).first }
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    middle_name {Faker::Name.middle_name}
    ssn {Faker::IDNumber.unique.valid}
    born_on {Faker::Date.birthday(18, 65)}
    hired_on {Faker::Date.between(20.years.ago, Date.today)}
    co_profile {Faker::IDNumber.spanish_foreign_citizen_number}
    title {Faker::Job.title}
    email {Faker::Internet.email}
    batch {Faker::Alphanumeric.alpha 10}
  end
end
