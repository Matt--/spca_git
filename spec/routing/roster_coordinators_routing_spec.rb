require "spec_helper"

describe RosterCoordinatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/roster_coordinators").should route_to("roster_coordinators#index")
    end

    it "routes to #new" do
      get("/roster_coordinators/new").should route_to("roster_coordinators#new")
    end

    it "routes to #show" do
      get("/roster_coordinators/1").should route_to("roster_coordinators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/roster_coordinators/1/edit").should route_to("roster_coordinators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/roster_coordinators").should route_to("roster_coordinators#create")
    end

    it "routes to #update" do
      put("/roster_coordinators/1").should route_to("roster_coordinators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/roster_coordinators/1").should route_to("roster_coordinators#destroy", :id => "1")
    end

  end
end
