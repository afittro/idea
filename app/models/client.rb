# == Schema Information
#
# Table name: clients
#
#  id              :bigint(8)        not null, primary key
#  active          :boolean
#  alternate_names :string
#  full_name       :string
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Client < ApplicationRecord
  include RailsAdminCharts
  has_paper_trail
  
  has_many :employees
  has_many :verifications, through: :employees
  # has_many :revisions, through: :verifications  ## I won't ever need to see all the revisions a client has
  # has_many :ev_cases, through: :verifications  ## I won't ever need to see all the cases a client has

  def str
    self.name
  end

end
