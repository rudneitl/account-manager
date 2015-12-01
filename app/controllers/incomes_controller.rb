class IncomesController < ApplicationController
  before_action :set_period
  before_action :set_income, only: [:show, :edit, :update, :destroy]

  # GET /incomes
  # GET /incomes.json
  def index
    @incomes = IncomeDecorator.decorate_collection Income.where(period: @period).all
  end

  # GET /incomes/1
  # GET /incomes/1.json
  def show
  end

  # GET /incomes/new
  def new
    @income = IncomeDecorator.decorate Income.new
  end

  # GET /incomes/1/edit
  def edit
  end

  # POST /incomes
  # POST /incomes.json
  def create
    @income = Income.new(income_params)
    @income.period = @period

    respond_to do |format|
      if @income.save
        format.html { redirect_to [@period, @income], notice: 'Income was successfully created.' }
        format.json { render :show, status: :created, location: @income }
      else
        format.html { render :new }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomes/1
  # PATCH/PUT /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to @income, notice: 'Income was successfully updated.' }
        format.json { render :show, status: :ok, location: @income }
      else
        format.html { render :edit }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.json
  def destroy
    @income.destroy
    respond_to do |format|
      format.html { redirect_to incomes_url, notice: 'Income was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_income
    @income = IncomeDecorator.decorate Income.find(params[:id])
  end

  def set_period
    @period = Period.find(params[:period_id])
  rescue
    not_found('Tournament not found')
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def income_params
    params.require(:income).permit(:income_date, :description, :currency_value, :likely_date, :status, :source_id, :category_id)
  end
end
