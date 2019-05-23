# == Schema Information
#
# Table name: settings
#
#  id            :bigint(8)        not null, primary key
#  entry         :string(255)
#  setting_type  :string(255)
#  value_boolean :boolean
#  value_date    :date
#  value_number  :integer
#  value_text    :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Setting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
