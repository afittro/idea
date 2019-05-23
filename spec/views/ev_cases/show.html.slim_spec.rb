require 'rails_helper'

RSpec.describe "ev_cases/show", type: :view do
  before(:each) do
    @ev_case = assign(:ev_case, EvCase.create!(
      :verification => nil,
      :first_name => "First Name",
      :last_name => "Last Name",
      :middle_name => "Middle Name",
      :cit_status => 2,
      :ssn => "Ssn",
      :case_num => "Case Num",
      :result => "Result",
      :overdue_reason => "Overdue Reason",
      :overdue_reason_detail => "Overdue Reason Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Ssn/)
    expect(rendered).to match(/Case Num/)
    expect(rendered).to match(/Result/)
    expect(rendered).to match(/Overdue Reason/)
    expect(rendered).to match(/Overdue Reason Detail/)
  end
end
