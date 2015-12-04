require 'rails_helper'

RSpec.describe 'fiscal_years/show', type: :view do
  before(:each) do
    @fiscal_year = assign(:fiscal_year, FiscalYear.create!(
                                          name:   'Name',
                                          year:   1,
                                          status: 'Status'
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Status/)
  end
end
