require 'rails_helper'

RSpec.describe 'periods/new', type: :view do
  before(:each) do
    assign(:period, Period.new(
                      name:         'MyString',
                      description:  'MyString',
                      status:       'active',
                      initial_date: Date.current,
                      final_date:   Date.current
    ))
  end

  it 'renders new period form' do
    render
    assert_select 'form[action=?][method=?]', periods_path, 'post' do
      assert_select 'input#period_name[name=?]', 'period[name]'
      assert_select 'input#period_description[name=?]', 'period[description]'
      assert_select 'select#period_status[name=?]', 'period[status]'
    end
  end
end
