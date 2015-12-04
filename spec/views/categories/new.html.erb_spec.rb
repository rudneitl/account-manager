require 'rails_helper'

RSpec.describe 'categories/new', type: :view do
  before(:each) do
    assign(:category, Category.new(
                        name:        'MyString',
                        description: 'MyString',
                        color:       'blue'
    ))
  end

  it 'renders new category form' do
    render
    assert_select 'form[action=?][method=?]', categories_path, 'post' do
      assert_select 'input#category_name[name=?]', 'category[name]'
      assert_select 'input#category_description[name=?]', 'category[description]'
      assert_select 'select#category_color[name=?]', 'category[color]'
    end
  end
end
