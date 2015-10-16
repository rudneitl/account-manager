require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      description: "Description",
      status: "active",
      date_expense: DateTime.now,
      currency_value: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/active/)
    expect(rendered).to match(/9.99/)
  end
end
