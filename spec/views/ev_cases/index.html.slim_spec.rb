require 'rails_helper'

RSpec.describe "ev_cases/index", type: :view do
  before(:each) do
    assign(:ev_cases, [
      EvCase.create!(
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
      ),
      EvCase.create!(
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
      )
    ])
  end

  it "renders a list of ev_cases" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Ssn".to_s, :count => 2
    assert_select "tr>td", :text => "Case Num".to_s, :count => 2
    assert_select "tr>td", :text => "Result".to_s, :count => 2
    assert_select "tr>td", :text => "Overdue Reason".to_s, :count => 2
    assert_select "tr>td", :text => "Overdue Reason Detail".to_s, :count => 2
  end
end
