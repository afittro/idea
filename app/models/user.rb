# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  active     :boolean
#  full_name  :string(255)
#  initials   :string(3)
#  role       :integer
#  user_name  :string(25)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  include RailsAdminCharts
  extend Enumerize
  has_paper_trail

  enumerize :role, in: {admin: 1, lead: 2, user: 3}, predicates: true
end
