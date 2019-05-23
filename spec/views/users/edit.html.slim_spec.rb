require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :initials => "MyString",
      :full_name => "MyString",
      :user_name => "MyString",
      :role => 1,
      :active => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[initials]"

      assert_select "input[name=?]", "user[full_name]"

      assert_select "input[name=?]", "user[user_name]"

      assert_select "input[name=?]", "user[role]"

      assert_select "input[name=?]", "user[active]"
    end
  end
end
