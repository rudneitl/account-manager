require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  before(:each) do
    assign(:expenses, [
      Expense.create!(
        description: "Description",
        status: "active",
        date_expense: DateTime.now,
        currency_value: "9.99"
      ),
      Expense.create!(
        description: "Description",
        status: "inactive",
        date_expense: DateTime.now,
        currency_value: "9.99"
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "active".to_s, :count => 1
    assert_select "tr>td", :text => "inactive".to_s, :count => 1
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
