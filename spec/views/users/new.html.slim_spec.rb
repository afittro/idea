require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :initials => "MyString",
      :full_name => "MyString",
      :user_name => "MyString",
      :role => 1,
      :active => false
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[initials]"

      assert_select "input[name=?]", "user[full_name]"

      assert_select "input[name=?]", "user[user_name]"

      assert_select "input[name=?]", "user[role]"

      assert_select "input[name=?]", "user[active]"
    end
  end
end
