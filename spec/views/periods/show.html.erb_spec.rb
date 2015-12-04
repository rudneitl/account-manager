require 'rails_helper'

RSpec.describe 'periods/show', type: :view do
  before(:each) do
    @period = assign(:period, Period.create!(
                                name:         'Name',
                                description:  'Description',
                                status:       'active',
                                initial_date: Date.current,
                                final_date:   Date.current
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/active/)
  end
end
