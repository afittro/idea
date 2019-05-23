require 'rails_helper'

RSpec.describe "settings/index", type: :view do
  before(:each) do
    assign(:settings, [
      Setting.create!(
        :entry => "Entry",
        :setting_type => "Setting Type",
        :value_boolean => false,
        :value_number => 2,
        :value_text => "Value Text"
      ),
      Setting.create!(
        :entry => "Entry",
        :setting_type => "Setting Type",
        :value_boolean => false,
        :value_number => 2,
        :value_text => "Value Text"
      )
    ])
  end

  it "renders a list of settings" do
    render
    assert_select "tr>td", :text => "Entry".to_s, :count => 2
    assert_select "tr>td", :text => "Setting Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Value Text".to_s, :count => 2
  end
end
