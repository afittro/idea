require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString",
      :ssn => "MyString",
      :client => nil,
      :co_profile => "MyString",
      :other_name => "MyString",
      :title => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input[name=?]", "employee[first_name]"

      assert_select "input[name=?]", "employee[last_name]"

      assert_select "input[name=?]", "employee[middle_name]"

      assert_select "input[name=?]", "employee[ssn]"

      assert_select "input[name=?]", "employee[client_id]"

      assert_select "input[name=?]", "employee[co_profile]"

      assert_select "input[name=?]", "employee[other_name]"

      assert_select "input[name=?]", "employee[title]"

      assert_select "input[name=?]", "employee[email]"
    end
  end
end
