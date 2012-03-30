require 'spec_helper'

describe "user_1s/show.html.erb" do
  before(:each) do
    @user_1 = assign(:user_1, stub_model(User1,
      :name => "Name",
      :email => "Email",
      :login => "Login"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login/)
  end
end
