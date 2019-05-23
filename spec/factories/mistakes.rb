# == Schema Information
#
# Table name: mistakes
#
#  id          :bigint(8)        not null, primary key
#  abbr        :string(20)
#  active      :boolean
#  area        :integer
#  correctable :boolean
#  description :string(255)
#  responsible :integer
#  severity    :integer
#  sort        :integer
#  subarea     :integer
#  text        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :mistake do
    abbr { "MyString" }
    text { "MyString" }
    active { false }
    correctable { false }
    area { 1 }
    subarea { 1 }
    sort { 1 }
    responsible { 1 }
    severity { 1 }
    description { "MyString" }
  end
end
