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

class Mistake < ApplicationRecord
  include RailsAdminCharts
  extend Enumerize
  has_paper_trail

  has_many :audits

  enumerize :responsible, in: {employee: 1, employer: 2, team: 3, nobody: 4} # also used in audits
  enumerize :area, in: {i9: 0, s1: 1, s2: 2, s3: 3}
  enumerize :subarea, in: {overall: 0, employee_info: 1, employee_cert: 2, pt_cert: 3, header: 4, documents: 5, employer_cert: 6, section3: 7}
  enumerize :severity, in: {technical: 1, substantive: 2}

  def str
    "#{self.abbr}, #{self.text}".strip
  end

end
