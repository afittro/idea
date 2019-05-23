require 'rails_helper'

RSpec.describe "mistakes/index", type: :view do
  before(:each) do
    assign(:mistakes, [
      Mistake.create!(
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
      ),
      Mistake.create!(
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
      )
    ])
  end

  it "renders a list of mistakes" do
    render
    assert_select "tr>td", :text => "Abbr".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
