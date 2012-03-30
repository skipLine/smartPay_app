require "spec_helper"

describe User1sController do
  describe "routing" do

    it "routes to #index" do
      get("/user_1s").should route_to("user_1s#index")
    end

    it "routes to #new" do
      get("/user_1s/new").should route_to("user_1s#new")
    end

    it "routes to #show" do
      get("/user_1s/1").should route_to("user_1s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_1s/1/edit").should route_to("user_1s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_1s").should route_to("user_1s#create")
    end

    it "routes to #update" do
      put("/user_1s/1").should route_to("user_1s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_1s/1").should route_to("user_1s#destroy", :id => "1")
    end

  end
end
