require 'rails_helper'

RSpec.describe "audits/index", type: :view do
  before(:each) do
    assign(:audits, [
      Audit.create!(
        :verification => nil,
        :mistake => nil,
        :issue => 2,
        :responsible => 3,
        :auditor => "Auditor"
      ),
      Audit.create!(
        :verification => nil,
        :mistake => nil,
        :issue => 2,
        :responsible => 3,
        :auditor => "Auditor"
      )
    ])
  end

  it "renders a list of audits" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Auditor".to_s, :count => 2
  end
end
