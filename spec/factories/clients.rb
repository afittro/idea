# == Schema Information
#
# Table name: clients
#
#  id              :bigint(8)        not null, primary key
#  active          :boolean
#  alternate_names :string
#  full_name       :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :client do
    sequence(:name) { |n| "Client#{n}" }
    full_name {Faker::Company.unique.name}
    alternate_names {Faker::Company.buzzword}
    active {Faker::Boolean.boolean}
  end
end
