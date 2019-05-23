# == Schema Information
#
# Table name: document_types
#
#  id         :bigint(8)        not null, primary key
#  abbr       :string(10)
#  active     :boolean
#  code       :integer
#  ev         :boolean
#  name       :string(255)
#  rcpt       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :document_type do
    code {Random.rand(3)} # {Faker::Number.unique.leading_zero_number(3)}
    sequence(:name) { |n| "Document Type#{n}" }
    abbr {Faker::Alphanumeric.alpha 10}
    active {Faker::Boolean.boolean}
    ev {Faker::Boolean.boolean}
    rcpt {Faker::Boolean.boolean}
  end
end
