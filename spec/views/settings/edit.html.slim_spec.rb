require 'rails_helper'

RSpec.describe "settings/edit", type: :view do
  before(:each) do
    @setting = assign(:setting, Setting.create!(
      :entry => "MyString",
      :setting_type => "MyString",
      :value_boolean => false,
      :value_number => 1,
      :value_text => "MyString"
    ))
  end

  it "renders the edit setting form" do
    render

    assert_select "form[action=?][method=?]", setting_path(@setting), "post" do

      assert_select "input[name=?]", "setting[entry]"

      assert_select "input[name=?]", "setting[setting_type]"

      assert_select "input[name=?]", "setting[value_boolean]"

      assert_select "input[name=?]", "setting[value_number]"

      assert_select "input[name=?]", "setting[value_text]"
    end
  end
end
