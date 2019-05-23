require "rails_helper"

RSpec.describe MistakesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/mistakes").to route_to("mistakes#index")
    end

    it "routes to #new" do
      expect(:get => "/mistakes/new").to route_to("mistakes#new")
    end

    it "routes to #show" do
      expect(:get => "/mistakes/1").to route_to("mistakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mistakes/1/edit").to route_to("mistakes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/mistakes").to route_to("mistakes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/mistakes/1").to route_to("mistakes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/mistakes/1").to route_to("mistakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mistakes/1").to route_to("mistakes#destroy", :id => "1")
    end
  end
end
