require 'rails_helper'

RSpec.describe 'incomes/show', type: :view do
  let(:current_date) { Date.current }

  before(:each) do
    @income = assign(:income, Income.create!(
      income_date:    current_date,
      description:    'Description',
      currency_value: '9.99',
      status:         'active',
      likely_date:    current_date,
      source:         nil,
      category:       nil,
      period:         nil
    ).decorate)
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(Regexp.new(current_date.to_s))
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/active/)
    expect(rendered).to match(/9.99/)
  end
end
