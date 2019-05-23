require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyString",
      :item => "MyString",
      :payload0 => "MyString",
      :payload1 => "MyString",
      :payload2 => "MyString",
      :payload3 => "MyString",
      :payload4 => "MyString",
      :payload5 => "MyString",
      :payload6 => "MyString",
      :payload7 => "MyString",
      :payload8 => "MyString",
      :payload9 => "MyString"
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input[name=?]", "list[name]"

      assert_select "input[name=?]", "list[item]"

      assert_select "input[name=?]", "list[payload0]"

      assert_select "input[name=?]", "list[payload1]"

      assert_select "input[name=?]", "list[payload2]"

      assert_select "input[name=?]", "list[payload3]"

      assert_select "input[name=?]", "list[payload4]"

      assert_select "input[name=?]", "list[payload5]"

      assert_select "input[name=?]", "list[payload6]"

      assert_select "input[name=?]", "list[payload7]"

      assert_select "input[name=?]", "list[payload8]"

      assert_select "input[name=?]", "list[payload9]"
    end
  end
end
