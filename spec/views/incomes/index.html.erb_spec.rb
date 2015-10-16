require 'rails_helper'

RSpec.describe "incomes/index", type: :view do
  before(:each) do
    assign(:incomes, [
      Income.create!(
        description: "Description",
        status: "active",
        date_income: "2015-10-14 19:48:16",
        currency_value: "9.99",
        source: nil
      ),
      Income.create!(
        description: "Description",
        status: "active",
        date_income: "2015-10-14 19:48:16",
        currency_value: "9.99",
        source: nil
      )
    ])
  end

  it "renders a list of incomes" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "active".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
