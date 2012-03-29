require 'spec_helper'

describe "foodorders/index.html.erb" do
  before(:each) do
    assign(:foodorders, [
      stub_model(Foodorder,
        :item => "Item",
        :quantity => 1,
        :user_id => 1
      ),
      stub_model(Foodorder,
        :item => "Item",
        :quantity => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of foodorders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Item".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
