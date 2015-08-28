require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :description => "Description",
      :categorizable_id => 1,
      :categorizable_type => "Categorizable Type",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Categorizable Type/)
    expect(rendered).to match(/Color/)
  end
end
