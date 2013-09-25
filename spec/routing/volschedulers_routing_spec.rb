require "spec_helper"

describe VolschedulersController do
  describe "routing" do

    it "routes to #index" do
      get("/volschedulers").should route_to("volschedulers#index")
    end

    it "routes to #new" do
      get("/volschedulers/new").should route_to("volschedulers#new")
    end

    it "routes to #show" do
      get("/volschedulers/1").should route_to("volschedulers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/volschedulers/1/edit").should route_to("volschedulers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/volschedulers").should route_to("volschedulers#create")
    end

    it "routes to #update" do
      put("/volschedulers/1").should route_to("volschedulers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/volschedulers/1").should route_to("volschedulers#destroy", :id => "1")
    end

  end
end
