require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
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

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

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
