require 'rails_helper'

RSpec.describe 'fiscal_years/new', type: :view do
  before(:each) do
    assign(:fiscal_year, FiscalYear.new(
                           name:   'MyString',
                           year:   1,
                           status: 'MyString'
    ))
  end

  it 'renders new fiscal_year form' do
    render

    assert_select 'form[action=?][method=?]', fiscal_years_path, 'post' do
      assert_select 'input#fiscal_year_name[name=?]', 'fiscal_year[name]'

      assert_select 'input#fiscal_year_year[name=?]', 'fiscal_year[year]'

      assert_select 'input#fiscal_year_status[name=?]', 'fiscal_year[status]'
    end
  end
end
