require 'rails_helper'

RSpec.describe "mice/index", type: :view do
  before(:each) do
    assign(:mice, [
      Mouse.create!(
        :name => "Name",
        :price => 1
      ),
      Mouse.create!(
        :name => "Name",
        :price => 1
      )
    ])
  end

  it "renders a list of mice" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
