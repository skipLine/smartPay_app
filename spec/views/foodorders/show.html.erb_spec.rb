require 'spec_helper'

describe "foodorders/show.html.erb" do
  before(:each) do
    @foodorder = assign(:foodorder, stub_model(Foodorder,
      :item => "Item",
      :quantity => 1,
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
