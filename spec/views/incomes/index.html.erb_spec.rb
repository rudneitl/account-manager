require 'rails_helper'

RSpec.describe 'incomes/index', type: :view do
  let(:current_date) { Date.current }

  before(:each) do
    assign(:incomes, [
      Income.create!(
        income_date:    current_date,
        description:    'Description',
        currency_value: '9.99',
        status:         'active',
        likely_date:    current_date,
        source:         nil,
        category:       nil,
        period:         nil
      ).decorate,
      Income.create!(
        income_date:    current_date,
        description:    'Description',
        currency_value: '9.99',
        status:         'inactive',
        likely_date:    current_date,
        source:         nil,
        category:       nil,
        period:         nil
      ).decorate
    ])
  end

  it 'renders a list of incomes' do
    render
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
    assert_select 'tr>td', text: '9.99'.to_s, count: 2
    assert_select 'tr>td', text: current_date.to_s, count: 2
    assert_select 'tr>td', text: 'active'.to_s, count: 1
    assert_select 'tr>td', text: 'inactive'.to_s, count: 1
  end
end
