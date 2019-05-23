require 'rails_helper'

RSpec.describe "ev_cases/new", type: :view do
  before(:each) do
    assign(:ev_case, EvCase.new(
      :verification => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString",
      :cit_status => 1,
      :ssn => "MyString",
      :case_num => "MyString",
      :result => "MyString",
      :overdue_reason => "MyString",
      :overdue_reason_detail => "MyString"
    ))
  end

  it "renders new ev_case form" do
    render

    assert_select "form[action=?][method=?]", ev_cases_path, "post" do

      assert_select "input[name=?]", "ev_case[verification_id]"

      assert_select "input[name=?]", "ev_case[first_name]"

      assert_select "input[name=?]", "ev_case[last_name]"

      assert_select "input[name=?]", "ev_case[middle_name]"

      assert_select "input[name=?]", "ev_case[cit_status]"

      assert_select "input[name=?]", "ev_case[ssn]"

      assert_select "input[name=?]", "ev_case[case_num]"

      assert_select "input[name=?]", "ev_case[result]"

      assert_select "input[name=?]", "ev_case[overdue_reason]"

      assert_select "input[name=?]", "ev_case[overdue_reason_detail]"
    end
  end
end
