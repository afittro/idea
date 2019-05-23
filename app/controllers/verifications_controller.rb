class VerificationsController < ApplicationController
  before_action :set_verification, only: [:show, :edit, :update, :destroy]

  # GET /verifications
  # GET /verifications.json
  def index
    @verifications = Verification.joins(:employee).order('employees.last_name')
  end

  # GET /verifications/1
  # GET /verifications/1.json
  def show
    @audits = Audit.where(verification_id: params[:id]).order(:mistake_id)
  end

  # GET /verifications/new
  def new
    @verification = Verification.new
  end

  # GET /verifications/1/edit
  def edit
    @audits = Audit.where(verification_id: params[:id]).order(:mistake_id)
  end

  # POST /verifications
  # POST /verifications.json
  def create
    @verification = Verification.new(verification_params)

    respond_to do |format|
      if @verification.save
        format.html { redirect_to @verification, notice: 'Verification was successfully created.' }
        format.json { render :show, status: :created, location: @verification }
      else
        format.html { render :new }
        format.json { render json: @verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /verifications/1
  # PATCH/PUT /verifications/1.json
  def update
    respond_to do |format|
      if @verification.update(verification_params)
        format.html { redirect_to @verification, notice: 'Verification was successfully updated.' }
        format.json { render :show, status: :ok, location: @verification }
      else
        format.html { render :edit }
        format.json { render json: @verification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /verifications/1
  # DELETE /verifications/1.json
  def destroy
    @verification.destroy
    respond_to do |format|
      format.html { redirect_to verifications_url, notice: 'Verification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verification
      @verification = Verification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def verification_params
      params.require(:verification).permit(:employee_id, :revision_id, :barcode, :batch, :first_name, :last_name, :middle_name, :other_name, :s1_signed, :s1_signed_on, :s1_signed_identifier, :pt_signed, :pt_signed_on, :pt_signed_identifier, :s2_signed, :s2_signed_on, :s2_signed_identifier, :s3_signed, :s3_signed_on, :s3_signed_identifier, :addr, :apt, :city, :state, :zip, :born_on, :ssn, :email, :phone, :cit_status, :anum_lpr, :anum_aaw, :wae_on, :i94_num, :fpp_num, :fpp_auth, :pt, :pt_full_name, :pt_first_name, :pt_last_name, :pt_full_addr, :pt_addr, :pt_city, :pt_state, :pt_zip, :s2_hdr_full_name, :s2_hdr_first_name, :s2_hdr_last_name, :s2_hdr_middle_name, :s2_hdr_testify_num, :a1_doc_id, :a2_doc_id, :a3_doc_id, :b1_doc_id, :c1_doc_id, :s3_doc_id, :a1_doc_title, :a2_doc_title, :a3_doc_title, :b1_doc_title, :c1_doc_title, :s3_doc_title, :a1_doc_auth, :a2_doc_auth, :a3_doc_auth, :b1_doc_auth, :c1_doc_auth, :s3_doc_auth, :a1_doc_num, :a2_doc_num, :a3_doc_num, :b1_doc_num, :c1_doc_num, :s3_doc_num, :a1_doc_expires_on, :a2_doc_expires_on, :a3_doc_expires_on, :b1_doc_expires_on, :c1_doc_expires_on, :s3_doc_expires_on, :a1_doc_rcpt, :a2_doc_rcpt, :a3_doc_rcpt, :b1_doc_rcpt, :c1_doc_rcpt, :s3_doc_rcpt, :doc_added_info, :hired_on, :hr_full_name, :hr_first_name, :hr_last_name, :hr_title, :bus_name, :bus_full_addr, :bus_addr, :bus_city, :bus_state, :bus_zip, :s3_new_name, :s3_rehired_on, :s3_full_name, :s3_first_name, :s3_last_name, audits_attributes: [:id, :mistake_id, :issue, :responsible, :recorded_on, :auditor])
    end
end
