require 'rails_helper'

RSpec.describe 'sources/new', type: :view do
  before(:each) do
    assign(:source, Source.new(
                      name:        'MyString',
                      status:      'active',
                      color:       'blue',
                      description: 'MyString'
    ))
  end

  it 'renders new source form' do
    render
    assert_select 'form[action=?][method=?]', sources_path, 'post' do
      assert_select 'input#source_name[name=?]', 'source[name]'
      assert_select 'input#source_description[name=?]', 'source[description]'
      assert_select 'select#source_color[name=?]', 'source[color]'
      assert_select 'select#source_status[name=?]', 'source[status]'
    end
  end
end
