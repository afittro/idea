require 'rails_helper'

RSpec.describe "document_types/index", type: :view do
  before(:each) do
    assign(:document_types, [
      DocumentType.create!(
        :code => 2,
        :name => "Name",
        :abbr => "Abbr",
        :active => false,
        :ev => false,
        :rcpt => false
      ),
      DocumentType.create!(
        :code => 2,
        :name => "Name",
        :abbr => "Abbr",
        :active => false,
        :ev => false,
        :rcpt => false
      )
    ])
  end

  it "renders a list of document types" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Abbr".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
