# == Schema Information
#
# Table name: ev_cases
#
#  id                    :bigint(8)        not null, primary key
#  born_on               :date
#  case_num              :string(80)
#  cit_status            :integer
#  closed_on             :datetime
#  first_name            :string(80)
#  hired_on              :date
#  last_name             :string(80)
#  middle_name           :string(25)
#  opened_on             :datetime
#  overdue_reason        :string(255)
#  overdue_reason_detail :string(255)
#  result                :string(255)
#  ssn                   :string(11)
#  wae_on                :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  verification_id       :bigint(8)
#
# Indexes
#
#  index_ev_cases_on_verification_id  (verification_id)
#
# Foreign Keys
#
#  fk_rails_...  (verification_id => verifications.id) ON DELETE => cascade
#

FactoryBot.define do
  factory :ev_case do
    verification { Verification.offset(rand(Verification.count)).first }
    cit_status {Faker::Number.number(1)}
    born_on {Faker::Date.birthday(18, 65)}
    case_num {Faker::Number.unique.leading_zero_number(8)}
    closed_on {Faker::Date.between(20.years.ago, Date.today)}
    first_name {Faker::Name.first_name}
    hired_on {Faker::Date.between(20.years.ago, Date.today)}
    last_name {Faker::Name.last_name}
    middle_name {Faker::Name.middle_name}
    opened_on {Faker::Date.between(20.years.ago, Date.today)}
    overdue_reason {Faker::Lorem.sentences(1, true)}
    overdue_reason_detail {Faker::Lorem.sentences(1, true)}
    result  {%w(EmpAuth MIR TNC FNC CiC CI).sample}
    ssn {Faker::IDNumber.unique.valid}
    wae_on {Faker::Date.between(20.years.ago, Date.today)}
  end
end
