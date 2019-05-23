require 'rails_helper'

RSpec.describe "audits/show", type: :view do
  before(:each) do
    @audit = assign(:audit, Audit.create!(
      :verification => nil,
      :mistake => nil,
      :issue => 2,
      :responsible => 3,
      :auditor => "Auditor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Auditor/)
  end
end
