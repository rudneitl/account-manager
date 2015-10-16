require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  before(:each) do
    assign(:expense, Expense.new(
      description: "MyString",
      status: "active",
      date_expense: DateTime.now,
      currency_value: "9.99"
    ))
  end

  it "renders new expense form" do
    render
    assert_select "form[action=?][method=?]", expenses_path, "post" do
      assert_select "input#expense_description[name=?]", "expense[description]"
      assert_select "input#expense_status[name=?]", "expense[status]"
      assert_select "input#expense_currency_value[name=?]", "expense[currency_value]"
    end
  end
end
