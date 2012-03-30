require 'spec_helper'

describe "user_1s/new.html.erb" do
  before(:each) do
    assign(:user_1, stub_model(User1,
      :name => "MyString",
      :email => "MyString",
      :login => "MyString"
    ).as_new_record)
  end

  it "renders new user_1 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_1s_path, :method => "post" do
      assert_select "input#user_1_name", :name => "user_1[name]"
      assert_select "input#user_1_email", :name => "user_1[email]"
      assert_select "input#user_1_login", :name => "user_1[login]"
    end
  end
end
