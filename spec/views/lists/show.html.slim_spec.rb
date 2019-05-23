require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Item/)
    expect(rendered).to match(/Payload0/)
    expect(rendered).to match(/Payload1/)
    expect(rendered).to match(/Payload2/)
    expect(rendered).to match(/Payload3/)
    expect(rendered).to match(/Payload4/)
    expect(rendered).to match(/Payload5/)
    expect(rendered).to match(/Payload6/)
    expect(rendered).to match(/Payload7/)
    expect(rendered).to match(/Payload8/)
    expect(rendered).to match(/Payload9/)
  end
end
