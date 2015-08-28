require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :description => "MyString",
      :categorizable_id => 1,
      :categorizable_type => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_description[name=?]", "category[description]"

      assert_select "input#category_categorizable_id[name=?]", "category[categorizable_id]"

      assert_select "input#category_categorizable_type[name=?]", "category[categorizable_type]"

      assert_select "input#category_color[name=?]", "category[color]"
    end
  end
end
