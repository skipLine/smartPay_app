require 'spec_helper'

describe PageshomeController do

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

end
