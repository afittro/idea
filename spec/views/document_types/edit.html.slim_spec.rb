require 'rails_helper'

RSpec.describe "document_types/edit", type: :view do
  before(:each) do
    @document_type = assign(:document_type, DocumentType.create!(
      :code => 1,
      :name => "MyString",
      :abbr => "MyString",
      :active => false,
      :ev => false,
      :rcpt => false
    ))
  end

  it "renders the edit document type form" do
    render

    assert_select "form[action=?][method=?]", document_type_path(@document_type), "post" do

      assert_select "input[name=?]", "document_type[code]"

      assert_select "input[name=?]", "document_type[name]"

      assert_select "input[name=?]", "document_type[abbr]"

      assert_select "input[name=?]", "document_type[active]"

      assert_select "input[name=?]", "document_type[ev]"

      assert_select "input[name=?]", "document_type[rcpt]"
    end
  end
end
