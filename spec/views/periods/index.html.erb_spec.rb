require 'rails_helper'

RSpec.describe "periods/index", type: :view do
  before(:each) do
    assign(:periods, [
      Period.create!(
        :name => "Name",
        :description => "Description",
        :status => "active",
        :initial_date => Date.current,
        :final_date => Date.current
      ),
      Period.create!(
        :name => "Name",
        :description => "Description",
        :status => "inactive",
        :initial_date => Date.current,
        :final_date => Date.current
      )
    ])
  end

  it "renders a list of periods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "active".to_s, :count => 1
    assert_select "tr>td", :text => "inactive".to_s, :count => 1
  end
end
