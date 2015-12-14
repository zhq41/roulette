require 'rails_helper'

RSpec.describe "mice/show", type: :view do
  before(:each) do
    @mouse = assign(:mouse, Mouse.create!(
      :name => "Name",
      :price => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
