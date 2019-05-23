# == Schema Information
#
# Table name: revisions
#
#  id         :bigint(8)        not null, primary key
#  active     :boolean
#  expires_on :date
#  notes      :string(100)
#  starts_on  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Revision < ApplicationRecord
  include RailsAdminCharts
  has_paper_trail

  # has_many :verifications
  # has_many :employees, through: :verifications
  # has_many :clients, through: :employees

end
