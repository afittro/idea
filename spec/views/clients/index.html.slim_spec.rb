require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :name => "Name",
        :full_name => "Full Name",
        :alternate_names => "Alternate Names",
        :active => false
      ),
      Client.create!(
        :name => "Name",
        :full_name => "Full Name",
        :alternate_names => "Alternate Names",
        :active => false
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Alternate Names".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
