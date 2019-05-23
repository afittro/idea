require 'rails_helper'

RSpec.describe "audits/edit", type: :view do
  before(:each) do
    @audit = assign(:audit, Audit.create!(
      :verification => nil,
      :mistake => nil,
      :issue => 1,
      :responsible => 1,
      :auditor => "MyString"
    ))
  end

  it "renders the edit audit form" do
    render

    assert_select "form[action=?][method=?]", audit_path(@audit), "post" do

      assert_select "input[name=?]", "audit[verification_id]"

      assert_select "input[name=?]", "audit[mistake_id]"

      assert_select "input[name=?]", "audit[issue]"

      assert_select "input[name=?]", "audit[responsible]"

      assert_select "input[name=?]", "audit[auditor]"
    end
  end
end
