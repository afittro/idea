require 'rails_helper'

RSpec.describe "verifications/index", type: :view do
  before(:each) do
    assign(:verifications, [
      Verification.create!(
        :employee => nil,
        :revision => nil,
        :barcode => "Barcode",
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :other_name => "Other Name",
        :s1_signed => false,
        :s1_signed_identifier => "S1 Signed Identifier",
        :pt_signed => false,
        :pt_signed_identifier => "Pt Signed Identifier",
        :s2_signed => false,
        :s2_signed_identifier => "S2 Signed Identifier",
        :s3_signed => false,
        :s3_signed_identifier => "S3 Signed Identifier",
        :addr => "Addr",
        :apt => "Apt",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :ssn => "Ssn",
        :email => "Email",
        :phone => "Phone",
        :cit_status => 2,
        :anum_lpr => "Anum Lpr",
        :anum_aaw => "Anum Aaw",
        :i94_num => "I94 Num",
        :fpp_num => "Fpp Num",
        :fpp_auth => "Fpp Auth",
        :pt => false,
        :pt_full_name => "Pt Full Name",
        :pt_first_name => "Pt First Name",
        :pt_last_name => "Pt Last Name",
        :pt_full_addr => "Pt Full Addr",
        :pt_addr => "Pt Addr",
        :pt_city => "Pt City",
        :pt_state => "Pt State",
        :pt_zip => "Pt Zip",
        :s2_hdr_full_name => "S2 Hdr Full Name",
        :s2_hdr_first_name => "S2 Hdr First Name",
        :s2_hdr_last_name => "S2 Hdr Last Name",
        :s2_hdr_middle_name => "S2 Hdr Middle Name",
        :s2_hdr_testify_num => 3,
        :a1_doc => nil,
        :a2_doc => nil,
        :a3_doc => nil,
        :b1_doc => nil,
        :c1_doc => nil,
        :s3_doc => nil,
        :a1_doc_title => "A1 Doc Title",
        :a2_doc_title => "A2 Doc Title",
        :a3_doc_title => "A3 Doc Title",
        :b1_doc_title => "B1 Doc Title",
        :c1_doc_title => "C1 Doc Title",
        :s3_doc_title => "S3 Doc Title",
        :a1_doc_auth => "A1 Doc Auth",
        :a2_doc_auth => "A2 Doc Auth",
        :a3_doc_auth => "A3 Doc Auth",
        :b1_doc_auth => "B1 Doc Auth",
        :c1_doc_auth => "C1 Doc Auth",
        :s3_doc_auth => "S3 Doc Auth",
        :a1_doc_num => "A1 Doc Num",
        :a2_doc_num => "A2 Doc Num",
        :a3_doc_num => "A3 Doc Num",
        :b1_doc_num => "B1 Doc Num",
        :c1_doc_num => "C1 Doc Num",
        :s3_doc_num => "S3 Doc Num",
        :a1_doc_rcpt => false,
        :a2_doc_rcpt => false,
        :a3_doc_rcpt => false,
        :b1_doc_rcpt => false,
        :c1_doc_rcpt => false,
        :s3_doc_rcpt => false,
        :doc_added_info => "MyText",
        :hr_full_name => "Hr Full Name",
        :hr_first_name => "Hr First Name",
        :hr_last_name => "Hr Last Name",
        :hr_title => "Hr Title",
        :bus_name => "Bus Name",
        :bus_full_addr => "Bus Full Addr",
        :bus_addr => "Bus Addr",
        :bus_city => "Bus City",
        :bus_state => "Bus State",
        :bus_zip => "Bus Zip",
        :s3_new_name => "S3 New Name",
        :s3_full_name => "S3 Full Name",
        :s3_first_name => "S3 First Name",
        :s3_last_name => "S3 Last Name"
      ),
      Verification.create!(
        :employee => nil,
        :revision => nil,
        :barcode => "Barcode",
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :other_name => "Other Name",
        :s1_signed => false,
        :s1_signed_identifier => "S1 Signed Identifier",
        :pt_signed => false,
        :pt_signed_identifier => "Pt Signed Identifier",
        :s2_signed => false,
        :s2_signed_identifier => "S2 Signed Identifier",
        :s3_signed => false,
        :s3_signed_identifier => "S3 Signed Identifier",
        :addr => "Addr",
        :apt => "Apt",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :ssn => "Ssn",
        :email => "Email",
        :phone => "Phone",
        :cit_status => 2,
        :anum_lpr => "Anum Lpr",
        :anum_aaw => "Anum Aaw",
        :i94_num => "I94 Num",
        :fpp_num => "Fpp Num",
        :fpp_auth => "Fpp Auth",
        :pt => false,
        :pt_full_name => "Pt Full Name",
        :pt_first_name => "Pt First Name",
        :pt_last_name => "Pt Last Name",
        :pt_full_addr => "Pt Full Addr",
        :pt_addr => "Pt Addr",
        :pt_city => "Pt City",
        :pt_state => "Pt State",
        :pt_zip => "Pt Zip",
        :s2_hdr_full_name => "S2 Hdr Full Name",
        :s2_hdr_first_name => "S2 Hdr First Name",
        :s2_hdr_last_name => "S2 Hdr Last Name",
        :s2_hdr_middle_name => "S2 Hdr Middle Name",
        :s2_hdr_testify_num => 3,
        :a1_doc => nil,
        :a2_doc => nil,
        :a3_doc => nil,
        :b1_doc => nil,
        :c1_doc => nil,
        :s3_doc => nil,
        :a1_doc_title => "A1 Doc Title",
        :a2_doc_title => "A2 Doc Title",
        :a3_doc_title => "A3 Doc Title",
        :b1_doc_title => "B1 Doc Title",
        :c1_doc_title => "C1 Doc Title",
        :s3_doc_title => "S3 Doc Title",
        :a1_doc_auth => "A1 Doc Auth",
        :a2_doc_auth => "A2 Doc Auth",
        :a3_doc_auth => "A3 Doc Auth",
        :b1_doc_auth => "B1 Doc Auth",
        :c1_doc_auth => "C1 Doc Auth",
        :s3_doc_auth => "S3 Doc Auth",
        :a1_doc_num => "A1 Doc Num",
        :a2_doc_num => "A2 Doc Num",
        :a3_doc_num => "A3 Doc Num",
        :b1_doc_num => "B1 Doc Num",
        :c1_doc_num => "C1 Doc Num",
        :s3_doc_num => "S3 Doc Num",
        :a1_doc_rcpt => false,
        :a2_doc_rcpt => false,
        :a3_doc_rcpt => false,
        :b1_doc_rcpt => false,
        :c1_doc_rcpt => false,
        :s3_doc_rcpt => false,
        :doc_added_info => "MyText",
        :hr_full_name => "Hr Full Name",
        :hr_first_name => "Hr First Name",
        :hr_last_name => "Hr Last Name",
        :hr_title => "Hr Title",
        :bus_name => "Bus Name",
        :bus_full_addr => "Bus Full Addr",
        :bus_addr => "Bus Addr",
        :bus_city => "Bus City",
        :bus_state => "Bus State",
        :bus_zip => "Bus Zip",
        :s3_new_name => "S3 New Name",
        :s3_full_name => "S3 Full Name",
        :s3_first_name => "S3 First Name",
        :s3_last_name => "S3 Last Name"
      )
    ])
  end

  it "renders a list of verifications" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Barcode".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Other Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "S1 Signed Identifier".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Pt Signed Identifier".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "S2 Signed Identifier".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "S3 Signed Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "Addr".to_s, :count => 2
    assert_select "tr>td", :text => "Apt".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Ssn".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Anum Lpr".to_s, :count => 2
    assert_select "tr>td", :text => "Anum Aaw".to_s, :count => 2
    assert_select "tr>td", :text => "I94 Num".to_s, :count => 2
    assert_select "tr>td", :text => "Fpp Num".to_s, :count => 2
    assert_select "tr>td", :text => "Fpp Auth".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Pt Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pt First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Full Addr".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Addr".to_s, :count => 2
    assert_select "tr>td", :text => "Pt City".to_s, :count => 2
    assert_select "tr>td", :text => "Pt State".to_s, :count => 2
    assert_select "tr>td", :text => "Pt Zip".to_s, :count => 2
    assert_select "tr>td", :text => "S2 Hdr Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "S2 Hdr First Name".to_s, :count => 2
    assert_select "tr>td", :text => "S2 Hdr Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "S2 Hdr Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "A1 Doc Title".to_s, :count => 2
    assert_select "tr>td", :text => "A2 Doc Title".to_s, :count => 2
    assert_select "tr>td", :text => "A3 Doc Title".to_s, :count => 2
    assert_select "tr>td", :text => "B1 Doc Title".to_s, :count => 2
    assert_select "tr>td", :text => "C1 Doc Title".to_s, :count => 2
    assert_select "tr>td", :text => "S3 Doc Title".to_s, :count => 2
    assert_select "tr>td", :text => "A1 Doc Auth".to_s, :count => 2
    assert_select "tr>td", :text => "A2 Doc Auth".to_s, :count => 2
    assert_select "tr>td", :text => "A3 Doc Auth".to_s, :count => 2
    assert_select "tr>td", :text => "B1 Doc Auth".to_s, :count => 2
    assert_select "tr>td", :text => "C1 Doc Auth".to_s, :count => 2
    assert_select "tr>td", :text => "S3 Doc Auth".to_s, :count => 2
    assert_select "tr>td", :text => "A1 Doc Num".to_s, :count => 2
    assert_select "tr>td", :text => "A2 Doc Num".to_s, :count => 2
    assert_select "tr>td", :text => "A3 Doc Num".to_s, :count => 2
    assert_select "tr>td", :text => "B1 Doc Num".to_s, :count => 2
    assert_select "tr>td", :text => "C1 Doc Num".to_s, :count => 2
    assert_select "tr>td", :text => "S3 Doc Num".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Hr Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Hr First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Hr Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Hr Title".to_s, :count => 2
    assert_select "tr>td", :text => "Bus Name".to_s, :count => 2
    assert_select "tr>td", :text => "Bus Full Addr".to_s, :count => 2
    assert_select "tr>td", :text => "Bus Addr".to_s, :count => 2
    assert_select "tr>td", :text => "Bus City".to_s, :count => 2
    assert_select "tr>td", :text => "Bus State".to_s, :count => 2
    assert_select "tr>td", :text => "Bus Zip".to_s, :count => 2
    assert_select "tr>td", :text => "S3 New Name".to_s, :count => 2
    assert_select "tr>td", :text => "S3 Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "S3 First Name".to_s, :count => 2
    assert_select "tr>td", :text => "S3 Last Name".to_s, :count => 2
  end
end
