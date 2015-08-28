require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :description => "MyString",
      :categorizable_id => 1,
      :categorizable_type => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_description[name=?]", "category[description]"

      assert_select "input#category_categorizable_id[name=?]", "category[categorizable_id]"

      assert_select "input#category_categorizable_type[name=?]", "category[categorizable_type]"

      assert_select "input#category_color[name=?]", "category[color]"
    end
  end
end
