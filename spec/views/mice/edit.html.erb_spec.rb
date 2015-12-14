require 'rails_helper'

RSpec.describe "mice/edit", type: :view do
  before(:each) do
    @mouse = assign(:mouse, Mouse.create!(
      :name => "MyString",
      :price => 1
    ))
  end

  it "renders the edit mouse form" do
    render

    assert_select "form[action=?][method=?]", mouse_path(@mouse), "post" do

      assert_select "input#mouse_name[name=?]", "mouse[name]"

      assert_select "input#mouse_price[name=?]", "mouse[price]"
    end
  end
end
