require 'rails_helper'

RSpec.describe "mistakes/edit", type: :view do
  before(:each) do
    @mistake = assign(:mistake, Mistake.create!(
      :abbr => "MyString",
      :text => "MyString",
      :active => false,
      :correctable => false,
      :area => 1,
      :subarea => 1,
      :sort => 1,
      :responsible => 1,
      :severity => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit mistake form" do
    render

    assert_select "form[action=?][method=?]", mistake_path(@mistake), "post" do

      assert_select "input[name=?]", "mistake[abbr]"

      assert_select "input[name=?]", "mistake[text]"

      assert_select "input[name=?]", "mistake[active]"

      assert_select "input[name=?]", "mistake[correctable]"

      assert_select "input[name=?]", "mistake[area]"

      assert_select "input[name=?]", "mistake[subarea]"

      assert_select "input[name=?]", "mistake[sort]"

      assert_select "input[name=?]", "mistake[responsible]"

      assert_select "input[name=?]", "mistake[severity]"

      assert_select "input[name=?]", "mistake[description]"
    end
  end
end
