require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  let(:current_date) { Date.current }

  before(:each) do
    assign(:expenses, [
      Expense.create!(
        expense_date: current_date,
        establishment: "Establishment",
        description: "Description",
        currency_value: "9.99",
        due_date: current_date,
        status: "active"
      ).decorate,
      Expense.create!(
        expense_date: current_date,
        establishment: "Establishment",
        description: "Description",
        currency_value: "9.99",
        due_date: current_date,
        status: "inactive"
      ).decorate
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", :text => "Establishment".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => current_date.to_s, :count => 2
    assert_select "tr>td", :text => "active".to_s, :count => 1
    assert_select "tr>td", :text => "inactive".to_s, :count => 1
  end
end
