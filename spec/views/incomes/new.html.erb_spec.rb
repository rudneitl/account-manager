require 'rails_helper'

RSpec.describe "incomes/new", type: :view do
  let(:current_date) { Date.current }
  before(:each) do
    assign(:income, Income.new(
      income_date:     current_date,
      description:     "Description",
      currency_value:  "9.99",
      status:          "active",
      likely_date:     current_date,
      source:          nil,
      category:        nil,
      period:          nil
    ))
  end

  it "renders new income form" do
    render
    assert_select "form[action=?][method=?]", incomes_path, "post" do
      # assert_select "select#income_income_date[name=?]", "income[income_date]"
      assert_select "input#income_description[name=?]", "income[description]"
      assert_select "input#income_currency_value[name=?]", "income[currency_value]"
      assert_select "select#income_status[name=?]", "income[status]"
      # assert_select "select#income_likely_date[name=?]", "income[likely_date]"
      assert_select "select#income_source_id[name=?]", "income[source_id]"
      assert_select "select#income_category_id[name=?]", "income[category_id]"
      assert_select "select#income_period_id[name=?]", "income[period_id]"
    end
  end
end
