require 'rails_helper'

RSpec.describe "revisions/new", type: :view do
  before(:each) do
    assign(:revision, Revision.new(
      :active => false,
      :notes => "MyString"
    ))
  end

  it "renders new revision form" do
    render

    assert_select "form[action=?][method=?]", revisions_path, "post" do

      assert_select "input[name=?]", "revision[active]"

      assert_select "input[name=?]", "revision[notes]"
    end
  end
end
