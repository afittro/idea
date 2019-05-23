require 'rails_helper'

RSpec.describe "revisions/index", type: :view do
  before(:each) do
    assign(:revisions, [
      Revision.create!(
        :active => false,
        :notes => "Notes"
      ),
      Revision.create!(
        :active => false,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of revisions" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
