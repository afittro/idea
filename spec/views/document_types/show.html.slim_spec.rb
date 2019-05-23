require 'rails_helper'

RSpec.describe "document_types/show", type: :view do
  before(:each) do
    @document_type = assign(:document_type, DocumentType.create!(
      :code => 2,
      :name => "Name",
      :abbr => "Abbr",
      :active => false,
      :ev => false,
      :rcpt => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Abbr/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
