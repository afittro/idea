require 'rails_helper'

RSpec.describe "verifications/edit", type: :view do
  before(:each) do
    @verification = assign(:verification, Verification.create!(
      :employee => nil,
      :revision => nil,
      :barcode => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString",
      :other_name => "MyString",
      :s1_signed => false,
      :s1_signed_identifier => "MyString",
      :pt_signed => false,
      :pt_signed_identifier => "MyString",
      :s2_signed => false,
      :s2_signed_identifier => "MyString",
      :s3_signed => false,
      :s3_signed_identifier => "MyString",
      :addr => "MyString",
      :apt => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :ssn => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :cit_status => 1,
      :anum_lpr => "MyString",
      :anum_aaw => "MyString",
      :i94_num => "MyString",
      :fpp_num => "MyString",
      :fpp_auth => "MyString",
      :pt => false,
      :pt_full_name => "MyString",
      :pt_first_name => "MyString",
      :pt_last_name => "MyString",
      :pt_full_addr => "MyString",
      :pt_addr => "MyString",
      :pt_city => "MyString",
      :pt_state => "MyString",
      :pt_zip => "MyString",
      :s2_hdr_full_name => "MyString",
      :s2_hdr_first_name => "MyString",
      :s2_hdr_last_name => "MyString",
      :s2_hdr_middle_name => "MyString",
      :s2_hdr_testify_num => 1,
      :a1_doc => nil,
      :a2_doc => nil,
      :a3_doc => nil,
      :b1_doc => nil,
      :c1_doc => nil,
      :s3_doc => nil,
      :a1_doc_title => "MyString",
      :a2_doc_title => "MyString",
      :a3_doc_title => "MyString",
      :b1_doc_title => "MyString",
      :c1_doc_title => "MyString",
      :s3_doc_title => "MyString",
      :a1_doc_auth => "MyString",
      :a2_doc_auth => "MyString",
      :a3_doc_auth => "MyString",
      :b1_doc_auth => "MyString",
      :c1_doc_auth => "MyString",
      :s3_doc_auth => "MyString",
      :a1_doc_num => "MyString",
      :a2_doc_num => "MyString",
      :a3_doc_num => "MyString",
      :b1_doc_num => "MyString",
      :c1_doc_num => "MyString",
      :s3_doc_num => "MyString",
      :a1_doc_rcpt => false,
      :a2_doc_rcpt => false,
      :a3_doc_rcpt => false,
      :b1_doc_rcpt => false,
      :c1_doc_rcpt => false,
      :s3_doc_rcpt => false,
      :doc_added_info => "MyText",
      :hr_full_name => "MyString",
      :hr_first_name => "MyString",
      :hr_last_name => "MyString",
      :hr_title => "MyString",
      :bus_name => "MyString",
      :bus_full_addr => "MyString",
      :bus_addr => "MyString",
      :bus_city => "MyString",
      :bus_state => "MyString",
      :bus_zip => "MyString",
      :s3_new_name => "MyString",
      :s3_full_name => "MyString",
      :s3_first_name => "MyString",
      :s3_last_name => "MyString"
    ))
  end

  it "renders the edit verification form" do
    render

    assert_select "form[action=?][method=?]", verification_path(@verification), "post" do

      assert_select "input[name=?]", "verification[employee_id]"

      assert_select "input[name=?]", "verification[revision_id]"

      assert_select "input[name=?]", "verification[barcode]"

      assert_select "input[name=?]", "verification[first_name]"

      assert_select "input[name=?]", "verification[last_name]"

      assert_select "input[name=?]", "verification[middle_name]"

      assert_select "input[name=?]", "verification[other_name]"

      assert_select "input[name=?]", "verification[s1_signed]"

      assert_select "input[name=?]", "verification[s1_signed_identifier]"

      assert_select "input[name=?]", "verification[pt_signed]"

      assert_select "input[name=?]", "verification[pt_signed_identifier]"

      assert_select "input[name=?]", "verification[s2_signed]"

      assert_select "input[name=?]", "verification[s2_signed_identifier]"

      assert_select "input[name=?]", "verification[s3_signed]"

      assert_select "input[name=?]", "verification[s3_signed_identifier]"

      assert_select "input[name=?]", "verification[addr]"

      assert_select "input[name=?]", "verification[apt]"

      assert_select "input[name=?]", "verification[city]"

      assert_select "input[name=?]", "verification[state]"

      assert_select "input[name=?]", "verification[zip]"

      assert_select "input[name=?]", "verification[ssn]"

      assert_select "input[name=?]", "verification[email]"

      assert_select "input[name=?]", "verification[phone]"

      assert_select "input[name=?]", "verification[cit_status]"

      assert_select "input[name=?]", "verification[anum_lpr]"

      assert_select "input[name=?]", "verification[anum_aaw]"

      assert_select "input[name=?]", "verification[i94_num]"

      assert_select "input[name=?]", "verification[fpp_num]"

      assert_select "input[name=?]", "verification[fpp_auth]"

      assert_select "input[name=?]", "verification[pt]"

      assert_select "input[name=?]", "verification[pt_full_name]"

      assert_select "input[name=?]", "verification[pt_first_name]"

      assert_select "input[name=?]", "verification[pt_last_name]"

      assert_select "input[name=?]", "verification[pt_full_addr]"

      assert_select "input[name=?]", "verification[pt_addr]"

      assert_select "input[name=?]", "verification[pt_city]"

      assert_select "input[name=?]", "verification[pt_state]"

      assert_select "input[name=?]", "verification[pt_zip]"

      assert_select "input[name=?]", "verification[s2_hdr_full_name]"

      assert_select "input[name=?]", "verification[s2_hdr_first_name]"

      assert_select "input[name=?]", "verification[s2_hdr_last_name]"

      assert_select "input[name=?]", "verification[s2_hdr_middle_name]"

      assert_select "input[name=?]", "verification[s2_hdr_testify_num]"

      assert_select "input[name=?]", "verification[a1_doc_id]"

      assert_select "input[name=?]", "verification[a2_doc_id]"

      assert_select "input[name=?]", "verification[a3_doc_id]"

      assert_select "input[name=?]", "verification[b1_doc_id]"

      assert_select "input[name=?]", "verification[c1_doc_id]"

      assert_select "input[name=?]", "verification[s3_doc_id]"

      assert_select "input[name=?]", "verification[a1_doc_title]"

      assert_select "input[name=?]", "verification[a2_doc_title]"

      assert_select "input[name=?]", "verification[a3_doc_title]"

      assert_select "input[name=?]", "verification[b1_doc_title]"

      assert_select "input[name=?]", "verification[c1_doc_title]"

      assert_select "input[name=?]", "verification[s3_doc_title]"

      assert_select "input[name=?]", "verification[a1_doc_auth]"

      assert_select "input[name=?]", "verification[a2_doc_auth]"

      assert_select "input[name=?]", "verification[a3_doc_auth]"

      assert_select "input[name=?]", "verification[b1_doc_auth]"

      assert_select "input[name=?]", "verification[c1_doc_auth]"

      assert_select "input[name=?]", "verification[s3_doc_auth]"

      assert_select "input[name=?]", "verification[a1_doc_num]"

      assert_select "input[name=?]", "verification[a2_doc_num]"

      assert_select "input[name=?]", "verification[a3_doc_num]"

      assert_select "input[name=?]", "verification[b1_doc_num]"

      assert_select "input[name=?]", "verification[c1_doc_num]"

      assert_select "input[name=?]", "verification[s3_doc_num]"

      assert_select "input[name=?]", "verification[a1_doc_rcpt]"

      assert_select "input[name=?]", "verification[a2_doc_rcpt]"

      assert_select "input[name=?]", "verification[a3_doc_rcpt]"

      assert_select "input[name=?]", "verification[b1_doc_rcpt]"

      assert_select "input[name=?]", "verification[c1_doc_rcpt]"

      assert_select "input[name=?]", "verification[s3_doc_rcpt]"

      assert_select "textarea[name=?]", "verification[doc_added_info]"

      assert_select "input[name=?]", "verification[hr_full_name]"

      assert_select "input[name=?]", "verification[hr_first_name]"

      assert_select "input[name=?]", "verification[hr_last_name]"

      assert_select "input[name=?]", "verification[hr_title]"

      assert_select "input[name=?]", "verification[bus_name]"

      assert_select "input[name=?]", "verification[bus_full_addr]"

      assert_select "input[name=?]", "verification[bus_addr]"

      assert_select "input[name=?]", "verification[bus_city]"

      assert_select "input[name=?]", "verification[bus_state]"

      assert_select "input[name=?]", "verification[bus_zip]"

      assert_select "input[name=?]", "verification[s3_new_name]"

      assert_select "input[name=?]", "verification[s3_full_name]"

      assert_select "input[name=?]", "verification[s3_first_name]"

      assert_select "input[name=?]", "verification[s3_last_name]"
    end
  end
end
