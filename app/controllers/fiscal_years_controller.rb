class FiscalYearsController < ApplicationController
  before_action :set_fiscal_year, only: [:show, :edit, :update, :destroy]

  # GET /fiscal_years
  # GET /fiscal_years.json
  def index
    @fiscal_years = FiscalYear.all
  end

  # GET /fiscal_years/1
  # GET /fiscal_years/1.json
  def show
  end

  # GET /fiscal_years/new
  def new
    @fiscal_year = FiscalYear.new
  end

  # GET /fiscal_years/1/edit
  def edit
  end

  # POST /fiscal_years
  # POST /fiscal_years.json
  def create
    @fiscal_year = FiscalYear.new(fiscal_year_params)

    respond_to do |format|
      if @fiscal_year.save
        format.html { redirect_to @fiscal_year, notice: 'Fiscal year was successfully created.' }
        format.json { render :show, status: :created, location: @fiscal_year }
      else
        format.html { render :new }
        format.json { render json: @fiscal_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiscal_years/1
  # PATCH/PUT /fiscal_years/1.json
  def update
    respond_to do |format|
      if @fiscal_year.update(fiscal_year_params)
        format.html { redirect_to @fiscal_year, notice: 'Fiscal year was successfully updated.' }
        format.json { render :show, status: :ok, location: @fiscal_year }
      else
        format.html { render :edit }
        format.json { render json: @fiscal_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiscal_years/1
  # DELETE /fiscal_years/1.json
  def destroy
    @fiscal_year.destroy
    respond_to do |format|
      format.html { redirect_to fiscal_years_url, notice: 'Fiscal year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_fiscal_year
    @fiscal_year = FiscalYear.find(params[:id])
  end

  def fiscal_year_params
    params.require(:fiscal_year).permit(:name, :year, :status)
  end
end
