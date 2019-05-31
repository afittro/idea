class EvCasesController < ApplicationController
  before_action :set_ev_case, only: [:show, :edit, :update, :destroy]
  semantic_breadcrumb :index, :ev_cases_path

  # GET /ev_cases
  # GET /ev_cases.json
  def index
    @ev_cases = EvCase.order(:last_name, :first_name, :middle_name, :opened_on)
  end

  # GET /ev_cases/1
  # GET /ev_cases/1.json
  def show
  end

  # GET /ev_cases/new
  def new
    @ev_case = EvCase.new
  end

  # GET /ev_cases/1/edit
  def edit
  end

  # POST /ev_cases
  # POST /ev_cases.json
  def create
    @ev_case = EvCase.new(ev_case_params)

    respond_to do |format|
      if @ev_case.save
        format.html { redirect_to @ev_case, notice: 'Ev case was successfully created.' }
        format.json { render :show, status: :created, location: @ev_case }
      else
        format.html { render :new }
        format.json { render json: @ev_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ev_cases/1
  # PATCH/PUT /ev_cases/1.json
  def update
    respond_to do |format|
      if @ev_case.update(ev_case_params)
        format.html { redirect_to @ev_case, notice: 'Ev case was successfully updated.' }
        format.json { render :show, status: :ok, location: @ev_case }
      else
        format.html { render :edit }
        format.json { render json: @ev_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ev_cases/1
  # DELETE /ev_cases/1.json
  def destroy
    @ev_case.destroy
    respond_to do |format|
      format.html { redirect_to ev_cases_url, notice: 'Ev case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ev_case
      @ev_case = EvCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ev_case_params
      params.require(:ev_case).permit(:verification_id, :first_name, :last_name, :middle_name, :cit_status, :born_on, :ssn, :hired_on, :wae_on, :opened_on, :closed_on, :case_num, :result, :overdue_reason, :overdue_reason_detail)
    end
end
