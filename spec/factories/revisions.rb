# == Schema Information
#
# Table name: revisions
#
#  id         :bigint(8)        not null, primary key
#  active     :boolean
#  expires_on :date
#  notes      :string(100)
#  starts_on  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :revision do
    starts_on {Faker::Date.between(20.years.ago, Date.today)}
    expires_on  {|attrs| attrs[:starts_on] + 2.years}
    active {Faker::Boolean.boolean}
    notes { "MyString" }
  end
end
