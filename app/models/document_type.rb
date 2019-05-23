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

class DocumentType < ApplicationRecord
  include RailsAdminCharts
  has_paper_trail
  # I won't ever need to see all verifications have a given document type. that would be done via verification.find...

  # has_many :a1_doc, class_name: "Verification", foreign_key: "a1_doc_id"
  # has_many :a2_doc, class_name: "Verification", foreign_key: "a2_doc_id"
  # has_many :a3_doc, class_name: "Verification", foreign_key: "a3_doc_id"
  # has_many :b1_doc, class_name: "Verification", foreign_key: "b1_doc_id"
  # has_many :c1_doc, class_name: "Verification", foreign_key: "c1_doc_id"
  # has_many :s3_doc, class_name: "Verification", foreign_key: "s3_doc_id"

end
