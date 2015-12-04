class PeriodsController < ApplicationController
  before_action :set_fiscal_year, only: [:index, :create]
  before_action :set_period, only: [:show, :edit, :update, :destroy]

  # GET /periods
  # GET /periods.json
  def index
    @periods = PeriodDecorator.decorate_collection Period.where(fiscal_year: @fiscal_year).all
  end

  # GET /periods/1
  # GET /periods/1.json
  def show
  end

  # GET /periods/new
  def new
    @period = PeriodDecorator.decorate Period.new
  end

  # GET /periods/1/edit
  def edit
  end

  # POST /periods
  # POST /periods.json
  def create
    @period = Period.new(period_params)

    respond_to do |format|
      if @period.save
        format.html { redirect_to @period, notice: 'Period was successfully created.' }
        format.json { render :show, status: :created, location: @period }
      else
        format.html { render :new }
        format.json { render json: @period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periods/1
  # PATCH/PUT /periods/1.json
  def update
    respond_to do |format|
      if @period.update(period_params)
        format.html { redirect_to @period, notice: 'Period was successfully updated.' }
        format.json { render :show, status: :ok, location: @period }
      else
        format.html { render :edit }
        format.json { render json: @period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periods/1
  # DELETE /periods/1.json
  def destroy
    @period.destroy
    respond_to do |format|
      format.html { redirect_to periods_url, notice: 'Period was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_period
    @period = Period.find(params[:id])
  end

  def set_fiscal_year
    @fiscal_year = FiscalYear.find(params[:fiscal_year_id])
  end

  def period_params
    params.require(:period).permit(:name, :description, :status, :initial_date, :final_date, :fiscal_year_id)
  end
end
