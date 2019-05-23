require 'rails_helper'

RSpec.describe "verifications/show", type: :view do
  before(:each) do
    @verification = assign(:verification, Verification.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Barcode/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Middle Name/)
    expect(rendered).to match(/Other Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/S1 Signed Identifier/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Pt Signed Identifier/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/S2 Signed Identifier/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/S3 Signed Identifier/)
    expect(rendered).to match(/Addr/)
    expect(rendered).to match(/Apt/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Ssn/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Anum Lpr/)
    expect(rendered).to match(/Anum Aaw/)
    expect(rendered).to match(/I94 Num/)
    expect(rendered).to match(/Fpp Num/)
    expect(rendered).to match(/Fpp Auth/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Pt Full Name/)
    expect(rendered).to match(/Pt First Name/)
    expect(rendered).to match(/Pt Last Name/)
    expect(rendered).to match(/Pt Full Addr/)
    expect(rendered).to match(/Pt Addr/)
    expect(rendered).to match(/Pt City/)
    expect(rendered).to match(/Pt State/)
    expect(rendered).to match(/Pt Zip/)
    expect(rendered).to match(/S2 Hdr Full Name/)
    expect(rendered).to match(/S2 Hdr First Name/)
    expect(rendered).to match(/S2 Hdr Last Name/)
    expect(rendered).to match(/S2 Hdr Middle Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/A1 Doc Title/)
    expect(rendered).to match(/A2 Doc Title/)
    expect(rendered).to match(/A3 Doc Title/)
    expect(rendered).to match(/B1 Doc Title/)
    expect(rendered).to match(/C1 Doc Title/)
    expect(rendered).to match(/S3 Doc Title/)
    expect(rendered).to match(/A1 Doc Auth/)
    expect(rendered).to match(/A2 Doc Auth/)
    expect(rendered).to match(/A3 Doc Auth/)
    expect(rendered).to match(/B1 Doc Auth/)
    expect(rendered).to match(/C1 Doc Auth/)
    expect(rendered).to match(/S3 Doc Auth/)
    expect(rendered).to match(/A1 Doc Num/)
    expect(rendered).to match(/A2 Doc Num/)
    expect(rendered).to match(/A3 Doc Num/)
    expect(rendered).to match(/B1 Doc Num/)
    expect(rendered).to match(/C1 Doc Num/)
    expect(rendered).to match(/S3 Doc Num/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Hr Full Name/)
    expect(rendered).to match(/Hr First Name/)
    expect(rendered).to match(/Hr Last Name/)
    expect(rendered).to match(/Hr Title/)
    expect(rendered).to match(/Bus Name/)
    expect(rendered).to match(/Bus Full Addr/)
    expect(rendered).to match(/Bus Addr/)
    expect(rendered).to match(/Bus City/)
    expect(rendered).to match(/Bus State/)
    expect(rendered).to match(/Bus Zip/)
    expect(rendered).to match(/S3 New Name/)
    expect(rendered).to match(/S3 Full Name/)
    expect(rendered).to match(/S3 First Name/)
    expect(rendered).to match(/S3 Last Name/)
  end
end
