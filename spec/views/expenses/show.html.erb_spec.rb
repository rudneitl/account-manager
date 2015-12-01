require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  let(:current_date) { Date.current }

  before(:each) do
    @expense = assign(:expense, Expense.create!(
      expense_date:    current_date,
      establishment:   "Establishment",
      description:     "Description",
      currency_value:  "9.99",
      due_date:        current_date,
      status:          'active'
    ).decorate)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(Regexp.new(current_date.to_s))
    expect(rendered).to match(/Establishment/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/active/)
  end
end
