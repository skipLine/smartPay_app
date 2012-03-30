require 'spec_helper'

describe "user_1s/index.html.erb" do
  before(:each) do
    assign(:user_1s, [
      stub_model(User1,
        :name => "Name",
        :email => "Email",
        :login => "Login"
      ),
      stub_model(User1,
        :name => "Name",
        :email => "Email",
        :login => "Login"
      )
    ])
  end

  it "renders a list of user_1s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login".to_s, :count => 2
  end
end
