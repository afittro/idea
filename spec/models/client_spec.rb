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

require 'rails_helper'

RSpec.describe Client, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
