require "spec_helper"

describe DeptsupervisorsController do
  describe "routing" do

    it "routes to #index" do
      get("/deptsupervisors").should route_to("deptsupervisors#index")
    end

    it "routes to #new" do
      get("/deptsupervisors/new").should route_to("deptsupervisors#new")
    end

    it "routes to #show" do
      get("/deptsupervisors/1").should route_to("deptsupervisors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/deptsupervisors/1/edit").should route_to("deptsupervisors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/deptsupervisors").should route_to("deptsupervisors#create")
    end

    it "routes to #update" do
      put("/deptsupervisors/1").should route_to("deptsupervisors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/deptsupervisors/1").should route_to("deptsupervisors#destroy", :id => "1")
    end

  end
end
