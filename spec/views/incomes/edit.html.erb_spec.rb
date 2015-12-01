require 'rails_helper'

RSpec.describe "incomes/edit", type: :view do
  before(:each) do
    @income = assign(:income, Income.create!(
      income_date:     Date.current,
      description:     "MyString",
      currency_value:  "9.99",
      status:          "active",
      likely_date:     Date.current,
      source:          nil,
      category:        nil,
      period:          nil
    ))
  end

  it "renders the edit income form" do
    render
    assert_select "form[action=?][method=?]", income_path(@income), "post" do
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
