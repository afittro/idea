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

require 'rails_helper'

RSpec.describe Employee, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
