require 'rails_helper'

RSpec.describe "sources/index", type: :view do
  before(:each) do
    assign(:sources, [
      Source.create!(
        name: "Name",
        status: "active",
        color: "blue"
      ),
      Source.create!(
        name: "Name",
        status: "inactive",
        color: "red"
      )
    ])
  end

  it "renders a list of sources" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "blue".to_s, :count => 1
    assert_select "tr>td", :text => "red".to_s, :count => 1
    assert_select "tr>td", :text => "active".to_s, :count => 1
    assert_select "tr>td", :text => "inactive".to_s, :count => 1
  end
end
