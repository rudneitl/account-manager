require 'rails_helper'

RSpec.describe "sources/edit", type: :view do
  before(:each) do
    @source = assign(:source, Source.create!(
      name: "MyString",
      status: "active",
      description: "MyString",
      color: "blue"
    ))
  end

  it "renders the edit source form" do
    render
    assert_select "form[action=?][method=?]", source_path(@source), "post" do
      assert_select "input#source_name[name=?]", "source[name]"
      assert_select "input#source_description[name=?]", "source[description]"
      assert_select "select#source_color[name=?]", "source[color]"
      assert_select "select#source_status[name=?]", "source[status]"
    end
  end
end
