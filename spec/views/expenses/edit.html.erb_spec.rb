require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      expense_date:    Date.current,
      establishment:   "MyString",
      description:     "MyString",
      currency_value:  "9.99",
      due_date:        Date.current,
      status:          "active",
      source:          nil,
      category:        nil,
      period:          nil
    ))
  end

  it "renders the edit expense form" do
    render
    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do
      # assert_select "select#expense_expense_date[name=?]", "expense[expense_date]"
      assert_select "input#expense_establishment[name=?]", "expense[establishment]"
      assert_select "input#expense_description[name=?]", "expense[description]"
      assert_select "input#expense_currency_value[name=?]", "expense[currency_value]"
      # assert_select "select#expense_due_date[name=?]", "expense[due_date]"
      assert_select "select#expense_status[name=?]", "expense[status]"
      assert_select "select#expense_source_id[name=?]", "expense[source_id]"
      assert_select "select#expense_category_id[name=?]", "expense[category_id]"
      assert_select "select#expense_period_id[name=?]", "expense[period_id]"
    end
  end
end
