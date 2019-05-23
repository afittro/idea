require 'rails_helper'

RSpec.describe "audits/new", type: :view do
  before(:each) do
    assign(:audit, Audit.new(
      :verification => nil,
      :mistake => nil,
      :issue => 1,
      :responsible => 1,
      :auditor => "MyString"
    ))
  end

  it "renders new audit form" do
    render

    assert_select "form[action=?][method=?]", audits_path, "post" do

      assert_select "input[name=?]", "audit[verification_id]"

      assert_select "input[name=?]", "audit[mistake_id]"

      assert_select "input[name=?]", "audit[issue]"

      assert_select "input[name=?]", "audit[responsible]"

      assert_select "input[name=?]", "audit[auditor]"
    end
  end
end
