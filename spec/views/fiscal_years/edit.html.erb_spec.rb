require 'rails_helper'

RSpec.describe 'fiscal_years/edit', type: :view do
  before(:each) do
    @fiscal_year = assign(:fiscal_year, FiscalYear.create!(
                                          name:   'MyString',
                                          year:   1,
                                          status: 'MyString'
    ))
  end

  it 'renders the edit fiscal_year form' do
    render

    assert_select 'form[action=?][method=?]', fiscal_year_path(@fiscal_year), 'post' do
      assert_select 'input#fiscal_year_name[name=?]', 'fiscal_year[name]'

      assert_select 'input#fiscal_year_year[name=?]', 'fiscal_year[year]'

      assert_select 'input#fiscal_year_status[name=?]', 'fiscal_year[status]'
    end
  end
end
