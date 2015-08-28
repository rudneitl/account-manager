require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :description => "Description",
        :categorizable_id => 1,
        :categorizable_type => "Categorizable Type",
        :color => "Color"
      ),
      Category.create!(
        :description => "Description",
        :categorizable_id => 1,
        :categorizable_type => "Categorizable Type",
        :color => "Color"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Categorizable Type".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
