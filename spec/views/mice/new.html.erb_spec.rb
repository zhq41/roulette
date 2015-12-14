require 'rails_helper'

RSpec.describe "mice/new", type: :view do
  before(:each) do
    assign(:mouse, Mouse.new(
      :name => "MyString",
      :price => 1
    ))
  end

  it "renders new mouse form" do
    render

    assert_select "form[action=?][method=?]", mice_path, "post" do

      assert_select "input#mouse_name[name=?]", "mouse[name]"

      assert_select "input#mouse_price[name=?]", "mouse[price]"
    end
  end
end
