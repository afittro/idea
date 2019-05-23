# == Schema Information
#
# Table name: employees
#
#  id          :bigint(8)        not null, primary key
#  batch       :string(40)
#  born_on     :date
#  co_profile  :string(30)
#  email       :string(255)
#  first_name  :string(80)
#  hired_on    :date
#  last_name   :string(80)
#  middle_name :string(25)
#  other_name  :string(80)
#  ssn         :string(11)
#  title       :string(80)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  client_id   :bigint(8)
#
# Indexes
#
#  index_employees_on_client_id  (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id) ON DELETE => cascade
#

class Employee < ApplicationRecord
  include RailsAdminCharts
  has_paper_trail
  
  belongs_to :client
  has_many :verifications
  # has_many :revisions, through: :verifications
  # has_many :ev_cases, through: :verifications

  def str
    "#{self.last_name}, #{self.first_name} #{self.middle_name}".strip
  end

  def full_name
    str = ''
    str += self.last_name
    str += (', ' + self.first_name) if self.first_name
    str += (' ' + self.middle_name ) if self.middle_name
  end
end
