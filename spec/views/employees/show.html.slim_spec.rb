require 'rails_helper'

RSpec.describe "employees/show", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :middle_name => "Middle Name",
      :ssn => "Ssn",
      :client => nil,
      :co_profile => "Co Profile",
      :other_name => "Other Name",
      :title => "Title",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Ssn/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Co Profile/)
    expect(rendered).to match(/Other Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Email/)
  end
end
