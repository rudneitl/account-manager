require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "MyString",
      :description => "MyString",
      :color => "blue"
    ))
  end

  it "renders the edit category form" do
    render
    assert_select "form[action=?][method=?]", category_path(@category), "post" do
      assert_select "input#category_name[name=?]", "category[name]"
      assert_select "input#category_description[name=?]", "category[description]"
      assert_select "select#category_color[name=?]", "category[color]"
    end
  end
end
