require "spec_helper"

describe FoodordersController do
  describe "routing" do

    it "routes to #index" do
      get("/foodorders").should route_to("foodorders#index")
    end

    it "routes to #new" do
      get("/foodorders/new").should route_to("foodorders#new")
    end

    it "routes to #show" do
      get("/foodorders/1").should route_to("foodorders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foodorders/1/edit").should route_to("foodorders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foodorders").should route_to("foodorders#create")
    end

    it "routes to #update" do
      put("/foodorders/1").should route_to("foodorders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foodorders/1").should route_to("foodorders#destroy", :id => "1")
    end

  end
end
