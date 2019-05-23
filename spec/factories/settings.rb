# == Schema Information
#
# Table name: settings
#
#  id            :bigint(8)        not null, primary key
#  entry         :string(255)
#  setting_type  :string(255)
#  value_boolean :boolean
#  value_date    :date
#  value_number  :integer
#  value_text    :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :setting do
    entry { "MyString" }
    setting_type { "MyString" }
    value_boolean { false }
    value_date { "2019-04-29" }
    value_number { 1 }
    value_text { "MyString" }
  end
end
