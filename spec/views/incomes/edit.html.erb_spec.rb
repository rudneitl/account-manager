require 'rails_helper'

RSpec.describe "incomes/edit", type: :view do
  before(:each) do
    @income = assign(:income, Income.create!(
      description: "MyString",
      status: "active",
      date_income: "2015-10-14 19:48:16",
      currency_value: "9.99",
      source: nil
    ))
  end

  it "renders the edit income form" do
    render
    assert_select "form[action=?][method=?]", income_path(@income), "post" do
      assert_select "input#income_description[name=?]", "income[description]"
      assert_select "input#income_status[name=?]", "income[status]"
      assert_select "input#income_currency_value[name=?]", "income[currency_value]"
      assert_select "input#income_source_id[name=?]", "income[source_id]"
    end
  end
end
