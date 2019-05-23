require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :ssn => "Ssn",
        :client => nil,
        :co_profile => "Co Profile",
        :other_name => "Other Name",
        :title => "Title",
        :email => "Email"
      ),
      Employee.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :ssn => "Ssn",
        :client => nil,
        :co_profile => "Co Profile",
        :other_name => "Other Name",
        :title => "Title",
        :email => "Email"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ssn".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Co Profile".to_s, :count => 2
    assert_select "tr>td", :text => "Other Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
