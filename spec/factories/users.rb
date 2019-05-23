# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  active     :boolean
#  full_name  :string(255)
#  initials   :string(3)
#  role       :integer
#  user_name  :string(25)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :user do
    initials {Faker::Name.unique.initials(3)}
    full_name {Faker::FunnyName.name_with_initial}
    user_name {Faker::Internet.unique.user_name(8)}
    role {Faker::Number.number(1)}
    active {Faker::Boolean.boolean}
  end
end
