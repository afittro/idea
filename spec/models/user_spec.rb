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

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
