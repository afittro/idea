require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :initials => "Initials",
      :full_name => "Full Name",
      :user_name => "Username",
      :role => 2,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Initials/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
