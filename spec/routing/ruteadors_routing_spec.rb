require "spec_helper"

describe RuteadorsController do
  describe "routing" do

    it "routes to #index" do
      get("/ruteadors").should route_to("ruteadors#index")
    end

    it "routes to #new" do
      get("/ruteadors/new").should route_to("ruteadors#new")
    end

    it "routes to #show" do
      get("/ruteadors/1").should route_to("ruteadors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ruteadors/1/edit").should route_to("ruteadors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ruteadors").should route_to("ruteadors#create")
    end

    it "routes to #update" do
      put("/ruteadors/1").should route_to("ruteadors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ruteadors/1").should route_to("ruteadors#destroy", :id => "1")
    end

  end
end
