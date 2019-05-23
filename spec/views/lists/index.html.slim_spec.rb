require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :name => "Name",
        :item => "Item",
        :payload0 => "Payload0",
        :payload1 => "Payload1",
        :payload2 => "Payload2",
        :payload3 => "Payload3",
        :payload4 => "Payload4",
        :payload5 => "Payload5",
        :payload6 => "Payload6",
        :payload7 => "Payload7",
        :payload8 => "Payload8",
        :payload9 => "Payload9"
      ),
      List.create!(
        :name => "Name",
        :item => "Item",
        :payload0 => "Payload0",
        :payload1 => "Payload1",
        :payload2 => "Payload2",
        :payload3 => "Payload3",
        :payload4 => "Payload4",
        :payload5 => "Payload5",
        :payload6 => "Payload6",
        :payload7 => "Payload7",
        :payload8 => "Payload8",
        :payload9 => "Payload9"
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    assert_select "tr>td", :text => "Payload0".to_s, :count => 2
    assert_select "tr>td", :text => "Payload1".to_s, :count => 2
    assert_select "tr>td", :text => "Payload2".to_s, :count => 2
    assert_select "tr>td", :text => "Payload3".to_s, :count => 2
    assert_select "tr>td", :text => "Payload4".to_s, :count => 2
    assert_select "tr>td", :text => "Payload5".to_s, :count => 2
    assert_select "tr>td", :text => "Payload6".to_s, :count => 2
    assert_select "tr>td", :text => "Payload7".to_s, :count => 2
    assert_select "tr>td", :text => "Payload8".to_s, :count => 2
    assert_select "tr>td", :text => "Payload9".to_s, :count => 2
  end
end
