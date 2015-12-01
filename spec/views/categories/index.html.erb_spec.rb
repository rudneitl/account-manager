require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :name => "Name",
        :color => "blue"
      ),
      Category.create!(
        :name => "Name",
        :color => "red"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "blue".to_s, :count => 1
    assert_select "tr>td", :text => "red".to_s, :count => 1
  end
end
