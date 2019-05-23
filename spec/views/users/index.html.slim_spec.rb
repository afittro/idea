require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :initials => "Initials",
        :full_name => "Full Name",
        :user_name => "Username",
        :role => 2,
        :active => false
      ),
      User.create!(
        :initials => "Initials",
        :full_name => "Full Name",
        :user_name => "Username",
        :role => 2,
        :active => false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Initials".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
