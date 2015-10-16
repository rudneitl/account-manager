require 'rails_helper'

RSpec.describe "incomes/show", type: :view do
  before(:each) do
    @income = assign(:income, Income.create!(
      description: "Description",
      status: "active",
      date_income: "2015-10-14 19:48:16",
      currency_value: "9.99",
      source: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/active/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
