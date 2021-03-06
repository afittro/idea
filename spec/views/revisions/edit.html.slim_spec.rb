require 'rails_helper'

RSpec.describe "revisions/edit", type: :view do
  before(:each) do
    @revision = assign(:revision, Revision.create!(
      :active => false,
      :notes => "MyString"
    ))
  end

  it "renders the edit revision form" do
    render

    assert_select "form[action=?][method=?]", revision_path(@revision), "post" do

      assert_select "input[name=?]", "revision[active]"

      assert_select "input[name=?]", "revision[notes]"
    end
  end
end
