require "spec_helper"

describe Fosterer2sController do
  describe "routing" do

    it "routes to #index" do
      get("/fosterer2s").should route_to("fosterer2s#index")
    end

    it "routes to #new" do
      get("/fosterer2s/new").should route_to("fosterer2s#new")
    end

    it "routes to #show" do
      get("/fosterer2s/1").should route_to("fosterer2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fosterer2s/1/edit").should route_to("fosterer2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fosterer2s").should route_to("fosterer2s#create")
    end

    it "routes to #update" do
      put("/fosterer2s/1").should route_to("fosterer2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fosterer2s/1").should route_to("fosterer2s#destroy", :id => "1")
    end

  end
end
