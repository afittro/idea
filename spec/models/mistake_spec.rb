# == Schema Information
#
# Table name: mistakes
#
#  id          :bigint(8)        not null, primary key
#  abbr        :string(20)
#  active      :boolean
#  area        :integer
#  correctable :boolean
#  description :string(255)
#  responsible :integer
#  severity    :integer
#  sort        :integer
#  subarea     :integer
#  text        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Mistake, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
