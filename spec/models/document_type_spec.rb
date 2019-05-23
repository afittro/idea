# == Schema Information
#
# Table name: document_types
#
#  id         :bigint(8)        not null, primary key
#  abbr       :string(10)
#  active     :boolean
#  code       :integer
#  ev         :boolean
#  name       :string(255)
#  rcpt       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe DocumentType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
