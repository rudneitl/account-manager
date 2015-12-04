require 'rails_helper'

RSpec.describe 'periods/edit', type: :view do
  before(:each) do
    @period = assign(:period, Period.create!(
                                name:         'MyString',
                                description:  'MyString',
                                status:       'active',
                                initial_date: Date.current,
                                final_date:   Date.current
    ))
  end

  it 'renders the edit period form' do
    render
    assert_select 'form[action=?][method=?]', period_path(@period), 'post' do
      assert_select 'input#period_name[name=?]', 'period[name]'
      assert_select 'input#period_description[name=?]', 'period[description]'
      assert_select 'select#period_status[name=?]', 'period[status]'
    end
  end
end
