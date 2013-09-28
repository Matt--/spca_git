require "spec_helper"

describe OrientationsController do
  describe "routing" do

    it "routes to #index" do
      get("/orientations").should route_to("orientations#index")
    end

    it "routes to #new" do
      get("/orientations/new").should route_to("orientations#new")
    end

    it "routes to #show" do
      get("/orientations/1").should route_to("orientations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orientations/1/edit").should route_to("orientations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orientations").should route_to("orientations#create")
    end

    it "routes to #update" do
      put("/orientations/1").should route_to("orientations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orientations/1").should route_to("orientations#destroy", :id => "1")
    end

  end
end
