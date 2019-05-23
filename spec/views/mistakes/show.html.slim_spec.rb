require 'rails_helper'

RSpec.describe "mistakes/show", type: :view do
  before(:each) do
    @mistake = assign(:mistake, Mistake.create!(
      :abbr => "Abbr",
      :text => "Text",
      :active => false,
      :correctable => false,
      :area => 2,
      :subarea => 3,
      :sort => 4,
      :responsible => 5,
      :severity => 6,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Abbr/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Description/)
  end
end
