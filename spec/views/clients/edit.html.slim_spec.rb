require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "MyString",
      :full_name => "MyString",
      :alternate_names => "MyString",
      :active => false
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[full_name]"

      assert_select "input[name=?]", "client[alternate_names]"

      assert_select "input[name=?]", "client[active]"
    end
  end
end
