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

class EvCase < ApplicationRecord
  include RailsAdminCharts
  extend Enumerize
  has_paper_trail
  
  belongs_to :verification
  # has_many :employees, through: :verifications
  # has_many :clients, through: :employees

  enumerize :cit_status, in: {usc: 1, non: 2, lpr: 3, aaw: 4}

  def name
    'EV Case'
  end

end
