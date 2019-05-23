# == Schema Information
#
# Table name: lists
#
#  id         :bigint(8)        not null, primary key
#  item       :string(255)
#  name       :string(255)
#  payload0   :string(255)
#  payload1   :string(255)
#  payload2   :string(255)
#  payload3   :string(255)
#  payload4   :string(255)
#  payload5   :string(255)
#  payload6   :string(255)
#  payload7   :string(255)
#  payload8   :string(255)
#  payload9   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :list do
    name { "MyString" }
    item { "MyString" }
    payload0 { "MyString" }
    payload1 { "MyString" }
    payload2 { "MyString" }
    payload3 { "MyString" }
    payload4 { "MyString" }
    payload5 { "MyString" }
    payload6 { "MyString" }
    payload7 { "MyString" }
    payload8 { "MyString" }
    payload9 { "MyString" }
  end
end
