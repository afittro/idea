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

class Audit < ApplicationRecord
  include RailsAdminCharts
  extend Enumerize
  has_paper_trail
  
  belongs_to :verification
  belongs_to :mistake

  enumerize :issue, in: {missing: 1, incorrect: 2, exists: 3} # also used in mistakes
  enumerize :responsible, in: {employee: 1, employer: 2, team: 3, nobody: 4} # also used in mistakes
end
