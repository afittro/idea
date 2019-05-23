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

require 'rails_helper'

RSpec.describe Revision, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
