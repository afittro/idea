require "rails_helper"

RSpec.describe EvCasesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/ev_cases").to route_to("ev_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/ev_cases/new").to route_to("ev_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/ev_cases/1").to route_to("ev_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ev_cases/1/edit").to route_to("ev_cases#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/ev_cases").to route_to("ev_cases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ev_cases/1").to route_to("ev_cases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ev_cases/1").to route_to("ev_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ev_cases/1").to route_to("ev_cases#destroy", :id => "1")
    end
  end
end
