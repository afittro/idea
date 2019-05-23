# == Schema Information
#
# Table name: audits
#
#  id              :bigint(8)        not null, primary key
#  auditor         :string(3)
#  issue           :integer
#  recorded_on     :datetime
#  responsible     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  mistake_id      :bigint(8)
#  verification_id :bigint(8)
#
# Indexes
#
#  index_audits_on_mistake_id       (mistake_id)
#  index_audits_on_verification_id  (verification_id)
#
# Foreign Keys
#
#  fk_rails_...  (mistake_id => mistakes.id) ON DELETE => cascade
#  fk_rails_...  (verification_id => verifications.id) ON DELETE => cascade
#

FactoryBot.define do
  factory :audit do
    verification { Verification.offset(rand(Verification.count)).first }
    mistake { Mistake.offset(rand(Mistake.count)).first }
    issue { 1 }
    responsible { 1 }
    recorded_on { "2019-04-29 11:31:02" }
    auditor { "ABC" }
  end
end
