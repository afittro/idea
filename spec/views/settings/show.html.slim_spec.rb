require 'rails_helper'

RSpec.describe "settings/show", type: :view do
  before(:each) do
    @setting = assign(:setting, Setting.create!(
      :entry => "Entry",
      :setting_type => "Setting Type",
      :value_boolean => false,
      :value_number => 2,
      :value_text => "Value Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Entry/)
    expect(rendered).to match(/Setting Type/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Value Text/)
  end
end
