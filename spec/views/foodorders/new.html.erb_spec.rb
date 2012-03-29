require 'spec_helper'

describe "foodorders/new.html.erb" do
  before(:each) do
    assign(:foodorder, stub_model(Foodorder,
      :item => "MyString",
      :quantity => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new foodorder form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foodorders_path, :method => "post" do
      assert_select "input#foodorder_item", :name => "foodorder[item]"
      assert_select "input#foodorder_quantity", :name => "foodorder[quantity]"
      assert_select "input#foodorder_user_id", :name => "foodorder[user_id]"
    end
  end
end
