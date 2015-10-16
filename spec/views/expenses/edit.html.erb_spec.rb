require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      description: "MyString",
      status: "active",
      date_expense: DateTime.now,
      currency_value: "9.99"
    ))
  end

  it "renders the edit expense form" do
    render
    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do
      assert_select "input#expense_description[name=?]", "expense[description]"
      assert_select "input#expense_status[name=?]", "expense[status]"
      assert_select "input#expense_currency_value[name=?]", "expense[currency_value]"
    end
  end
end
