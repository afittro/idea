require 'rails_helper'

RSpec.describe "revisions/show", type: :view do
  before(:each) do
    @revision = assign(:revision, Revision.create!(
      :active => false,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Notes/)
  end
end
