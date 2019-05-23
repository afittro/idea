require 'rails_helper'

RSpec.describe "settings/new", type: :view do
  before(:each) do
    assign(:setting, Setting.new(
      :entry => "MyString",
      :setting_type => "MyString",
      :value_boolean => false,
      :value_number => 1,
      :value_text => "MyString"
    ))
  end

  it "renders new setting form" do
    render

    assert_select "form[action=?][method=?]", settings_path, "post" do

      assert_select "input[name=?]", "setting[entry]"

      assert_select "input[name=?]", "setting[setting_type]"

      assert_select "input[name=?]", "setting[value_boolean]"

      assert_select "input[name=?]", "setting[value_number]"

      assert_select "input[name=?]", "setting[value_text]"
    end
  end
end
