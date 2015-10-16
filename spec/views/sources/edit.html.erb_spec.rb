require 'rails_helper'

RSpec.describe "sources/edit", type: :view do
  before(:each) do
    @source = assign(:source, Source.create!(
      name: "MyString",
      status: "active",
      description: "MyString"
    ))
  end

  it "renders the edit source form" do
    render

    assert_select "form[action=?][method=?]", source_path(@source), "post" do
      assert_select "input#source_name[name=?]", "source[name]"
      assert_select "input#source_status[name=?]", "source[status]"
      assert_select "input#source_description[name=?]", "source[description]"
    end
  end
end
