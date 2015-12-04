require 'rails_helper'

RSpec.describe "fiscal_years/index", type: :view do
  before(:each) do
    assign(:fiscal_years, [
      FiscalYear.create!(
        :name => "Name",
        :year => 1,
        :status => "Status"
      ),
      FiscalYear.create!(
        :name => "Name",
        :year => 1,
        :status => "Status"
      )
    ])
  end

  it "renders a list of fiscal_years" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
